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
