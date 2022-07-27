--
-- PostgreSQL database dump
--

-- Dumped from database version 10.20 (Debian 10.20-1.pgdg90+1)
-- Dumped by pg_dump version 10.20 (Debian 10.20-1.pgdg90+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;
SET search_path TO public;

DROP EXTENSION IF EXISTS postgis CASCADE;
CREATE EXTENSION postgis;

--
-- Name: _cdb_first(anyelement); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public._cdb_first(_col anyelement);

CREATE FUNCTION public._cdb_first(_col anyelement) RETURNS anyelement
    LANGUAGE plpgsql
    AS $$
        BEGIN
          RETURN (array_agg(_col))[1];
        END;
        $$;

ALTER FUNCTION public._cdb_first(_col anyelement) OWNER TO gozdovi;

--
-- Name: _gcell(public.geometry, integer); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public._gcell(_geom public.geometry, _res integer);

CREATE FUNCTION public._gcell(_geom public.geometry, _res integer) RETURNS public.geometry
    LANGUAGE plpgsql
    AS $_$
        DECLARE
        srid CONSTANT integer:=3035;
        x integer;
        y integer;
        _geom CONSTANT geometry:=$1;
        _res CONSTANT integer:=$2;
        geom geometry;
        BEGIN
          geom:=ST_Centroid(ST_Transform(_geom,srid));
          x:=floor(ST_X(geom)/_res)*_res;
          y:=floor(ST_Y(geom)/_res)*_res;
          RETURN ST_Transform(
            ST_SetSRID(
              ST_Envelope(
                ST_MakeLine(ST_MakePoint(x,y),ST_MakePoint(x+_res,y+_res))
              ), srid),4326);
        END;
        $_$;


ALTER FUNCTION public._gcell(_geom public.geometry, _res integer) OWNER TO gozdovi;

--
-- Name: _get_species_clid(bigint); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public._get_species_clid(_culprit_id bigint);

CREATE FUNCTION public._get_species_clid(_culprit_id bigint) RETURNS integer
    LANGUAGE plpgsql
    AS $_$
        DECLARE
        species_value varchar;
        lookup_table CONSTANT json:='{"rjavi medved":"Brown bear","volk":"Wolf","ris":"Eurasian lynx"}';
        blclids CONSTANT json:='{"Brown bear":13,"Wolf":12,"Eurasian lynx":14,"Golden jackal":2134}';
        BEGIN
		SELECT name into species_value from bears_damage_c_povzrocitelji where value=$1;
		RETURN blclids->(lookup_table->>species_value);
        END;
        $_$;


ALTER FUNCTION public._get_species_clid(_culprit_id bigint) OWNER TO gozdovi;

--
-- Name: _izbrisano(numeric); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public._izbrisano(status numeric);

CREATE FUNCTION public._izbrisano(status numeric) RETURNS smallint
    LANGUAGE plpgsql
    AS $$
        declare
        a smallint;
        begin
          if status > 0 then
            a = 0;
          else
            a = 1;
          end if;
          RETURN a;
        END;
        $$;


ALTER FUNCTION public._izbrisano(status numeric) OWNER TO gozdovi;

--
-- Name: backup_data_func(); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public.backup_data_func();

CREATE FUNCTION public.backup_data_func() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
    BEGIN
    IF (TG_OP = 'INSERT') THEN

        INSERT INTO mbase2.licences(id, oznaka, opis, tip, datum_zacetka)
        VALUES(NEW.id, NEW.oznaka, NEW.opis, NEW.tip, NEW.datum_zacetka);

    -- new things start here
    ELSIF (TG_OP = 'UPDATE') THEN

        UPDATE mbase2.licences
	    SET id = NEW.id, oznaka = NEW.oznaka, opis = NEW.opis, tip = NEW.tip, datum_zacetka = NEW.datum_zacetka
        WHERE id = NEW.id;

    ELSIF (TG_OP = 'DELETE') THEN
        -- our trigger calls this function AFTER the statement is executed, so for the delete statement, we can only access the OLD instance!

	    DELETE FROM mbase2.licences WHERE id = OLD.id;

        END IF;
        RETURN NULL;
    END;
$$;


ALTER FUNCTION public.backup_data_func() OWNER TO gozdovi;

--
-- Name: cast_to_cdbreal(anyelement); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public.cast_to_cdbreal(anyelement);

CREATE FUNCTION public.cast_to_cdbreal(anyelement) RETURNS real
    LANGUAGE plpgsql IMMUTABLE
    AS $_$
    begin
        -- Note the double casting to avoid infinite recursion.
        return cast($1::varchar as real);
    exception
        when invalid_text_representation then
          return NULL;
    end;
    $_$;


ALTER FUNCTION public.cast_to_cdbreal(anyelement) OWNER TO gozdovi;

--
-- Name: concat(anynonarray, anynonarray); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public.concat(anynonarray, anynonarray);

CREATE FUNCTION public.concat(anynonarray, anynonarray) RETURNS text
    LANGUAGE sql
    AS $_$SELECT CAST($1 AS text) || CAST($2 AS text);$_$;


ALTER FUNCTION public.concat(anynonarray, anynonarray) OWNER TO gozdovi;

--
-- Name: concat(anynonarray, text); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public.concat(anynonarray, text);

CREATE FUNCTION public.concat(anynonarray, text) RETURNS text
    LANGUAGE sql
    AS $_$SELECT CAST($1 AS text) || $2;$_$;


ALTER FUNCTION public.concat(anynonarray, text) OWNER TO gozdovi;

--
-- Name: concat(text, anynonarray); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public.concat(text, anynonarray);

CREATE FUNCTION public.concat(text, anynonarray) RETURNS text
    LANGUAGE sql
    AS $_$SELECT $1 || CAST($2 AS text);$_$;


ALTER FUNCTION public.concat(text, anynonarray) OWNER TO gozdovi;

--
-- Name: concat(text, text); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public.concat(text, text);

CREATE FUNCTION public.concat(text, text) RETURNS text
    LANGUAGE sql
    AS $_$SELECT $1 || $2;$_$;


ALTER FUNCTION public.concat(text, text) OWNER TO gozdovi;

--
-- Name: get_altid_from_clid(bigint, integer); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public.get_altid_from_clid(_id bigint, _type_id integer);

CREATE FUNCTION public.get_altid_from_clid(_id bigint, _type_id integer) RETURNS integer
    LANGUAGE plpgsql
    AS $_$
        declare
        a integer;
        begin
          SELECT altid INTO a FROM bears_list where id=$1 and type_id=$2;
          RETURN a;
        END;
        $_$;


ALTER FUNCTION public.get_altid_from_clid(_id bigint, _type_id integer) OWNER TO gozdovi;

--
-- Name: get_clid(character varying, integer, character varying); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public.get_clid(_value character varying, _clid integer, _lang character varying);

CREATE FUNCTION public.get_clid(_value character varying, _clid integer, _lang character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $_$
        declare
        a integer;
        begin
          select into a id from bears_list where value=$1 and type_id=$2;
          if not found then
            insert into bears_list (value,type_id,name) values ($1,$2,'{"default":"' || $1 || '","'|| $3 ||'":"' || $1 || '"}') returning id into a;
          end if;
          RETURN a;
        END;
        $_$;


ALTER FUNCTION public.get_clid(_value character varying, _clid integer, _lang character varying) OWNER TO gozdovi;

--
-- Name: get_clid(bigint, integer, character varying, regclass); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public.get_clid(_id bigint, _clid integer, _lang character varying, _tbl regclass);

CREATE FUNCTION public.get_clid(_id bigint, _clid integer, _lang character varying, _tbl regclass) RETURNS integer
    LANGUAGE plpgsql
    AS $_$
        declare
        _value varchar;
        a integer;
        begin
          EXECUTE format('SELECT value FROM %s where id = %s', _tbl,_id)
          INTO _value;
          select into a id from bears_list where value=_value and type_id=$2;
          if not found then
            insert into bears_list (value,type_id,name) values (_value,$2,'{"default":"' || _value || '","'|| $3 ||'":"' || _value || '"}') returning id into a;
          end if;
          RETURN a;
        END;
        $_$;

ALTER FUNCTION public.get_clid(_id bigint, _clid integer, _lang character varying, _tbl regclass) OWNER TO gozdovi;

--
-- Name: get_clid_from_altid(bigint, integer); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public.get_clid_from_altid(_id bigint, _type_id integer);

CREATE FUNCTION public.get_clid_from_altid(_id bigint, _type_id integer) RETURNS integer
    LANGUAGE plpgsql
    AS $_$
        declare
        a integer;
        begin
          SELECT id INTO a FROM bears_list where altid=$1 and type_id=$2;
          RETURN a;
        END;
        $_$;


ALTER FUNCTION public.get_clid_from_altid(_id bigint, _type_id integer) OWNER TO gozdovi;

--
-- Name: greatest(numeric, numeric); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public."greatest"(numeric, numeric);

CREATE FUNCTION public."greatest"(numeric, numeric) RETURNS numeric
    LANGUAGE sql
    AS $_$SELECT CASE WHEN (($1 > $2) OR ($2 IS NULL)) THEN $1 ELSE $2 END;$_$;


ALTER FUNCTION public."greatest"(numeric, numeric) OWNER TO gozdovi;

--
-- Name: greatest(numeric, numeric, numeric); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public."greatest"(numeric, numeric, numeric);

CREATE FUNCTION public."greatest"(numeric, numeric, numeric) RETURNS numeric
    LANGUAGE sql
    AS $_$SELECT greatest($1, greatest($2, $3));$_$;


ALTER FUNCTION public."greatest"(numeric, numeric, numeric) OWNER TO gozdovi;

--
-- Name: is_mbase2_user(integer); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public.is_mbase2_user(integer);

CREATE FUNCTION public.is_mbase2_user(integer) RETURNS boolean
    LANGUAGE sql
    AS $_$
                SELECT EXISTS (
                    SELECT 1 from mbase2._users where _uid = $1
                );
                $_$;


ALTER FUNCTION public.is_mbase2_user(integer) OWNER TO gozdovi;

--
-- Name: mb2_code_list_key_id(integer, character varying); Type: FUNCTION; Schema: public; Owner: gozdovi
--
DROP FUNCTION IF EXISTS public.mb2_code_list_key_id(_list_id integer, _key character varying, OUT result integer);

CREATE FUNCTION public.mb2_code_list_key_id(_list_id integer, _key character varying, OUT result integer) RETURNS integer
    LANGUAGE plpgsql
    AS $_$
            BEGIN
                EXECUTE format('SELECT id FROM code_list_options WHERE list_id=$1 AND key=$2 LIMIT 1') USING _list_id, _key
                INTO result;
            END;
        $_$;


ALTER FUNCTION public.mb2_code_list_key_id(_list_id integer, _key character varying, OUT result integer) OWNER TO gozdovi;

--
-- Name: mb2_get_code_list_id(character varying); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public.mb2_get_code_list_id(_label character varying, OUT result integer);

CREATE FUNCTION public.mb2_get_code_list_id(_label character varying, OUT result integer) RETURNS integer
    LANGUAGE plpgsql
    AS $_$
            BEGIN
                EXECUTE format('SELECT id FROM code_lists WHERE label_key=$1 LIMIT 1') USING _label
                INTO result;
            END;
        $_$;


ALTER FUNCTION public.mb2_get_code_list_id(_label character varying, OUT result integer) OWNER TO gozdovi;

--
-- Name: on_upsert_bears_biometry_animal(); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public.on_upsert_bears_biometry_animal();

CREATE FUNCTION public.on_upsert_bears_biometry_animal() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
        begin
          NEW.date_time=date(abstime(NEW.datum::int));
                                NEW.geom=ST_SetSRID(ST_MakePoint(NEW.lng, NEW.lat),4326);
        RETURN NEW;
        END;
        $$;


ALTER FUNCTION public.on_upsert_bears_biometry_animal() OWNER TO gozdovi;

--
-- Name: on_upsert_bears_counting_counting_place(); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public.on_upsert_bears_counting_counting_place();

CREATE FUNCTION public.on_upsert_bears_counting_counting_place() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
        begin

                                    NEW.geom=ST_SetSRID(ST_MakePoint(NEW.lng, NEW.lat),4326);
                                    DECLARE
                                    _a geometry;
                                    BEGIN
                                      SELECT INTO _a geom from ge.lovisca_luo where ST_Contains(geom,NEW.geom) LIMIT 1;
                                      NEW.hg=_a;
                                    END;
        RETURN NEW;
        END;
        $$;


ALTER FUNCTION public.on_upsert_bears_counting_counting_place() OWNER TO gozdovi;

--
-- Name: on_upsert_bears_counting_monitoring(); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public.on_upsert_bears_counting_monitoring();

CREATE FUNCTION public.on_upsert_bears_counting_monitoring() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
        begin
          NEW.date_time=date(abstime(NEW.monitoring_datum::int));
        RETURN NEW;
        END;
        $$;


ALTER FUNCTION public.on_upsert_bears_counting_monitoring() OWNER TO gozdovi;

--
-- Name: on_upsert_bears_damage_damage(); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public.on_upsert_bears_damage_damage();

CREATE FUNCTION public.on_upsert_bears_damage_damage() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
        begin
          NEW.date_time=date(abstime(NEW.date_examination_date::int));
                        NEW.species_id=_get_species_clid(NEW.culprit_id);
                        NEW.geom=ST_SetSRID(ST_MakePoint(NEW.lng, NEW.lat),4326);
                        DECLARE
                          _culprit_description varchar;
                        BEGIN
                          SELECT INTO _culprit_description description FROM bears_damage_c_povzrocitelji where value=NEW.culprit_id limit 1;
                          NEW._cdb_culprit=get_clid(_culprit_description,71,'en');
                        END;

        RETURN NEW;
        END;
        $$;


ALTER FUNCTION public.on_upsert_bears_damage_damage() OWNER TO gozdovi;

--
-- Name: on_upsert_bears_damage_damage_object(); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public.on_upsert_bears_damage_damage_object();

CREATE FUNCTION public.on_upsert_bears_damage_damage_object() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
        begin
          DECLARE
                                    _a varchar;
                                    BEGIN
                                      SELECT INTO _a kategorija_zgs from bears_damage_skodni_objekti where sifra=NEW.object limit 1;

                                      if not found then
                                        NULL;
                                      else
                                        NEW._cdb_damage_category=get_clid(_a,64,'en');
                                      end if;

                                      NEW._cdb_damage_object_unit=get_clid(NEW.unit,65,'en');
                                    END;
        RETURN NEW;
        END;
        $$;


ALTER FUNCTION public.on_upsert_bears_damage_damage_object() OWNER TO gozdovi;

--
-- Name: on_upsert_bears_interventions(); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public.on_upsert_bears_interventions();

CREATE FUNCTION public.on_upsert_bears_interventions() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
        begin
          NEW.date_time=date(abstime(NEW.intervencija_datum::int));
                                NEW.species_id=get_altid_from_clid(NEW.zivalska_vrsta,44);
                                NEW._cdb_reason=get_clid_from_altid(NEW.vzrok_intervencije,72);
                                NEW._cdb_situation_type=get_clid_from_altid(NEW.tip_situacije,73);
                                NEW.geom=ST_SetSRID(ST_MakePoint(NEW.lng, NEW.lat),4326);
        RETURN NEW;
        END;
        $$;


ALTER FUNCTION public.on_upsert_bears_interventions() OWNER TO gozdovi;

--
-- Name: on_upsert_bears_samples_sample(); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public.on_upsert_bears_samples_sample();

CREATE FUNCTION public.on_upsert_bears_samples_sample() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
        begin
          NEW.date_time=date(abstime(NEW.datum_zajema::int));
                        NEW.geom=ST_SetSRID(ST_MakePoint(NEW.lng, NEW.lat),4326);
        RETURN NEW;
        END;
        $$;


ALTER FUNCTION public.on_upsert_bears_samples_sample() OWNER TO gozdovi;

--
-- Name: on_upsert_bears_telemetry_subject(); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public.on_upsert_bears_telemetry_subject();

CREATE FUNCTION public.on_upsert_bears_telemetry_subject() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
        begin
          if NEW.is_changed is null then
                                              NEW.is_changed=true;
                                            end if;
                                            NEW._cdb_telemetry_collar_start_date=date(abstime(NEW.datum_namestitve::int));
                                            NEW._cdb_telemetry_collar_removal_date=date(abstime(NEW.datum_odstanitve::int));

        RETURN NEW;
        END;
        $$;


ALTER FUNCTION public.on_upsert_bears_telemetry_subject() OWNER TO gozdovi;

--
-- Name: rand(); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public.rand();

CREATE FUNCTION public.rand() RETURNS double precision
    LANGUAGE sql
    AS $$SELECT random();$$;


ALTER FUNCTION public.rand() OWNER TO gozdovi;

--
-- Name: substring_index(text, text, integer); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public.substring_index(text, text, integer);

CREATE FUNCTION public.substring_index(text, text, integer) RETURNS text
    LANGUAGE sql
    AS $_$SELECT array_to_string((string_to_array($1, $2)) [1:$3], $2);$_$;


ALTER FUNCTION public.substring_index(text, text, integer) OWNER TO gozdovi;

--
-- Name: sync_date_created(); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public.sync_date_created();

CREATE FUNCTION public.sync_date_created() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  NEW.date_record_created := NOW()::timestamp;
  NEW.date_record_modified := NEW.date_record_created;
  RETURN NEW;
END;
$$;


ALTER FUNCTION public.sync_date_created() OWNER TO gozdovi;

--
-- Name: sync_date_modified(); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public.sync_date_modified();

CREATE FUNCTION public.sync_date_modified() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  NEW.date_record_modified := NOW()::timestamp;
  RETURN NEW;
END;
$$;


ALTER FUNCTION public.sync_date_modified() OWNER TO gozdovi;

--
-- Name: to_numeric(anyelement); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public.to_numeric(anyelement);

CREATE FUNCTION public.to_numeric(anyelement) RETURNS numeric
    LANGUAGE plpgsql IMMUTABLE STRICT
    AS $_$
    DECLARE x NUMERIC;
    BEGIN
        x = $1::NUMERIC;
        RETURN x;
    EXCEPTION WHEN others THEN
        RETURN NULL;
    END;
    $_$;


ALTER FUNCTION public.to_numeric(anyelement) OWNER TO gozdovi;

--
-- Name: update_code_list(); Type: FUNCTION; Schema: public; Owner: gozdovi
--

DROP FUNCTION IF EXISTS public.update_code_list();

CREATE FUNCTION public.update_code_list() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
        declare
        _list_key varchar;
        _list_key_id integer;
        BEGIN
        select label_key into _list_key from mbase2.code_lists where id=new.list_id;
        select id into _list_key_id from mbase2.code_list_options
                where list_key='code_lists' and
                key = _list_key;
        new.list_key := _list_key;
        new.list_key_id := _list_key_id;
        RETURN NEW;
        END;
        $$;


ALTER FUNCTION public.update_code_list() OWNER TO gozdovi;
