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

ALTER TABLE IF EXISTS ONLY mb2data.ct_trap_stations DROP CONSTRAINT IF EXISTS trap_stations__location_reference_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct_surveys DROP CONSTRAINT IF EXISTS surveys_survey_description_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS spm_trap_station_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS spm_sex_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS spm_session_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS spm_position_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS spm_life_stage_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS spm_hair_trap_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS spm__species_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__species_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__sign_of_presence_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__prey_species_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__marking_object_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__licence_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__data_quality_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey95;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey94;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey93;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey92;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey91;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey90;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey9;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey89;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey88;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey87;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey86;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey85;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey84;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey83;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey82;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey81;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey80;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey8;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey79;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey78;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey77;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey76;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey75;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey74;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey73;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey72;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey71;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey70;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey7;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey69;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey68;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey67;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey66;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey65;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey64;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey63;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey62;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey61;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey60;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey6;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey59;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey58;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey57;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey56;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey55;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey54;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey53;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey52;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey51;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey50;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey5;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey49;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey48;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey47;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey46;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey45;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey44;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey43;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey42;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey41;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey40;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey4;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey39;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey38;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey37;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey36;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey35;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey34;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey33;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey32;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey31;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey30;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey3;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey29;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey28;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey27;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey26;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey25;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey24;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey23;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey22;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey21;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey20;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey2;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey19;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey18;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey17;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey16;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey15;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey14;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey13;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey12;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey11;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey10;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey1;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop__batch_id_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.signs_of_presence_module DROP CONSTRAINT IF EXISTS signs_of_presence_module_sign_of_presence_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.signs_of_presence_module DROP CONSTRAINT IF EXISTS signs_of_presence_module_media_quality_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.signs_of_presence_module DROP CONSTRAINT IF EXISTS signs_of_presence_module_individual_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.signs_of_presence_module DROP CONSTRAINT IF EXISTS signs_of_presence_module_genetic_sample_id_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.signs_of_presence_module DROP CONSTRAINT IF EXISTS signs_of_presence_module_genetic_analysis_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.signs_of_presence_module DROP CONSTRAINT IF EXISTS signs_of_presence_module_data_quality_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.signs_of_presence_module DROP CONSTRAINT IF EXISTS signs_of_presence_module__species_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.signs_of_presence_module DROP CONSTRAINT IF EXISTS signs_of_presence_module__location_reference_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.signs_of_presence_module DROP CONSTRAINT IF EXISTS signs_of_presence_module__licence_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct_sessions DROP CONSTRAINT IF EXISTS sessions_trap_station_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct_sessions DROP CONSTRAINT IF EXISTS sessions_survey_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct_sessions DROP CONSTRAINT IF EXISTS sessions_camera_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.interventions_events DROP CONSTRAINT IF EXISTS interventions_events_intervention_reason_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.interventions_events DROP CONSTRAINT IF EXISTS interventions_events_intervention_outcome_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.interventions_events DROP CONSTRAINT IF EXISTS interventions_events_intervention_id_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.interventions_events DROP CONSTRAINT IF EXISTS interventions_events_intervention_caller_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.interventions DROP CONSTRAINT IF EXISTS interventions__species_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.interventions DROP CONSTRAINT IF EXISTS interventions__licence_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.individuals DROP CONSTRAINT IF EXISTS individuals_sex_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.individuals DROP CONSTRAINT IF EXISTS individuals__species_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.gensam DROP CONSTRAINT IF EXISTS gensam__species_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.gensam DROP CONSTRAINT IF EXISTS gensam__sample_type_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.gensam DROP CONSTRAINT IF EXISTS gensam__sample_collection_method_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.gensam DROP CONSTRAINT IF EXISTS gensam__licence_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.gensam DROP CONSTRAINT IF EXISTS gensam__data_quality_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.gensam DROP CONSTRAINT IF EXISTS gensam__batch_id_fkey8;
ALTER TABLE IF EXISTS ONLY mb2data.gensam DROP CONSTRAINT IF EXISTS gensam__batch_id_fkey7;
ALTER TABLE IF EXISTS ONLY mb2data.gensam DROP CONSTRAINT IF EXISTS gensam__batch_id_fkey6;
ALTER TABLE IF EXISTS ONLY mb2data.gensam DROP CONSTRAINT IF EXISTS gensam__batch_id_fkey5;
ALTER TABLE IF EXISTS ONLY mb2data.gensam DROP CONSTRAINT IF EXISTS gensam__batch_id_fkey4;
ALTER TABLE IF EXISTS ONLY mb2data.gensam DROP CONSTRAINT IF EXISTS gensam__batch_id_fkey3;
ALTER TABLE IF EXISTS ONLY mb2data.gensam DROP CONSTRAINT IF EXISTS gensam__batch_id_fkey2;
ALTER TABLE IF EXISTS ONLY mb2data.gensam DROP CONSTRAINT IF EXISTS gensam__batch_id_fkey1;
ALTER TABLE IF EXISTS ONLY mb2data.gensam DROP CONSTRAINT IF EXISTS gensam__batch_id_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_uac DROP CONSTRAINT IF EXISTS dmg_uac__user_group_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_others DROP CONSTRAINT IF EXISTS dmg_others__post_number_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_others DROP CONSTRAINT IF EXISTS dmg_others__country_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_nacini_varovanja DROP CONSTRAINT IF EXISTS dmg_nacini_varovanja__nacin_varovanja_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_nacini_varovanja DROP CONSTRAINT IF EXISTS dmg_nacini_varovanja__culprit_key_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_deputies DROP CONSTRAINT IF EXISTS dmg_deputies__oe_id_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg DROP CONSTRAINT IF EXISTS dmg_claims__culprit_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_batches DROP CONSTRAINT IF EXISTS dmg_batches__species_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_batches DROP CONSTRAINT IF EXISTS dmg_batches__licence_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_batches DROP CONSTRAINT IF EXISTS dmg_batches__dmg_object_unit_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_batches DROP CONSTRAINT IF EXISTS dmg_batches__dmg_object_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_batches DROP CONSTRAINT IF EXISTS dmg_batches__culprit_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_agreements DROP CONSTRAINT IF EXISTS dmg_agreements__claim_id_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_agreements DROP CONSTRAINT IF EXISTS dmg_agreements__affectee_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__post_number_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__country_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__citizenship_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg DROP CONSTRAINT IF EXISTS dmg__licence_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct_trap_stations DROP CONSTRAINT IF EXISTS ct_trap_stations_survey_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct_trap_stations DROP CONSTRAINT IF EXISTS ct_trap_stations__licence_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct_trap_stations DROP CONSTRAINT IF EXISTS ct_trap_stations__batch_id_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct_surveys DROP CONSTRAINT IF EXISTS ct_surveys__licence_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct_surveys DROP CONSTRAINT IF EXISTS ct_surveys__batch_id_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct_survey_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct_sites DROP CONSTRAINT IF EXISTS ct_sites__licence_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct_sites DROP CONSTRAINT IF EXISTS ct_sites__batch_id_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct_sessions DROP CONSTRAINT IF EXISTS ct_sessions__batch_id_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct_locations DROP CONSTRAINT IF EXISTS ct_locations_location_accuracy_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct_individual_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct_cameras DROP CONSTRAINT IF EXISTS ct_cameras__licence_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct_cameras DROP CONSTRAINT IF EXISTS ct_cameras__batch_id_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct_camera_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__licence_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey9;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey8;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey7;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey6;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey5;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey4;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey30;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey3;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey29;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey28;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey27;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey26;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey25;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey24;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey23;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey22;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey21;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey20;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey2;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey19;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey18;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey17;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey16;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey15;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey14;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey13;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey12;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey11;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey10;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey1;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS ct__batch_id_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.cnt_observations DROP CONSTRAINT IF EXISTS cnt_observations_observations_report_id_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.cnt_observation_reports DROP CONSTRAINT IF EXISTS cnt_observation_reports_monitoring_id_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.cnt_observation_reports DROP CONSTRAINT IF EXISTS cnt_observation_reports__cnt_location_id_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.cnt_monitoring DROP CONSTRAINT IF EXISTS cnt_monitoring__vrsta_opazovanja_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.cnt_estimations DROP CONSTRAINT IF EXISTS cnt_estimations_monitoring_id_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.cnt_contacts DROP CONSTRAINT IF EXISTS cnt_contacts__post_number_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.cnt_contacts DROP CONSTRAINT IF EXISTS cnt_contacts__cnt_vrsta_kontakta_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct_cameras DROP CONSTRAINT IF EXISTS cameras_camera_model_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct_cameras DROP CONSTRAINT IF EXISTS cameras_camera_make_fkey;
ALTER TABLE IF EXISTS ONLY mb2data.camelot_sources DROP CONSTRAINT IF EXISTS camelot_sources__licence_name_fkey;
ALTER TABLE IF EXISTS ONLY mb2data._locations DROP CONSTRAINT IF EXISTS _locations_location_accuracy_fkey;
DROP TRIGGER IF EXISTS mb2data_interventions_modified ON mb2data.interventions;
DROP TRIGGER IF EXISTS mb2data_interventions_events_modified ON mb2data.interventions_events;
DROP TRIGGER IF EXISTS mb2data_interventions_events_created ON mb2data.interventions_events;
DROP TRIGGER IF EXISTS mb2data_interventions_created ON mb2data.interventions;
DROP TRIGGER IF EXISTS mb2data_dmg_claims_modified ON mb2data.dmg;
DROP TRIGGER IF EXISTS mb2data_cnt_observation_reports_modified ON mb2data.cnt_observation_reports;
DROP TRIGGER IF EXISTS mb2data_cnt_observation_reports_created ON mb2data.cnt_observation_reports;
CREATE OR REPLACE VIEW mb2data.interventions_view AS
SELECT
    NULL::integer AS id,
    NULL::text AS geom,
    NULL::text AS notes,
    NULL::timestamp without time zone AS date_record_created,
    NULL::timestamp without time zone AS date_record_modified,
    NULL::integer AS _species_name,
    NULL::integer AS _uname,
    NULL::timestamp without time zone AS intervention_call_timestamp_min,
    NULL::timestamp without time zone AS intervention_call_timestamp_max,
    NULL::timestamp without time zone AS intervention_start_timestamp_min,
    NULL::bigint AS uncompleted_interventions,
    NULL::bigint AS intervention_events_count,
    NULL::json AS intervention_caller,
    NULL::json AS intervention_reason,
    NULL::json AS intervention_measures,
    NULL::json AS intervention_outcome,
    NULL::json AS chief_interventor,
    NULL::jsonb AS _data,
    NULL::boolean AS _completed,
    NULL::jsonb AS _location_data;
CREATE OR REPLACE VIEW mb2data._dmg AS
SELECT
    NULL::integer AS id,
    NULL::integer AS _licence_name,
    NULL::integer AS _uname,
    NULL::date AS event_date,
    NULL::integer AS _culprit,
    NULL::jsonb AS _zgs_damage_objects;
DROP INDEX IF EXISTS mb2data.idx_gensam__location;
DROP INDEX IF EXISTS mb2data.attachments_dmg_claims_gin_idx;
ALTER TABLE IF EXISTS ONLY mb2data.ct_trap_stations DROP CONSTRAINT IF EXISTS unique_trap_station_name_survey_name__licence_name_location_ref;
ALTER TABLE IF EXISTS ONLY mb2data.ct_surveys DROP CONSTRAINT IF EXISTS unique_survey_name__licence_name;
ALTER TABLE IF EXISTS ONLY mb2data.ct_sites DROP CONSTRAINT IF EXISTS unique_site_name__licence_name;
ALTER TABLE IF EXISTS ONLY mb2data.ct_cameras DROP CONSTRAINT IF EXISTS unique_camera_name__licence_name;
ALTER TABLE IF EXISTS ONLY mb2data.ct_trap_stations DROP CONSTRAINT IF EXISTS trap_stations_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct_surveys DROP CONSTRAINT IF EXISTS surveys_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct DROP CONSTRAINT IF EXISTS spm_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.sop DROP CONSTRAINT IF EXISTS sop_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct_sites DROP CONSTRAINT IF EXISTS sites_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.signs_of_presence_module DROP CONSTRAINT IF EXISTS signs_of_presence_module_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.ct_sessions DROP CONSTRAINT IF EXISTS sessions_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.interventions DROP CONSTRAINT IF EXISTS interventions_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.interventions_interventors DROP CONSTRAINT IF EXISTS interventions_interventors_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.interventions_interventors DROP CONSTRAINT IF EXISTS interventions_interventors__uname__uid_unique_constraint;
ALTER TABLE IF EXISTS ONLY mb2data.interventions_interventors DROP CONSTRAINT IF EXISTS interventions_interventors__uname__uid_key;
ALTER TABLE IF EXISTS ONLY mb2data.interventions_events DROP CONSTRAINT IF EXISTS interventions_events_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.individuals DROP CONSTRAINT IF EXISTS individuals_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.individuals DROP CONSTRAINT IF EXISTS individuals_individual_name_unique_constraint;
ALTER TABLE IF EXISTS ONLY mb2data.gps_colars_table DROP CONSTRAINT IF EXISTS gps_colars_table_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.gensam DROP CONSTRAINT IF EXISTS gensam_sample_code_unique_constraint;
ALTER TABLE IF EXISTS ONLY mb2data.gensam DROP CONSTRAINT IF EXISTS gensam_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.genetic_samples_table DROP CONSTRAINT IF EXISTS genetic_samples_table_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_znaki_povzrocitelja DROP CONSTRAINT IF EXISTS dmg_znaki_povzrocitelja_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_znaki_povzrocitelja DROP CONSTRAINT IF EXISTS dmg_znaki_povzrocitelja__dmg_znak_opis_key9;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_znaki_povzrocitelja DROP CONSTRAINT IF EXISTS dmg_znaki_povzrocitelja__dmg_znak_opis_key8;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_znaki_povzrocitelja DROP CONSTRAINT IF EXISTS dmg_znaki_povzrocitelja__dmg_znak_opis_key7;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_znaki_povzrocitelja DROP CONSTRAINT IF EXISTS dmg_znaki_povzrocitelja__dmg_znak_opis_key6;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_znaki_povzrocitelja DROP CONSTRAINT IF EXISTS dmg_znaki_povzrocitelja__dmg_znak_opis_key5;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_znaki_povzrocitelja DROP CONSTRAINT IF EXISTS dmg_znaki_povzrocitelja__dmg_znak_opis_key4;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_znaki_povzrocitelja DROP CONSTRAINT IF EXISTS dmg_znaki_povzrocitelja__dmg_znak_opis_key3;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_znaki_povzrocitelja DROP CONSTRAINT IF EXISTS dmg_znaki_povzrocitelja__dmg_znak_opis_key2;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_znaki_povzrocitelja DROP CONSTRAINT IF EXISTS dmg_znaki_povzrocitelja__dmg_znak_opis_key11;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_znaki_povzrocitelja DROP CONSTRAINT IF EXISTS dmg_znaki_povzrocitelja__dmg_znak_opis_key10;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_znaki_povzrocitelja DROP CONSTRAINT IF EXISTS dmg_znaki_povzrocitelja__dmg_znak_opis_key1;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_znaki_povzrocitelja DROP CONSTRAINT IF EXISTS dmg_znaki_povzrocitelja__dmg_znak_opis_key;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_urne_postavke DROP CONSTRAINT IF EXISTS dmg_urne_postavke_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_urne_postavke DROP CONSTRAINT IF EXISTS dmg_urne_postavke_label_key;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_uac DROP CONSTRAINT IF EXISTS dmg_uac_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_uac DROP CONSTRAINT IF EXISTS dmg_uac__uname_key9;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_uac DROP CONSTRAINT IF EXISTS dmg_uac__uname_key8;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_uac DROP CONSTRAINT IF EXISTS dmg_uac__uname_key7;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_uac DROP CONSTRAINT IF EXISTS dmg_uac__uname_key6;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_uac DROP CONSTRAINT IF EXISTS dmg_uac__uname_key5;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_uac DROP CONSTRAINT IF EXISTS dmg_uac__uname_key4;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_uac DROP CONSTRAINT IF EXISTS dmg_uac__uname_key3;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_uac DROP CONSTRAINT IF EXISTS dmg_uac__uname_key2;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_uac DROP CONSTRAINT IF EXISTS dmg_uac__uname_key1;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_uac DROP CONSTRAINT IF EXISTS dmg_uac__uname_key;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_skodni_objekti DROP CONSTRAINT IF EXISTS dmg_skodni_objekti_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_skodni_objekti DROP CONSTRAINT IF EXISTS dmg_skodni_objekti_key_item_key_parent_key;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_others DROP CONSTRAINT IF EXISTS dmg_others_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_nacini_varovanja DROP CONSTRAINT IF EXISTS dmg_nacini_varovanja_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_nacini_varovanja DROP CONSTRAINT IF EXISTS dmg_nacini_varovanja__nacin_varovanja__culprit_key_key;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_deputies DROP CONSTRAINT IF EXISTS dmg_deputies_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_deputies DROP CONSTRAINT IF EXISTS dmg_deputies__uname_key9;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_deputies DROP CONSTRAINT IF EXISTS dmg_deputies__uname_key8;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_deputies DROP CONSTRAINT IF EXISTS dmg_deputies__uname_key7;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_deputies DROP CONSTRAINT IF EXISTS dmg_deputies__uname_key6;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_deputies DROP CONSTRAINT IF EXISTS dmg_deputies__uname_key5;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_deputies DROP CONSTRAINT IF EXISTS dmg_deputies__uname_key4;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_deputies DROP CONSTRAINT IF EXISTS dmg_deputies__uname_key3;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_deputies DROP CONSTRAINT IF EXISTS dmg_deputies__uname_key2;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_deputies DROP CONSTRAINT IF EXISTS dmg_deputies__uname_key12;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_deputies DROP CONSTRAINT IF EXISTS dmg_deputies__uname_key11;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_deputies DROP CONSTRAINT IF EXISTS dmg_deputies__uname_key10;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_deputies DROP CONSTRAINT IF EXISTS dmg_deputies__uname_key1;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_deputies DROP CONSTRAINT IF EXISTS dmg_deputies__uname_key;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_deputies DROP CONSTRAINT IF EXISTS dmg_deputies__kadrovska_koda__oe_id_key9;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_deputies DROP CONSTRAINT IF EXISTS dmg_deputies__kadrovska_koda__oe_id_key8;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_deputies DROP CONSTRAINT IF EXISTS dmg_deputies__kadrovska_koda__oe_id_key7;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_deputies DROP CONSTRAINT IF EXISTS dmg_deputies__kadrovska_koda__oe_id_key6;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_deputies DROP CONSTRAINT IF EXISTS dmg_deputies__kadrovska_koda__oe_id_key5;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_deputies DROP CONSTRAINT IF EXISTS dmg_deputies__kadrovska_koda__oe_id_key4;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_deputies DROP CONSTRAINT IF EXISTS dmg_deputies__kadrovska_koda__oe_id_key3;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_deputies DROP CONSTRAINT IF EXISTS dmg_deputies__kadrovska_koda__oe_id_key2;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_deputies DROP CONSTRAINT IF EXISTS dmg_deputies__kadrovska_koda__oe_id_key11;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_deputies DROP CONSTRAINT IF EXISTS dmg_deputies__kadrovska_koda__oe_id_key10;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_deputies DROP CONSTRAINT IF EXISTS dmg_deputies__kadrovska_koda__oe_id_key1;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_deputies DROP CONSTRAINT IF EXISTS dmg_deputies__kadrovska_koda__oe_id_key;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_culprits DROP CONSTRAINT IF EXISTS dmg_culprits_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_culprits DROP CONSTRAINT IF EXISTS dmg_culprits_key_item_key_parent_key;
ALTER TABLE IF EXISTS ONLY mb2data.dmg DROP CONSTRAINT IF EXISTS dmg_claims_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg DROP CONSTRAINT IF EXISTS dmg_claims__claim_id_key9;
ALTER TABLE IF EXISTS ONLY mb2data.dmg DROP CONSTRAINT IF EXISTS dmg_claims__claim_id_key8;
ALTER TABLE IF EXISTS ONLY mb2data.dmg DROP CONSTRAINT IF EXISTS dmg_claims__claim_id_key7;
ALTER TABLE IF EXISTS ONLY mb2data.dmg DROP CONSTRAINT IF EXISTS dmg_claims__claim_id_key6;
ALTER TABLE IF EXISTS ONLY mb2data.dmg DROP CONSTRAINT IF EXISTS dmg_claims__claim_id_key5;
ALTER TABLE IF EXISTS ONLY mb2data.dmg DROP CONSTRAINT IF EXISTS dmg_claims__claim_id_key4;
ALTER TABLE IF EXISTS ONLY mb2data.dmg DROP CONSTRAINT IF EXISTS dmg_claims__claim_id_key3;
ALTER TABLE IF EXISTS ONLY mb2data.dmg DROP CONSTRAINT IF EXISTS dmg_claims__claim_id_key2;
ALTER TABLE IF EXISTS ONLY mb2data.dmg DROP CONSTRAINT IF EXISTS dmg_claims__claim_id_key12;
ALTER TABLE IF EXISTS ONLY mb2data.dmg DROP CONSTRAINT IF EXISTS dmg_claims__claim_id_key11;
ALTER TABLE IF EXISTS ONLY mb2data.dmg DROP CONSTRAINT IF EXISTS dmg_claims__claim_id_key10;
ALTER TABLE IF EXISTS ONLY mb2data.dmg DROP CONSTRAINT IF EXISTS dmg_claims__claim_id_key1;
ALTER TABLE IF EXISTS ONLY mb2data.dmg DROP CONSTRAINT IF EXISTS dmg_claims__claim_id_key;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_cenik DROP CONSTRAINT IF EXISTS dmg_cenik_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_cenik DROP CONSTRAINT IF EXISTS dmg_cenik_key_kategorija_key_podkategorija_key_objekt_key;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_batches DROP CONSTRAINT IF EXISTS dmg_batches_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_agreements DROP CONSTRAINT IF EXISTS dmg_agreements_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_agreements DROP CONSTRAINT IF EXISTS dmg_agreements__claim_id__affectee_key;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__tax_id_key9;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__tax_id_key8;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__tax_id_key7;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__tax_id_key6;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__tax_id_key5;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__tax_id_key4;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__tax_id_key3;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__tax_id_key25;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__tax_id_key24;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__tax_id_key23;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__tax_id_key22;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__tax_id_key21;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__tax_id_key20;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__tax_id_key2;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__tax_id_key19;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__tax_id_key18;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__tax_id_key17;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__tax_id_key16;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__tax_id_key15;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__tax_id_key14;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__tax_id_key13;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__tax_id_key12;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__tax_id_key11;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__tax_id_key10;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__tax_id_key1;
ALTER TABLE IF EXISTS ONLY mb2data.dmg_affectees DROP CONSTRAINT IF EXISTS dmg_affectees__tax_id_key;
ALTER TABLE IF EXISTS ONLY mb2data.ct_locations DROP CONSTRAINT IF EXISTS ct_locations_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.cnt_permanent_spots DROP CONSTRAINT IF EXISTS cnt_permanent_spots_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.cnt_observations DROP CONSTRAINT IF EXISTS cnt_observations_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.cnt_observation_reports DROP CONSTRAINT IF EXISTS cnt_observation_reports_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.cnt_monitoring DROP CONSTRAINT IF EXISTS cnt_monitoring_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.cnt_estimations DROP CONSTRAINT IF EXISTS cnt_estimations_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.cnt_contacts DROP CONSTRAINT IF EXISTS cnt_contacts_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.cnt_contacts DROP CONSTRAINT IF EXISTS cnt_contacts__full_name_unique_constraint;
ALTER TABLE IF EXISTS ONLY mb2data.ct_cameras DROP CONSTRAINT IF EXISTS cameras_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.camelot_sources DROP CONSTRAINT IF EXISTS camelot_sources_pkey;
ALTER TABLE IF EXISTS ONLY mb2data.camelot_sources DROP CONSTRAINT IF EXISTS camelot_sources_camelot_source_name_key;
ALTER TABLE IF EXISTS ONLY mb2data._locations DROP CONSTRAINT IF EXISTS _locations_pkey;
ALTER TABLE IF EXISTS mb2data.sop ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.signs_of_presence_module ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.interventions_interventors ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.interventions_events ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.interventions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.individuals ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.gps_colars_table ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.gensam ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.genetic_samples_table ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.dmg_znaki_povzrocitelja ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.dmg_urne_postavke ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.dmg_uac ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.dmg_skodni_objekti ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.dmg_others ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.dmg_nacini_varovanja ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.dmg_deputies ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.dmg_culprits ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.dmg_cenik ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.dmg_batches ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.dmg_agreements ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.dmg_affectees ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.dmg ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.ct_trap_stations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.ct_surveys ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.ct_sites ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.ct_sessions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.ct_locations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.ct_cameras ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.ct ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.cnt_permanent_spots ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.cnt_observations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.cnt_observation_reports ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.cnt_monitoring ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.cnt_estimations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.cnt_contacts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data.camelot_sources ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS mb2data._locations ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS mb2data.trap_stations_id_seq;
DROP SEQUENCE IF EXISTS mb2data.surveys_id_seq;
DROP SEQUENCE IF EXISTS mb2data.spm_id_seq;
DROP SEQUENCE IF EXISTS mb2data.sop_id_seq;
DROP SEQUENCE IF EXISTS mb2data.sites_id_seq;
DROP SEQUENCE IF EXISTS mb2data.signs_of_presence_module_id_seq;
DROP SEQUENCE IF EXISTS mb2data.sessions_id_seq;
DROP VIEW IF EXISTS mb2data.interventions_view_interventors;
DROP VIEW IF EXISTS mb2data.interventions_view;
DROP SEQUENCE IF EXISTS mb2data.interventions_interventors_id_seq;
DROP TABLE IF EXISTS mb2data.interventions_interventors;
DROP SEQUENCE IF EXISTS mb2data.interventions_id_seq;
DROP SEQUENCE IF EXISTS mb2data.interventions_events_id_seq;
DROP TABLE IF EXISTS mb2data.interventions_events;
DROP TABLE IF EXISTS mb2data.interventions;
DROP SEQUENCE IF EXISTS mb2data.individuals_id_seq;
DROP TABLE IF EXISTS mb2data.individuals;
DROP SEQUENCE IF EXISTS mb2data.gps_colars_table_id_seq;
DROP TABLE IF EXISTS mb2data.gps_colars_table;
DROP SEQUENCE IF EXISTS mb2data.gensam_id_seq;
DROP SEQUENCE IF EXISTS mb2data.genetic_samples_table_id_seq;
DROP TABLE IF EXISTS mb2data.genetic_samples_table;
DROP SEQUENCE IF EXISTS mb2data.dmg_znaki_povzrocitelja_id_seq;
DROP TABLE IF EXISTS mb2data.dmg_znaki_povzrocitelja;
DROP VIEW IF EXISTS mb2data.dmg_view_uac;
DROP VIEW IF EXISTS mb2data.dmg_view_others;
DROP VIEW IF EXISTS mb2data.dmg_view_nacini_varovanja;
DROP VIEW IF EXISTS mb2data.dmg_view_deputies;
DROP VIEW IF EXISTS mb2data.dmg_view_culprits;
DROP VIEW IF EXISTS mb2data.dmg_view_claims;
DROP VIEW IF EXISTS mb2data.dmg_view_affectees;
DROP SEQUENCE IF EXISTS mb2data.dmg_urne_postavke_id_seq;
DROP TABLE IF EXISTS mb2data.dmg_urne_postavke;
DROP SEQUENCE IF EXISTS mb2data.dmg_uac_id_seq;
DROP TABLE IF EXISTS mb2data.dmg_uac;
DROP SEQUENCE IF EXISTS mb2data.dmg_skodni_objekti_id_seq;
DROP TABLE IF EXISTS mb2data.dmg_skodni_objekti;
DROP SEQUENCE IF EXISTS mb2data.dmg_others_id_seq;
DROP TABLE IF EXISTS mb2data.dmg_others;
DROP SEQUENCE IF EXISTS mb2data.dmg_nacini_varovanja_id_seq;
DROP TABLE IF EXISTS mb2data.dmg_nacini_varovanja;
DROP SEQUENCE IF EXISTS mb2data.dmg_deputies_id_seq;
DROP TABLE IF EXISTS mb2data.dmg_deputies;
DROP SEQUENCE IF EXISTS mb2data.dmg_culprits_id_seq;
DROP TABLE IF EXISTS mb2data.dmg_culprits;
DROP SEQUENCE IF EXISTS mb2data.dmg_claims_id_seq;
DROP SEQUENCE IF EXISTS mb2data.dmg_cenik_id_seq;
DROP TABLE IF EXISTS mb2data.dmg_cenik;
DROP SEQUENCE IF EXISTS mb2data.dmg_batches_id_seq;
DROP TABLE IF EXISTS mb2data.dmg_batches;
DROP SEQUENCE IF EXISTS mb2data.dmg_agreements_id_seq;
DROP TABLE IF EXISTS mb2data.dmg_agreements;
DROP SEQUENCE IF EXISTS mb2data.dmg_affectees_id_seq;
DROP TABLE IF EXISTS mb2data.dmg_affectees;
DROP TABLE IF EXISTS mb2data.dmg;
DROP VIEW IF EXISTS mb2data.ct_view_trap_stations;
DROP VIEW IF EXISTS mb2data.ct_view_media;
DROP VIEW IF EXISTS mb2data.ct_view_file_properties;
DROP TABLE IF EXISTS mb2data.ct_surveys;
DROP TABLE IF EXISTS mb2data.ct_sites;
DROP TABLE IF EXISTS mb2data.ct_sessions;
DROP SEQUENCE IF EXISTS mb2data.ct_locations_id_seq;
DROP TABLE IF EXISTS mb2data.ct_locations;
DROP VIEW IF EXISTS mb2data.cnt_view_permanent_spots;
DROP SEQUENCE IF EXISTS mb2data.cnt_permanent_spots_id_seq;
DROP TABLE IF EXISTS mb2data.cnt_permanent_spots;
DROP SEQUENCE IF EXISTS mb2data.cnt_observations_id_seq;
DROP TABLE IF EXISTS mb2data.cnt_observations;
DROP SEQUENCE IF EXISTS mb2data.cnt_observation_reports_id_seq;
DROP TABLE IF EXISTS mb2data.cnt_observation_reports;
DROP SEQUENCE IF EXISTS mb2data.cnt_monitoring_id_seq;
DROP TABLE IF EXISTS mb2data.cnt_monitoring;
DROP SEQUENCE IF EXISTS mb2data.cnt_estimations_id_seq;
DROP TABLE IF EXISTS mb2data.cnt_estimations;
DROP SEQUENCE IF EXISTS mb2data.cnt_contacts_id_seq;
DROP TABLE IF EXISTS mb2data.cnt_contacts;
DROP SEQUENCE IF EXISTS mb2data.cameras_id_seq;
DROP TABLE IF EXISTS mb2data.ct_cameras;
DROP SEQUENCE IF EXISTS mb2data.camelot_sources_id_seq;
DROP TABLE IF EXISTS mb2data.camelot_sources;
DROP VIEW IF EXISTS mb2data._sop;
DROP TABLE IF EXISTS mb2data.sop;
DROP VIEW IF EXISTS mb2data._signs_of_presence_module;
DROP TABLE IF EXISTS mb2data.signs_of_presence_module;
DROP SEQUENCE IF EXISTS mb2data._locations_id_seq;
DROP TABLE IF EXISTS mb2data._locations;
DROP VIEW IF EXISTS mb2data._gensam;
DROP TABLE IF EXISTS mb2data.gensam;
DROP VIEW IF EXISTS mb2data._dmg;
DROP VIEW IF EXISTS mb2data._ct;
DROP TABLE IF EXISTS mb2data.ct_trap_stations;
DROP TABLE IF EXISTS mb2data.ct;
DROP SCHEMA IF EXISTS mb2data;
--
-- Name: mb2data; Type: SCHEMA; Schema: -; Owner: gozdovi
--

CREATE SCHEMA mb2data;


ALTER SCHEMA mb2data OWNER TO gozdovi;

SET search_path TO public;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ct; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.ct (
    id integer NOT NULL,
    _species_name integer NOT NULL,
    _licence_name integer NOT NULL,
    _uname integer NOT NULL,
    event_date date NOT NULL,
    camelot_sighting_id integer,
    photos jsonb NOT NULL,
    session_name integer,
    sighting_quantity integer DEFAULT 1 NOT NULL,
    sex integer,
    individual_name integer,
    life_stage integer,
    "position" integer,
    hair_trap integer,
    notes text,
    event_time time without time zone,
    trap_station_name integer NOT NULL,
    _batch_id integer,
    survey_name integer,
    camera_name integer
);


ALTER TABLE mb2data.ct OWNER TO gozdovi;

--
-- Name: ct_trap_stations; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.ct_trap_stations (
    id integer NOT NULL,
    camelot_trap_station_id integer,
    trap_station_name text NOT NULL,
    site_name integer,
    _location_reference integer NOT NULL,
    camelot_id integer,
    _batch_id integer,
    _licence_name integer,
    survey_name integer
);


ALTER TABLE mb2data.ct_trap_stations OWNER TO gozdovi;

--
-- Name: _ct; Type: VIEW; Schema: mb2data; Owner: gozdovi
--

CREATE VIEW mb2data._ct AS
 SELECT ct.id,
    ct._species_name,
    ct.survey_name,
    ct.event_date,
    ct.event_time,
    ts.site_name,
    ct.trap_station_name,
    ct.individual_name,
    ct.camera_name,
    ct.sex,
    ct.sighting_quantity,
    ct._licence_name,
    ct.life_stage,
    ct."position",
    ct.notes,
    ct._uname,
    ct.photos,
    ts.id AS trap_station_id,
    ts._location_reference AS trap_station_location_id
   FROM (mb2data.ct ct
     LEFT JOIN mb2data.ct_trap_stations ts ON ((ct.trap_station_name = ts.id)));


ALTER TABLE mb2data._ct OWNER TO gozdovi;

--
-- Name: _dmg; Type: VIEW; Schema: mb2data; Owner: gozdovi
--

CREATE VIEW mb2data._dmg AS
SELECT
    NULL::integer AS id,
    NULL::integer AS _licence_name,
    NULL::integer AS _uname,
    NULL::date AS event_date,
    NULL::integer AS _culprit,
    NULL::jsonb AS _zgs_damage_objects;


ALTER TABLE mb2data._dmg OWNER TO gozdovi;

--
-- Name: gensam; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.gensam (
    id integer NOT NULL,
    _location public.geometry(Geometry,4326),
    _location_data jsonb,
    sample_code text,
    second_lab_code text,
    _sample_entry_clerk_uid integer,
    study integer,
    _data_quality integer,
    lab integer,
    _sample_collection_method integer,
    _sample_type integer,
    _notes text,
    _notes_to_lab text,
    animal_ref integer,
    date_record_created timestamp without time zone,
    date_record_modified timestamp without time zone,
    event_date date,
    event_time date,
    _batch_id integer,
    _species_name integer,
    _licence_name integer
);


ALTER TABLE mb2data.gensam OWNER TO gozdovi;

--
-- Name: _gensam; Type: VIEW; Schema: mb2data; Owner: gozdovi
--

CREATE VIEW mb2data._gensam AS
 SELECT gs.id,
    gs._location,
    gs._location_data,
    gs.sample_code,
    gs.second_lab_code,
    gs._sample_entry_clerk_uid,
    gs.study,
    gs._data_quality,
    gs.lab,
    gs._sample_collection_method,
    gs._sample_type,
    gs._notes,
    gs._notes_to_lab,
    gs.animal_ref,
    gs.date_record_created,
    gs.date_record_modified,
    gs.event_date,
    gs.event_time,
    gs._batch_id,
    gs._species_name,
    gs._licence_name,
    public.st_asgeojson(gs._location) AS geom
   FROM mb2data.gensam gs;


ALTER TABLE mb2data._gensam OWNER TO gozdovi;

--
-- Name: _locations; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data._locations (
    id bigint NOT NULL,
    location_accuracy integer,
    geom public.geometry NOT NULL
);


ALTER TABLE mb2data._locations OWNER TO gozdovi;

--
-- Name: _locations_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data._locations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data._locations_id_seq OWNER TO gozdovi;

--
-- Name: _locations_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data._locations_id_seq OWNED BY mb2data._locations.id;


--
-- Name: signs_of_presence_module; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.signs_of_presence_module (
    id integer NOT NULL,
    _species_name integer NOT NULL,
    _licence_name integer NOT NULL,
    _uname integer NOT NULL,
    event_date date NOT NULL,
    _location_reference integer NOT NULL,
    sighting_time time without time zone,
    data_quality integer,
    sign_of_presence integer NOT NULL,
    individual_name integer,
    genetic_analysis integer,
    genetic_sample_id integer,
    photos jsonb,
    media_quality integer,
    _batch_id integer
);


ALTER TABLE mb2data.signs_of_presence_module OWNER TO gozdovi;

--
-- Name: _signs_of_presence_module; Type: VIEW; Schema: mb2data; Owner: gozdovi
--

CREATE VIEW mb2data._signs_of_presence_module AS
 SELECT m.id,
    m._species_name,
    m._licence_name,
    m._uname,
    m.event_date,
    m._location_reference,
    m.sighting_time,
    m.data_quality,
    m.sign_of_presence,
    m.individual_name,
    m.genetic_analysis,
    m.genetic_sample_id,
    m.photos,
    m.media_quality,
    m._batch_id,
    public.st_asgeojson(_loc.geom) AS geom
   FROM mb2data.signs_of_presence_module m,
    mb2data._locations _loc
  WHERE (_loc.id = m._location_reference);


ALTER TABLE mb2data._signs_of_presence_module OWNER TO gozdovi;

--
-- Name: sop; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.sop (
    id integer NOT NULL,
    _species_name integer,
    _licence_name integer,
    _uname integer,
    event_date date,
    _batch_id integer,
    event_time time without time zone,
    _data_quality integer,
    _animals_number integer DEFAULT 1,
    _juvenile_number integer,
    individual_name integer,
    _genetics jsonb,
    _gps_colar_id text,
    _sign_of_presence integer,
    _marking_object integer,
    _prey_species integer,
    _photos jsonb,
    _notes text,
    _location public.geometry,
    _location_data jsonb
);


ALTER TABLE mb2data.sop OWNER TO gozdovi;

--
-- Name: _sop; Type: VIEW; Schema: mb2data; Owner: gozdovi
--

CREATE VIEW mb2data._sop AS
 SELECT sop.id,
    sop._species_name,
    sop._licence_name,
    sop._uname,
    sop.event_date,
    sop._batch_id,
    sop.event_time,
    sop._data_quality,
    sop._animals_number,
    sop._juvenile_number,
    sop.individual_name,
    sop._genetics,
    sop._gps_colar_id,
    sop._sign_of_presence,
    sop._marking_object,
    sop._prey_species,
    sop._photos,
    sop._notes,
    sop._location,
    sop._location_data,
    public.st_asgeojson(sop._location) AS geom
   FROM mb2data.sop;


ALTER TABLE mb2data._sop OWNER TO gozdovi;

--
-- Name: camelot_sources; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.camelot_sources (
    id integer NOT NULL,
    camelot_source_name text NOT NULL,
    url text NOT NULL,
    camelot_last_update date,
    _licence_name integer NOT NULL
);


ALTER TABLE mb2data.camelot_sources OWNER TO gozdovi;

--
-- Name: camelot_sources_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.camelot_sources_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.camelot_sources_id_seq OWNER TO gozdovi;

--
-- Name: camelot_sources_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.camelot_sources_id_seq OWNED BY mb2data.camelot_sources.id;


--
-- Name: ct_cameras; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.ct_cameras (
    id integer NOT NULL,
    camelot_id integer,
    camelot_camera_id integer,
    camera_name text NOT NULL,
    camera_make integer,
    camera_model integer,
    _batch_id integer,
    _licence_name integer
);


ALTER TABLE mb2data.ct_cameras OWNER TO gozdovi;

--
-- Name: cameras_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.cameras_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.cameras_id_seq OWNER TO gozdovi;

--
-- Name: cameras_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.cameras_id_seq OWNED BY mb2data.ct_cameras.id;


--
-- Name: cnt_contacts; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.cnt_contacts (
    id integer NOT NULL,
    _cnt_vrsta_kontakta integer,
    _hunting_ground integer,
    _luo integer,
    _full_name text,
    _phone text,
    _email text,
    _street text,
    _house_number text,
    _post_number integer,
    _send_mail boolean DEFAULT true
);


ALTER TABLE mb2data.cnt_contacts OWNER TO gozdovi;

--
-- Name: cnt_contacts_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.cnt_contacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.cnt_contacts_id_seq OWNER TO gozdovi;

--
-- Name: cnt_contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.cnt_contacts_id_seq OWNED BY mb2data.cnt_contacts.id;


--
-- Name: cnt_estimations; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.cnt_estimations (
    id integer NOT NULL,
    monitoring_id integer NOT NULL,
    _cnt_lov_koda integer,
    cnt_est_bear integer,
    cnt_est_bear_leading_female_cubs0 integer,
    cnt_est_bear_leading_female_cubs1 integer,
    cnt_est_medv_opombe text,
    cnt_est_volk_prisotnost boolean,
    cnt_est_volk_viden boolean,
    cnt_est_volk_sledi boolean,
    cnt_est_volk_plen boolean,
    cnt_est_volk_iztrebek boolean,
    cnt_est_volk_foto boolean,
    cnt_est_volk_drugo text,
    cnt_est_volk_velikost_tropa text,
    cnt_est_volk_opombe text,
    cnt_est_ris_prisotnost boolean,
    cnt_est_ris_rednost boolean,
    cnt_est_ris_viden boolean,
    cnt_est_ris_sledi boolean,
    cnt_est_ris_plen boolean,
    cnt_est_ris_iztrebek boolean,
    cnt_est_ris_foto boolean,
    cnt_est_ris_drugo text,
    cnt_est_ris_opombe text
);


ALTER TABLE mb2data.cnt_estimations OWNER TO gozdovi;

--
-- Name: cnt_estimations_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.cnt_estimations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.cnt_estimations_id_seq OWNER TO gozdovi;

--
-- Name: cnt_estimations_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.cnt_estimations_id_seq OWNED BY mb2data.cnt_estimations.id;


--
-- Name: cnt_monitoring; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.cnt_monitoring (
    id integer NOT NULL,
    _vrsta_opazovanja integer,
    _start_date date,
    _end_date date,
    _notes text
);


ALTER TABLE mb2data.cnt_monitoring OWNER TO gozdovi;

--
-- Name: cnt_monitoring_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.cnt_monitoring_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.cnt_monitoring_id_seq OWNER TO gozdovi;

--
-- Name: cnt_monitoring_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.cnt_monitoring_id_seq OWNED BY mb2data.cnt_monitoring.id;


--
-- Name: cnt_observation_reports; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.cnt_observation_reports (
    id integer NOT NULL,
    monitoring_id integer NOT NULL,
    _cnt_location_id integer,
    _cnt_camera_trap boolean DEFAULT false,
    _cnt_all integer,
    _cnt_leading_female_cubs0 integer,
    _cnt_leading_female_cubs1 integer,
    _cnt_leading_female integer,
    _cnt_cubs0_with_leading_female integer,
    _cnt_cubs1_with_leading_female integer,
    _cnt_cubs0 integer,
    _cnt_cubs1 integer,
    _cnt_cubs integer,
    _cnt_remaining integer,
    date_record_created timestamp without time zone,
    date_record_modified timestamp without time zone
);


ALTER TABLE mb2data.cnt_observation_reports OWNER TO gozdovi;

--
-- Name: cnt_observation_reports_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.cnt_observation_reports_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.cnt_observation_reports_id_seq OWNER TO gozdovi;

--
-- Name: cnt_observation_reports_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.cnt_observation_reports_id_seq OWNED BY mb2data.cnt_observation_reports.id;


--
-- Name: cnt_observations; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.cnt_observations (
    id integer NOT NULL,
    observations_report_id integer NOT NULL,
    _cnt_observation_time_start time without time zone,
    _cnt_observation_time_end time without time zone,
    _cnt_all integer,
    _cnt_leading_female integer,
    _cnt_cubs0 integer,
    _cnt_cubs1 integer,
    date_record_created timestamp without time zone,
    date_record_modified timestamp without time zone,
    _uname integer
);


ALTER TABLE mb2data.cnt_observations OWNER TO gozdovi;

--
-- Name: cnt_observations_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.cnt_observations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.cnt_observations_id_seq OWNER TO gozdovi;

--
-- Name: cnt_observations_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.cnt_observations_id_seq OWNED BY mb2data.cnt_observations.id;


--
-- Name: cnt_permanent_spots; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.cnt_permanent_spots (
    id integer NOT NULL,
    _location_data jsonb,
    _local_name text,
    _cnt_permanent_spot_code text,
    _cnt_active boolean DEFAULT true,
    _location public.geometry
);


ALTER TABLE mb2data.cnt_permanent_spots OWNER TO gozdovi;

--
-- Name: cnt_permanent_spots_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.cnt_permanent_spots_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.cnt_permanent_spots_id_seq OWNER TO gozdovi;

--
-- Name: cnt_permanent_spots_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.cnt_permanent_spots_id_seq OWNED BY mb2data.cnt_permanent_spots.id;


--
-- Name: cnt_view_permanent_spots; Type: VIEW; Schema: mb2data; Owner: gozdovi
--

CREATE VIEW mb2data.cnt_view_permanent_spots AS
 SELECT cps.id,
    cps._location_data,
    cps._local_name,
    cps._cnt_permanent_spot_code,
    cps._cnt_active,
    cps._location,
    public.st_asgeojson(cps._location) AS geom
   FROM mb2data.cnt_permanent_spots cps;


ALTER TABLE mb2data.cnt_view_permanent_spots OWNER TO gozdovi;

--
-- Name: ct_locations; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.ct_locations (
    id bigint NOT NULL,
    location_accuracy integer,
    geom public.geometry NOT NULL
);


ALTER TABLE mb2data.ct_locations OWNER TO gozdovi;

--
-- Name: ct_locations_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.ct_locations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.ct_locations_id_seq OWNER TO gozdovi;

--
-- Name: ct_locations_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.ct_locations_id_seq OWNED BY mb2data.ct_locations.id;


--
-- Name: ct_sessions; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.ct_sessions (
    id integer NOT NULL,
    camelot_session_id integer,
    trap_station_name integer NOT NULL,
    survey_name integer NOT NULL,
    camera_name integer NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    camelot_id integer,
    _batch_id integer
);


ALTER TABLE mb2data.ct_sessions OWNER TO gozdovi;

--
-- Name: ct_sites; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.ct_sites (
    id integer NOT NULL,
    camelot_site_id integer,
    site_name text NOT NULL,
    area real,
    camelot_id integer,
    _batch_id integer,
    _licence_name integer
);


ALTER TABLE mb2data.ct_sites OWNER TO gozdovi;

--
-- Name: ct_surveys; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.ct_surveys (
    id integer NOT NULL,
    camelot_id integer,
    camelot_survey_id integer,
    survey_name text NOT NULL,
    survey_description integer,
    _batch_id integer,
    _licence_name integer
);


ALTER TABLE mb2data.ct_surveys OWNER TO gozdovi;

--
-- Name: ct_view_file_properties; Type: VIEW; Schema: mb2data; Owner: gozdovi
--

CREATE VIEW mb2data.ct_view_file_properties AS
 SELECT DISTINCT ON (fp.file_hash) fp.file_hash,
    fp.properties
   FROM mb2data.ct spm,
    mbase2.file_properties fp
  WHERE jsonb_exists(spm.photos, (fp.file_hash)::text);


ALTER TABLE mb2data.ct_view_file_properties OWNER TO gozdovi;

--
-- Name: ct_view_media; Type: VIEW; Schema: mb2data; Owner: gozdovi
--

CREATE VIEW mb2data.ct_view_media AS
 SELECT u.file_hash,
    u.properties,
    spm.id,
    spm._species_name,
    spm._licence_name,
    spm._uname,
    spm.event_date,
    spm.camelot_sighting_id,
    spm.photos,
    spm.session_name,
    spm.sighting_count,
    spm.sex,
    spm.individual_name,
    spm.life_stage,
    spm."position",
    spm.hair_trap,
    spm.notes,
    spm.event_time,
    spm.trap_station_name,
    spm._batch_id,
    spm.__photo
   FROM (mbase2.file_properties u
     LEFT JOIN ( SELECT ct.id,
            ct._species_name,
            ct._licence_name,
            ct._uname,
            ct.event_date,
            ct.camelot_sighting_id,
            ct.photos,
            ct.session_name,
            ct.sighting_quantity AS sighting_count,
            ct.sex,
            ct.individual_name,
            ct.life_stage,
            ct."position",
            ct.hair_trap,
            ct.notes,
            ct.event_time,
            ct.trap_station_name,
            ct._batch_id,
            jsonb_array_elements_text(ct.photos) AS __photo
           FROM mb2data.ct) spm ON ((spm.__photo = (u.file_hash)::text)));


ALTER TABLE mb2data.ct_view_media OWNER TO gozdovi;

--
-- Name: ct_view_trap_stations; Type: VIEW; Schema: mb2data; Owner: gozdovi
--

CREATE VIEW mb2data.ct_view_trap_stations AS
 SELECT m.id,
    m.camelot_trap_station_id,
    m.trap_station_name,
    m.site_name,
    m._location_reference,
    m.camelot_id,
    public.st_asgeojson(_loc.geom) AS geom
   FROM mb2data.ct_trap_stations m,
    mb2data.ct_locations _loc
  WHERE (_loc.id = m._location_reference);


ALTER TABLE mb2data.ct_view_trap_stations OWNER TO gozdovi;

--
-- Name: dmg; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.dmg (
    id integer NOT NULL,
    _claim_status smallint DEFAULT 0 NOT NULL,
    _claim_id text,
    _uid integer NOT NULL,
    _deputy integer,
    _affectees jsonb,
    _culprit integer,
    _culprit_signs jsonb,
    _skodni_objekti jsonb,
    _deputy_notes text,
    _affectee_notes text,
    _affectee_claim_notes text,
    _attachments jsonb,
    _dmg_start_date date,
    _dmg_end_date date,
    _dmg_noticed_date date,
    _dmg_examination_date date,
    _genetic_samples jsonb,
    _selected_culprit text,
    date_record_created timestamp without time zone DEFAULT now(),
    date_record_modified timestamp without time zone,
    _note character varying,
    __indirect_counter integer DEFAULT 0,
    _dmg_date_type integer,
    _others jsonb,
    _expected_event integer,
    _location public.geometry,
    _location_data jsonb,
    _licence_name integer,
    CONSTRAINT check__affectees CHECK ((NOT ((_claim_status > 0) AND (_affectees IS NULL)))),
    CONSTRAINT check__claim_id CHECK ((NOT ((_claim_status > 0) AND (_claim_id IS NULL)))),
    CONSTRAINT check__culprit CHECK ((NOT ((_claim_status > 0) AND (_culprit IS NULL)))),
    CONSTRAINT check__culprit_signs CHECK ((NOT ((_claim_status > 0) AND (_culprit_signs IS NULL)))),
    CONSTRAINT check__deputy CHECK ((NOT ((_claim_status > 0) AND (_deputy IS NULL)))),
    CONSTRAINT check__dmg_end_date CHECK ((NOT ((_claim_status > 0) AND (_dmg_end_date IS NULL)))),
    CONSTRAINT check__dmg_examination_date CHECK ((NOT ((_claim_status > 0) AND (_dmg_examination_date IS NULL)))),
    CONSTRAINT check__dmg_noticed_date CHECK ((NOT ((_claim_status > 0) AND (_dmg_noticed_date IS NULL)))),
    CONSTRAINT check__dmg_start_date CHECK ((NOT ((_claim_status > 0) AND (_dmg_start_date IS NULL)))),
    CONSTRAINT check__expected_event CHECK ((NOT ((_claim_status > 0) AND (_expected_event IS NULL)))),
    CONSTRAINT check__skodni_objekti CHECK ((NOT ((_claim_status > 0) AND (_skodni_objekti IS NULL))))
);


ALTER TABLE mb2data.dmg OWNER TO gozdovi;

--
-- Name: dmg_affectees; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.dmg_affectees (
    id integer NOT NULL,
    _full_name text NOT NULL,
    _street text NOT NULL,
    _house_number text NOT NULL,
    _country integer NOT NULL,
    _post_number integer NOT NULL,
    _phone text NOT NULL,
    _email text,
    _citizenship integer,
    _tax_id text,
    _iban text,
    _foreign_post text DEFAULT ''::text
);


ALTER TABLE mb2data.dmg_affectees OWNER TO gozdovi;

--
-- Name: dmg_affectees_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.dmg_affectees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.dmg_affectees_id_seq OWNER TO gozdovi;

--
-- Name: dmg_affectees_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.dmg_affectees_id_seq OWNED BY mb2data.dmg_affectees.id;


--
-- Name: dmg_agreements; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.dmg_agreements (
    id integer NOT NULL,
    _claim_id integer NOT NULL,
    _affectee integer NOT NULL,
    _data jsonb,
    _completed boolean DEFAULT false
);


ALTER TABLE mb2data.dmg_agreements OWNER TO gozdovi;

--
-- Name: dmg_agreements_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.dmg_agreements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.dmg_agreements_id_seq OWNER TO gozdovi;

--
-- Name: dmg_agreements_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.dmg_agreements_id_seq OWNED BY mb2data.dmg_agreements.id;


--
-- Name: dmg_batches; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.dmg_batches (
    id integer NOT NULL,
    _species_name integer,
    _licence_name integer,
    _uname integer,
    event_date date,
    _batch_id integer,
    _culprit integer,
    _location_data jsonb,
    _dmg_object integer,
    _dmg_object_unit integer,
    _dmg_object_quantity real
);


ALTER TABLE mb2data.dmg_batches OWNER TO gozdovi;

--
-- Name: dmg_batches_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.dmg_batches_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.dmg_batches_id_seq OWNER TO gozdovi;

--
-- Name: dmg_batches_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.dmg_batches_id_seq OWNED BY mb2data.dmg_batches.id;


--
-- Name: dmg_cenik; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.dmg_cenik (
    id integer NOT NULL,
    key_kategorija character varying NOT NULL,
    key_podkategorija character varying,
    key_objekt character varying NOT NULL,
    cenik jsonb
);


ALTER TABLE mb2data.dmg_cenik OWNER TO gozdovi;

--
-- Name: dmg_cenik_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.dmg_cenik_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.dmg_cenik_id_seq OWNER TO gozdovi;

--
-- Name: dmg_cenik_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.dmg_cenik_id_seq OWNED BY mb2data.dmg_cenik.id;


--
-- Name: dmg_claims_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.dmg_claims_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.dmg_claims_id_seq OWNER TO gozdovi;

--
-- Name: dmg_claims_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.dmg_claims_id_seq OWNED BY mb2data.dmg.id;


--
-- Name: dmg_culprits; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.dmg_culprits (
    id integer NOT NULL,
    key_item character varying NOT NULL,
    key_parent character varying,
    key_mbase2 character varying
);


ALTER TABLE mb2data.dmg_culprits OWNER TO gozdovi;

--
-- Name: dmg_culprits_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.dmg_culprits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.dmg_culprits_id_seq OWNER TO gozdovi;

--
-- Name: dmg_culprits_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.dmg_culprits_id_seq OWNED BY mb2data.dmg_culprits.id;


--
-- Name: dmg_deputies; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.dmg_deputies (
    id integer NOT NULL,
    _uname integer NOT NULL,
    _kadrovska_koda text,
    _oe_id integer,
    CONSTRAINT dmg_deputies__kadrovska_koda_check CHECK ((upper(_kadrovska_koda) = _kadrovska_koda)),
    CONSTRAINT dmg_deputies__kadrovska_koda_check1 CHECK ((upper(_kadrovska_koda) = _kadrovska_koda)),
    CONSTRAINT dmg_deputies__kadrovska_koda_check10 CHECK ((upper(_kadrovska_koda) = _kadrovska_koda)),
    CONSTRAINT dmg_deputies__kadrovska_koda_check11 CHECK ((upper(_kadrovska_koda) = _kadrovska_koda)),
    CONSTRAINT dmg_deputies__kadrovska_koda_check2 CHECK ((upper(_kadrovska_koda) = _kadrovska_koda)),
    CONSTRAINT dmg_deputies__kadrovska_koda_check3 CHECK ((upper(_kadrovska_koda) = _kadrovska_koda)),
    CONSTRAINT dmg_deputies__kadrovska_koda_check4 CHECK ((upper(_kadrovska_koda) = _kadrovska_koda)),
    CONSTRAINT dmg_deputies__kadrovska_koda_check5 CHECK ((upper(_kadrovska_koda) = _kadrovska_koda)),
    CONSTRAINT dmg_deputies__kadrovska_koda_check6 CHECK ((upper(_kadrovska_koda) = _kadrovska_koda)),
    CONSTRAINT dmg_deputies__kadrovska_koda_check7 CHECK ((upper(_kadrovska_koda) = _kadrovska_koda)),
    CONSTRAINT dmg_deputies__kadrovska_koda_check8 CHECK ((upper(_kadrovska_koda) = _kadrovska_koda)),
    CONSTRAINT dmg_deputies__kadrovska_koda_check9 CHECK ((upper(_kadrovska_koda) = _kadrovska_koda))
);


ALTER TABLE mb2data.dmg_deputies OWNER TO gozdovi;

--
-- Name: dmg_deputies_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.dmg_deputies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.dmg_deputies_id_seq OWNER TO gozdovi;

--
-- Name: dmg_deputies_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.dmg_deputies_id_seq OWNED BY mb2data.dmg_deputies.id;


--
-- Name: dmg_nacini_varovanja; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.dmg_nacini_varovanja (
    id integer NOT NULL,
    _nacin_varovanja character varying NOT NULL,
    _culprit_key character varying NOT NULL
);


ALTER TABLE mb2data.dmg_nacini_varovanja OWNER TO gozdovi;

--
-- Name: dmg_nacini_varovanja_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.dmg_nacini_varovanja_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.dmg_nacini_varovanja_id_seq OWNER TO gozdovi;

--
-- Name: dmg_nacini_varovanja_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.dmg_nacini_varovanja_id_seq OWNED BY mb2data.dmg_nacini_varovanja.id;


--
-- Name: dmg_others; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.dmg_others (
    id integer NOT NULL,
    _full_name text NOT NULL,
    _street text NOT NULL,
    _house_number text NOT NULL,
    _country integer NOT NULL,
    _post_number integer NOT NULL,
    _foreign_post text DEFAULT ''::text,
    _phone text NOT NULL,
    _email text,
    CONSTRAINT check__foreign_post CHECK ((NOT ((_post_number = '-1'::integer) AND (_foreign_post IS NULL))))
);


ALTER TABLE mb2data.dmg_others OWNER TO gozdovi;

--
-- Name: dmg_others_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.dmg_others_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.dmg_others_id_seq OWNER TO gozdovi;

--
-- Name: dmg_others_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.dmg_others_id_seq OWNED BY mb2data.dmg_others.id;


--
-- Name: dmg_skodni_objekti; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.dmg_skodni_objekti (
    id integer NOT NULL,
    key_item character varying NOT NULL,
    key_parent character varying,
    key_mbase2 character varying,
    cenik jsonb,
    navedi boolean DEFAULT false
);


ALTER TABLE mb2data.dmg_skodni_objekti OWNER TO gozdovi;

--
-- Name: dmg_skodni_objekti_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.dmg_skodni_objekti_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.dmg_skodni_objekti_id_seq OWNER TO gozdovi;

--
-- Name: dmg_skodni_objekti_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.dmg_skodni_objekti_id_seq OWNED BY mb2data.dmg_skodni_objekti.id;


--
-- Name: dmg_uac; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.dmg_uac (
    id integer NOT NULL,
    _uname integer NOT NULL,
    _user_group integer
);


ALTER TABLE mb2data.dmg_uac OWNER TO gozdovi;

--
-- Name: dmg_uac_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.dmg_uac_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.dmg_uac_id_seq OWNER TO gozdovi;

--
-- Name: dmg_uac_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.dmg_uac_id_seq OWNED BY mb2data.dmg_uac.id;


--
-- Name: dmg_urne_postavke; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.dmg_urne_postavke (
    id integer NOT NULL,
    label character varying NOT NULL,
    enota character varying NOT NULL,
    cena real
);


ALTER TABLE mb2data.dmg_urne_postavke OWNER TO gozdovi;

--
-- Name: dmg_urne_postavke_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.dmg_urne_postavke_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.dmg_urne_postavke_id_seq OWNER TO gozdovi;

--
-- Name: dmg_urne_postavke_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.dmg_urne_postavke_id_seq OWNED BY mb2data.dmg_urne_postavke.id;


--
-- Name: dmg_view_affectees; Type: VIEW; Schema: mb2data; Owner: gozdovi
--

CREATE VIEW mb2data.dmg_view_affectees AS
 SELECT a.id,
    a._full_name,
    a._phone,
    a._street,
    a._house_number,
    a._country,
    a._post_number,
    ((p._post_number || ' '::text) || p._post_name) AS _post,
    a._foreign_post,
    a._tax_id,
    a._iban,
    a._citizenship
   FROM mb2data.dmg_affectees a,
    mbase2.poste p
  WHERE (a._post_number = p._post_number);


ALTER TABLE mb2data.dmg_view_affectees OWNER TO gozdovi;

--
-- Name: dmg_view_claims; Type: VIEW; Schema: mb2data; Owner: gozdovi
--

CREATE VIEW mb2data.dmg_view_claims AS
 SELECT fd.id,
    fd._claim_status,
    fd._claim_id,
    fd._uid,
    fd._deputy,
    fd._affectees,
    fd._culprit,
    fd._culprit_signs,
    fd._skodni_objekti,
    fd._deputy_notes,
    fd._affectee_notes,
    fd._affectee_claim_notes,
    fd._attachments,
    fd._dmg_start_date,
    fd._dmg_end_date,
    fd._dmg_noticed_date,
    fd._dmg_examination_date,
    fd._genetic_samples,
    fd._selected_culprit,
    fd.date_record_created,
    fd.date_record_modified,
    fd._note,
    fd.__indirect_counter,
    fd._dmg_date_type,
    fd._others,
    fd._expected_event,
    fd._location,
    fd._location_data,
    u._uname
   FROM mb2data.dmg fd,
    mbase2._users u
  WHERE (fd._uid = u._uid);


ALTER TABLE mb2data.dmg_view_claims OWNER TO gozdovi;

--
-- Name: dmg_view_culprits; Type: VIEW; Schema: mb2data; Owner: gozdovi
--

CREATE VIEW mb2data.dmg_view_culprits AS
 SELECT dc.id,
    dc.key_item,
    dc.key_parent,
    dc.key_mbase2,
    clo1.id AS _item_id,
    clo2.id AS _mbase2_id
   FROM ((mb2data.dmg_culprits dc
     LEFT JOIN mbase2.code_list_options clo1 ON (((dc.key_item)::text = (clo1.key)::text)))
     LEFT JOIN mbase2.code_list_options clo2 ON (((dc.key_mbase2)::text = (clo2.key)::text)));


ALTER TABLE mb2data.dmg_view_culprits OWNER TO gozdovi;

--
-- Name: dmg_view_deputies; Type: VIEW; Schema: mb2data; Owner: gozdovi
--

CREATE VIEW mb2data.dmg_view_deputies AS
 SELECT d.id,
    u._uid,
    u._uname,
    oe._oe_ime,
    oe._oe_id,
    d._kadrovska_koda,
    u._ime,
    u._priimek,
    u._phone,
    u._email
   FROM mb2data.dmg_deputies d,
    mbase2.obmocne_enote_zgs oe,
    mbase2._users u
  WHERE ((d._oe_id = oe.id) AND (d._uname = u._uid));


ALTER TABLE mb2data.dmg_view_deputies OWNER TO gozdovi;

--
-- Name: dmg_view_nacini_varovanja; Type: VIEW; Schema: mb2data; Owner: gozdovi
--

CREATE VIEW mb2data.dmg_view_nacini_varovanja AS
 SELECT nv._nacin_varovanja,
    nv._culprit_key,
    clo.id AS _culprit_key_id
   FROM mbase2.code_list_options clo,
    mb2data.dmg_nacini_varovanja nv
  WHERE ((clo.key)::text = (nv._culprit_key)::text);


ALTER TABLE mb2data.dmg_view_nacini_varovanja OWNER TO gozdovi;

--
-- Name: dmg_view_others; Type: VIEW; Schema: mb2data; Owner: gozdovi
--

CREATE VIEW mb2data.dmg_view_others AS
 SELECT a.id,
    a._full_name,
    a._phone,
    a._street,
    a._house_number,
    a._country,
    a._post_number,
    ((p._post_number || ' '::text) || p._post_name) AS _post,
    a._foreign_post
   FROM mb2data.dmg_others a,
    mbase2.poste p
  WHERE (a._post_number = p._post_number);


ALTER TABLE mb2data.dmg_view_others OWNER TO gozdovi;

--
-- Name: dmg_view_uac; Type: VIEW; Schema: mb2data; Owner: gozdovi
--

CREATE VIEW mb2data.dmg_view_uac AS
 SELECT u._uid,
    u._uname
   FROM mb2data.dmg_uac d,
    mbase2._users u
  WHERE (d._uname = u._uid);


ALTER TABLE mb2data.dmg_view_uac OWNER TO gozdovi;

--
-- Name: dmg_znaki_povzrocitelja; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.dmg_znaki_povzrocitelja (
    id integer NOT NULL,
    _dmg_znak_opis text NOT NULL,
    _species_keys jsonb
);


ALTER TABLE mb2data.dmg_znaki_povzrocitelja OWNER TO gozdovi;

--
-- Name: dmg_znaki_povzrocitelja_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.dmg_znaki_povzrocitelja_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.dmg_znaki_povzrocitelja_id_seq OWNER TO gozdovi;

--
-- Name: dmg_znaki_povzrocitelja_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.dmg_znaki_povzrocitelja_id_seq OWNED BY mb2data.dmg_znaki_povzrocitelja.id;


--
-- Name: genetic_samples_table; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.genetic_samples_table (
    id integer NOT NULL,
    genetic_sample_id text NOT NULL
);


ALTER TABLE mb2data.genetic_samples_table OWNER TO gozdovi;

--
-- Name: genetic_samples_table_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.genetic_samples_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.genetic_samples_table_id_seq OWNER TO gozdovi;

--
-- Name: genetic_samples_table_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.genetic_samples_table_id_seq OWNED BY mb2data.genetic_samples_table.id;


--
-- Name: gensam_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.gensam_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.gensam_id_seq OWNER TO gozdovi;

--
-- Name: gensam_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.gensam_id_seq OWNED BY mb2data.gensam.id;


--
-- Name: gps_colars_table; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.gps_colars_table (
    id integer NOT NULL,
    gps_colar_id text NOT NULL
);


ALTER TABLE mb2data.gps_colars_table OWNER TO gozdovi;

--
-- Name: gps_colars_table_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.gps_colars_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.gps_colars_table_id_seq OWNER TO gozdovi;

--
-- Name: gps_colars_table_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.gps_colars_table_id_seq OWNED BY mb2data.gps_colars_table.id;


--
-- Name: individuals; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.individuals (
    id integer NOT NULL,
    individual_name text NOT NULL,
    sex integer,
    _species_name integer NOT NULL
);


ALTER TABLE mb2data.individuals OWNER TO gozdovi;

--
-- Name: individuals_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.individuals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.individuals_id_seq OWNER TO gozdovi;

--
-- Name: individuals_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.individuals_id_seq OWNED BY mb2data.individuals.id;


--
-- Name: interventions; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.interventions (
    id integer NOT NULL,
    _species_name integer,
    _licence_name integer,
    _uname integer,
    event_date date,
    _batch_id integer,
    _location public.geometry,
    notes text,
    _data jsonb,
    date_record_created timestamp without time zone,
    date_record_modified timestamp without time zone,
    _completed boolean DEFAULT false NOT NULL,
    _location_data jsonb
);


ALTER TABLE mb2data.interventions OWNER TO gozdovi;

--
-- Name: interventions_events; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.interventions_events (
    id integer NOT NULL,
    intervention_id integer NOT NULL,
    intervention_caller integer,
    intervention_measures jsonb,
    intervention_reason integer,
    intervention_outcome integer,
    chief_interventor integer,
    interventors jsonb,
    notes text,
    situation_notes text,
    intervention_call_timestamp timestamp without time zone,
    intervention_start_timestamp timestamp without time zone,
    intervention_end_timestamp timestamp without time zone,
    _data jsonb,
    intervention_event_details jsonb,
    date_record_created timestamp without time zone,
    date_record_modified timestamp without time zone,
    _uid integer
);


ALTER TABLE mb2data.interventions_events OWNER TO gozdovi;

--
-- Name: interventions_events_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.interventions_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.interventions_events_id_seq OWNER TO gozdovi;

--
-- Name: interventions_events_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.interventions_events_id_seq OWNED BY mb2data.interventions_events.id;


--
-- Name: interventions_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.interventions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.interventions_id_seq OWNER TO gozdovi;

--
-- Name: interventions_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.interventions_id_seq OWNED BY mb2data.interventions.id;


--
-- Name: interventions_interventors; Type: TABLE; Schema: mb2data; Owner: gozdovi
--

CREATE TABLE mb2data.interventions_interventors (
    id integer NOT NULL,
    _uname__uid integer
);


ALTER TABLE mb2data.interventions_interventors OWNER TO gozdovi;

--
-- Name: interventions_interventors_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.interventions_interventors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.interventions_interventors_id_seq OWNER TO gozdovi;

--
-- Name: interventions_interventors_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.interventions_interventors_id_seq OWNED BY mb2data.interventions_interventors.id;


--
-- Name: interventions_view; Type: VIEW; Schema: mb2data; Owner: gozdovi
--

CREATE VIEW mb2data.interventions_view AS
SELECT
    NULL::integer AS id,
    NULL::text AS geom,
    NULL::text AS notes,
    NULL::timestamp without time zone AS date_record_created,
    NULL::timestamp without time zone AS date_record_modified,
    NULL::integer AS _species_name,
    NULL::integer AS _uname,
    NULL::timestamp without time zone AS intervention_call_timestamp_min,
    NULL::timestamp without time zone AS intervention_call_timestamp_max,
    NULL::timestamp without time zone AS intervention_start_timestamp_min,
    NULL::bigint AS uncompleted_interventions,
    NULL::bigint AS intervention_events_count,
    NULL::json AS intervention_caller,
    NULL::json AS intervention_reason,
    NULL::json AS intervention_measures,
    NULL::json AS intervention_outcome,
    NULL::json AS chief_interventor,
    NULL::jsonb AS _data,
    NULL::boolean AS _completed,
    NULL::jsonb AS _location_data;


ALTER TABLE mb2data.interventions_view OWNER TO gozdovi;

--
-- Name: interventions_view_interventors; Type: VIEW; Schema: mb2data; Owner: gozdovi
--

CREATE VIEW mb2data.interventions_view_interventors AS
 SELECT u._uid,
    u._uname
   FROM mbase2._users u,
    mb2data.interventions_interventors ii
  WHERE (ii._uname__uid = u._uid);


ALTER TABLE mb2data.interventions_view_interventors OWNER TO gozdovi;

--
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.sessions_id_seq OWNER TO gozdovi;

--
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.sessions_id_seq OWNED BY mb2data.ct_sessions.id;


--
-- Name: signs_of_presence_module_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.signs_of_presence_module_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.signs_of_presence_module_id_seq OWNER TO gozdovi;

--
-- Name: signs_of_presence_module_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.signs_of_presence_module_id_seq OWNED BY mb2data.signs_of_presence_module.id;


--
-- Name: sites_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.sites_id_seq OWNER TO gozdovi;

--
-- Name: sites_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.sites_id_seq OWNED BY mb2data.ct_sites.id;


--
-- Name: sop_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.sop_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.sop_id_seq OWNER TO gozdovi;

--
-- Name: sop_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.sop_id_seq OWNED BY mb2data.sop.id;


--
-- Name: spm_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.spm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.spm_id_seq OWNER TO gozdovi;

--
-- Name: spm_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.spm_id_seq OWNED BY mb2data.ct.id;


--
-- Name: surveys_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.surveys_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.surveys_id_seq OWNER TO gozdovi;

--
-- Name: surveys_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.surveys_id_seq OWNED BY mb2data.ct_surveys.id;


--
-- Name: trap_stations_id_seq; Type: SEQUENCE; Schema: mb2data; Owner: gozdovi
--

CREATE SEQUENCE mb2data.trap_stations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mb2data.trap_stations_id_seq OWNER TO gozdovi;

--
-- Name: trap_stations_id_seq; Type: SEQUENCE OWNED BY; Schema: mb2data; Owner: gozdovi
--

ALTER SEQUENCE mb2data.trap_stations_id_seq OWNED BY mb2data.ct_trap_stations.id;


--
-- Name: _locations id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data._locations ALTER COLUMN id SET DEFAULT nextval('mb2data._locations_id_seq'::regclass);


--
-- Name: camelot_sources id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.camelot_sources ALTER COLUMN id SET DEFAULT nextval('mb2data.camelot_sources_id_seq'::regclass);


--
-- Name: cnt_contacts id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.cnt_contacts ALTER COLUMN id SET DEFAULT nextval('mb2data.cnt_contacts_id_seq'::regclass);


--
-- Name: cnt_estimations id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.cnt_estimations ALTER COLUMN id SET DEFAULT nextval('mb2data.cnt_estimations_id_seq'::regclass);


--
-- Name: cnt_monitoring id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.cnt_monitoring ALTER COLUMN id SET DEFAULT nextval('mb2data.cnt_monitoring_id_seq'::regclass);


--
-- Name: cnt_observation_reports id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.cnt_observation_reports ALTER COLUMN id SET DEFAULT nextval('mb2data.cnt_observation_reports_id_seq'::regclass);


--
-- Name: cnt_observations id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.cnt_observations ALTER COLUMN id SET DEFAULT nextval('mb2data.cnt_observations_id_seq'::regclass);


--
-- Name: cnt_permanent_spots id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.cnt_permanent_spots ALTER COLUMN id SET DEFAULT nextval('mb2data.cnt_permanent_spots_id_seq'::regclass);


--
-- Name: ct id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct ALTER COLUMN id SET DEFAULT nextval('mb2data.spm_id_seq'::regclass);


--
-- Name: ct_cameras id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_cameras ALTER COLUMN id SET DEFAULT nextval('mb2data.cameras_id_seq'::regclass);


--
-- Name: ct_locations id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_locations ALTER COLUMN id SET DEFAULT nextval('mb2data.ct_locations_id_seq'::regclass);


--
-- Name: ct_sessions id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_sessions ALTER COLUMN id SET DEFAULT nextval('mb2data.sessions_id_seq'::regclass);


--
-- Name: ct_sites id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_sites ALTER COLUMN id SET DEFAULT nextval('mb2data.sites_id_seq'::regclass);


--
-- Name: ct_surveys id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_surveys ALTER COLUMN id SET DEFAULT nextval('mb2data.surveys_id_seq'::regclass);


--
-- Name: ct_trap_stations id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_trap_stations ALTER COLUMN id SET DEFAULT nextval('mb2data.trap_stations_id_seq'::regclass);


--
-- Name: dmg id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg ALTER COLUMN id SET DEFAULT nextval('mb2data.dmg_claims_id_seq'::regclass);


--
-- Name: dmg_affectees id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees ALTER COLUMN id SET DEFAULT nextval('mb2data.dmg_affectees_id_seq'::regclass);


--
-- Name: dmg_agreements id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_agreements ALTER COLUMN id SET DEFAULT nextval('mb2data.dmg_agreements_id_seq'::regclass);


--
-- Name: dmg_batches id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_batches ALTER COLUMN id SET DEFAULT nextval('mb2data.dmg_batches_id_seq'::regclass);


--
-- Name: dmg_cenik id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_cenik ALTER COLUMN id SET DEFAULT nextval('mb2data.dmg_cenik_id_seq'::regclass);


--
-- Name: dmg_culprits id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_culprits ALTER COLUMN id SET DEFAULT nextval('mb2data.dmg_culprits_id_seq'::regclass);


--
-- Name: dmg_deputies id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies ALTER COLUMN id SET DEFAULT nextval('mb2data.dmg_deputies_id_seq'::regclass);


--
-- Name: dmg_nacini_varovanja id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_nacini_varovanja ALTER COLUMN id SET DEFAULT nextval('mb2data.dmg_nacini_varovanja_id_seq'::regclass);


--
-- Name: dmg_others id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_others ALTER COLUMN id SET DEFAULT nextval('mb2data.dmg_others_id_seq'::regclass);


--
-- Name: dmg_skodni_objekti id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_skodni_objekti ALTER COLUMN id SET DEFAULT nextval('mb2data.dmg_skodni_objekti_id_seq'::regclass);


--
-- Name: dmg_uac id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_uac ALTER COLUMN id SET DEFAULT nextval('mb2data.dmg_uac_id_seq'::regclass);


--
-- Name: dmg_urne_postavke id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_urne_postavke ALTER COLUMN id SET DEFAULT nextval('mb2data.dmg_urne_postavke_id_seq'::regclass);


--
-- Name: dmg_znaki_povzrocitelja id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_znaki_povzrocitelja ALTER COLUMN id SET DEFAULT nextval('mb2data.dmg_znaki_povzrocitelja_id_seq'::regclass);


--
-- Name: genetic_samples_table id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.genetic_samples_table ALTER COLUMN id SET DEFAULT nextval('mb2data.genetic_samples_table_id_seq'::regclass);


--
-- Name: gensam id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.gensam ALTER COLUMN id SET DEFAULT nextval('mb2data.gensam_id_seq'::regclass);


--
-- Name: gps_colars_table id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.gps_colars_table ALTER COLUMN id SET DEFAULT nextval('mb2data.gps_colars_table_id_seq'::regclass);


--
-- Name: individuals id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.individuals ALTER COLUMN id SET DEFAULT nextval('mb2data.individuals_id_seq'::regclass);


--
-- Name: interventions id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.interventions ALTER COLUMN id SET DEFAULT nextval('mb2data.interventions_id_seq'::regclass);


--
-- Name: interventions_events id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.interventions_events ALTER COLUMN id SET DEFAULT nextval('mb2data.interventions_events_id_seq'::regclass);


--
-- Name: interventions_interventors id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.interventions_interventors ALTER COLUMN id SET DEFAULT nextval('mb2data.interventions_interventors_id_seq'::regclass);


--
-- Name: signs_of_presence_module id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.signs_of_presence_module ALTER COLUMN id SET DEFAULT nextval('mb2data.signs_of_presence_module_id_seq'::regclass);


--
-- Name: sop id; Type: DEFAULT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop ALTER COLUMN id SET DEFAULT nextval('mb2data.sop_id_seq'::regclass);


--
-- Data for Name: _locations; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--



--
-- Data for Name: camelot_sources; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.camelot_sources VALUES (1, 'tomazz localhost test', 'http://localhost:5341/', NULL, 21);
INSERT INTO mb2data.camelot_sources VALUES (2, 'Camelot_ZGS', 'http://zgs51.zgs.gov.si:5341/', NULL, 21);
INSERT INTO mb2data.camelot_sources VALUES (4, 'Camelot_CRO', 'http://bela2.synology.me:5341/', NULL, 22);
INSERT INTO mb2data.camelot_sources VALUES (3, 'Camelot_PLI', 'http://127.0.0.1:5341/', NULL, 13);


--
-- Data for Name: cnt_contacts; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--



--
-- Data for Name: cnt_estimations; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.cnt_estimations VALUES (1, 4, 1018, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (2, 4, 527, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (3, 4, 513, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (4, 4, 906, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (5, 4, 1404, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (6, 4, 401, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (7, 4, 715, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (8, 4, 1503, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (9, 4, 615, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (10, 4, 1202, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (11, 4, 618, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (12, 4, 1023, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (13, 4, 1302, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (14, 4, 1019, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (15, 4, 723, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (17, 4, 828, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (19, 4, 410, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (20, 4, 408, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (24, 4, 917, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (25, 4, 810, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (26, 4, 407, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (27, 4, 607, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (28, 4, 1013, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (29, 4, 1401, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (30, 4, 506, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (31, 4, 1218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (32, 4, 725, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (34, 4, 218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (35, 4, 933, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (36, 4, 1227, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (37, 4, 330, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (38, 4, 1517, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (39, 4, 518, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (40, 4, 1204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (41, 4, 416, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (42, 4, 1223, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (43, 4, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (44, 4, 1303, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (45, 4, 1511, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (46, 4, 1410, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (47, 4, 1228, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (48, 4, 421, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (49, 4, 511, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (50, 4, 1312, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (51, 4, 1524, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (52, 4, 1212, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (53, 4, 1409, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (54, 4, 1519, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (55, 4, 1005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (56, 4, 507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (57, 4, 209, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (58, 4, 1201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (59, 4, 803, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (60, 4, 1514, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (61, 4, 703, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (62, 4, 525, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (64, 4, 1516, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (65, 4, 915, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (66, 4, 217, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (67, 4, 1510, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (68, 4, 1203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (69, 4, 1211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (70, 4, 528, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (71, 4, 1002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (72, 4, 1108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (73, 4, 630, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (74, 4, 1012, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (75, 4, 816, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (76, 4, 711, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (77, 4, 601, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (78, 4, 1411, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (79, 4, 901, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (80, 4, 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (81, 4, 808, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (82, 4, 832, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (83, 4, 823, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (84, 4, 1007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (85, 4, 1308, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (86, 4, 621, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (87, 4, 427, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (88, 4, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (89, 4, 1016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (90, 4, 805, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (91, 4, 815, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (92, 4, 240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (93, 4, 1320, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (94, 4, 1506, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (95, 4, 420, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (96, 4, 829, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (97, 4, 505, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (98, 4, 1507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (99, 4, 504, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (100, 4, 1521, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (101, 4, 320, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (102, 4, 523, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (103, 4, 517, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (104, 4, 206, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (105, 4, 1017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (106, 4, 412, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (107, 4, 302, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (108, 4, 1104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (109, 4, 918, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (110, 4, 613, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (111, 4, 305, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (112, 4, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (113, 4, 920, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (114, 4, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (115, 4, 909, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (116, 4, 229, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (117, 4, 417, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (118, 4, 1405, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (119, 4, 502, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (120, 4, 307, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (121, 4, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (122, 4, 1107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (123, 4, 214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (124, 4, 716, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (125, 4, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (126, 4, 508, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (127, 4, 230, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (128, 4, 1307, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (129, 4, 1508, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (130, 4, 710, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (131, 4, 203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (132, 4, 625, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (133, 4, 824, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (134, 4, 411, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (135, 4, 708, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (136, 4, 632, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (137, 4, 610, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (138, 4, 233, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (139, 4, 212, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (140, 4, 1106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (141, 4, 1205, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (142, 4, 821, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (143, 4, 332, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (144, 4, 719, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (145, 4, 1413, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (146, 4, 333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (147, 4, 1020, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (148, 4, 1206, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (149, 4, 1110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (150, 4, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (151, 4, 809, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (152, 4, 1304, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (153, 4, 826, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (154, 4, 614, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (155, 4, 227, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (156, 4, 919, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (157, 4, 213, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (33, 4, 318, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (16, 4, 202, -1, 1, NULL, NULL, false, NULL, true, NULL, true, NULL, NULL, '4', NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (63, 10, 239, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (23, 10, 204, -3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (158, 4, 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (159, 4, 331, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (160, 4, 605, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (161, 4, 520, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (162, 4, 1221, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (163, 4, 221, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (164, 4, 314, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (165, 4, 312, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (166, 4, 637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (167, 4, 1111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (168, 4, 603, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (169, 4, 802, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (170, 4, 104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (171, 4, 617, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (172, 4, 1526, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (173, 4, 1408, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (174, 4, 109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (175, 4, 1403, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (176, 4, 819, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (177, 4, 722, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (178, 4, 1501, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (179, 4, 403, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (180, 4, 811, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (181, 4, 215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (182, 4, 516, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (183, 4, 1217, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (184, 4, 207, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (185, 4, 422, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (186, 4, 1527, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (187, 4, 1113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (188, 4, 927, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (189, 4, 1214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (190, 4, 1103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (191, 4, 425, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (192, 4, 509, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (193, 4, 926, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (194, 4, 712, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (195, 4, 503, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (196, 4, 1101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (197, 4, 611, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (198, 4, 236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (199, 4, 426, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (200, 4, 705, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (201, 4, 619, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (202, 4, 404, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (203, 4, 514, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (204, 4, 237, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (205, 4, 524, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (206, 4, 1210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (207, 4, 813, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (208, 4, 308, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (209, 4, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (210, 4, 419, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (211, 4, 519, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (212, 4, 620, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (213, 4, 234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (214, 4, 717, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (215, 4, 1209, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (216, 4, 904, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (217, 4, 405, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (218, 4, 629, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (219, 4, 406, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (220, 4, 1010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (221, 4, 1004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (222, 4, 208, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (223, 4, 907, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (224, 4, 1505, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (225, 4, 1105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (226, 4, 1418, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (227, 4, 1309, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (228, 4, 902, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (229, 4, 631, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (230, 4, 1315, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (231, 4, 1406, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (232, 4, 319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (233, 4, 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (234, 4, 914, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (235, 4, 1416, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (236, 4, 225, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (237, 4, 107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (238, 4, 323, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (239, 4, 924, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (240, 4, 241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (241, 4, 1014, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (242, 4, 510, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (243, 4, 903, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (244, 4, 1414, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (245, 4, 1009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (246, 4, 1216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (247, 4, 812, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (248, 4, 313, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (249, 4, 827, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (250, 4, 928, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (251, 4, 413, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (252, 4, 309, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (253, 4, 526, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (254, 4, 1311, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (255, 4, 235, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (256, 4, 205, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (257, 4, 905, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (258, 4, 1224, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (259, 4, 210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (260, 4, 634, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (261, 4, 831, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (262, 4, 1314, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (263, 4, 211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (264, 4, 201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (265, 4, 1502, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (266, 4, 609, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (267, 4, 415, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (268, 4, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (269, 4, 1231, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (270, 4, 1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (271, 4, 1321, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (272, 4, 929, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (273, 4, 825, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (274, 4, 807, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (275, 4, 1116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (276, 4, 1022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (277, 4, 1112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (278, 4, 1011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (279, 4, 911, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (280, 4, 315, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (281, 4, 321, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (282, 4, 922, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (283, 4, 529, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (284, 4, 721, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (285, 4, 612, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (286, 4, 1306, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (287, 4, 633, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (288, 4, 1529, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (289, 4, 1313, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (290, 4, 1219, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (291, 4, 1518, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (292, 4, 409, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (293, 4, 706, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (294, 4, 714, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (295, 4, 602, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (296, 4, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (297, 4, 1528, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (298, 4, 709, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (299, 4, 1220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (300, 4, 627, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (301, 4, 329, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (302, 4, 316, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (303, 4, 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (304, 4, 1006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (305, 4, 1222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (306, 4, 220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (307, 4, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (308, 4, 1114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (309, 4, 402, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (310, 4, 322, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (311, 4, 1208, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (312, 4, 1109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (313, 4, 1515, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (314, 4, 1316, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (315, 4, 817, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (316, 4, 635, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (317, 4, 216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (318, 4, 912, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (319, 4, 1419, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (320, 4, 1415, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (321, 4, 324, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (322, 4, 701, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (323, 4, 1512, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (324, 4, 622, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (325, 4, 1102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (326, 4, 1230, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (327, 4, 325, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (328, 4, 1301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (329, 4, 423, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (330, 4, 932, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (331, 4, 830, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (332, 4, 224, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (333, 4, 628, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (334, 4, 232, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (335, 4, 930, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (336, 4, 521, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (337, 4, 1530, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (338, 4, 1509, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (339, 4, 910, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (340, 4, 1525, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (341, 4, 1229, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (342, 4, 106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (343, 4, 804, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (344, 4, 1323, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (345, 4, 724, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (346, 4, 303, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (347, 4, 219, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (348, 4, 606, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (349, 4, 238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (350, 4, 1407, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (351, 4, 626, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (352, 4, 616, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (353, 4, 1310, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (354, 4, 512, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (355, 4, 623, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (356, 4, 636, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (357, 4, 326, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (358, 4, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (359, 4, 916, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (360, 4, 1226, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (361, 4, 720, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (362, 4, 931, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (363, 4, 814, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (364, 4, 515, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (365, 4, 310, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (366, 4, 1215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (367, 4, 704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (368, 4, 1001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (369, 4, 231, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (370, 4, 1305, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (371, 4, 806, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (372, 4, 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (373, 4, 801, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (374, 4, 1115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (375, 4, 1207, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (376, 4, 820, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (377, 4, 223, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (378, 4, 301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (379, 4, 604, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (380, 4, 1003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (381, 4, 822, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (382, 4, 713, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (383, 4, 530, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (384, 4, 117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (385, 4, 1520, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (386, 4, 818, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (387, 4, 1402, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (388, 4, 923, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (389, 4, 1021, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (390, 4, 1324, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (391, 4, 1522, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (392, 4, 1318, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (393, 4, 228, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (394, 4, 522, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (395, 4, 1513, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (396, 4, 608, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (397, 4, 1412, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (398, 4, 1322, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (399, 4, 925, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (400, 4, 702, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (401, 4, 1008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (402, 4, 418, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (403, 4, 306, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (404, 4, 1213, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (405, 4, 921, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (406, 4, 624, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (407, 4, 1225, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (408, 4, 913, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (409, 4, 1317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (410, 4, 501, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (411, 4, 424, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (412, 4, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (413, 4, 1504, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (414, 4, 328, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (415, 4, 1417, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (416, 4, 1319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (417, 4, 718, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (418, 4, 317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (419, 4, 1523, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (420, 4, 908, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (421, 4, 414, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (422, 4, 311, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (423, 4, 707, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (22, 4, 327, NULL, 1, -4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (18, 4, 304, -2, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (424, 10, 1018, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (425, 10, 527, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (426, 10, 513, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (427, 10, 906, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (428, 10, 1404, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (429, 10, 401, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (430, 10, 715, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (431, 10, 1503, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (432, 10, 615, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (433, 10, 1202, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (434, 10, 618, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (435, 10, 1023, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (436, 10, 1302, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (437, 10, 1019, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (438, 10, 723, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (439, 10, 202, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (440, 10, 828, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (441, 10, 304, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (442, 10, 410, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (443, 10, 408, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (444, 10, 242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (445, 10, 327, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (446, 10, 204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (447, 10, 917, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (448, 10, 810, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (449, 10, 407, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (450, 10, 607, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (451, 10, 1013, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (452, 10, 1401, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (453, 10, 506, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (454, 10, 1218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (455, 10, 725, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (456, 10, 318, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (457, 10, 218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (458, 10, 933, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (459, 10, 1227, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (460, 10, 330, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (461, 10, 1517, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (462, 10, 518, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (463, 10, 1204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (464, 10, 416, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (465, 10, 1223, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (466, 10, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (467, 10, 1303, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (468, 10, 1511, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (469, 10, 1410, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (470, 10, 1228, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (471, 10, 421, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (472, 10, 511, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (473, 10, 1312, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (474, 10, 1524, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (475, 10, 1212, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (476, 10, 1409, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (477, 10, 1519, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (478, 10, 1005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (479, 10, 507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (480, 10, 209, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (481, 10, 1201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (482, 10, 803, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (483, 10, 1514, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (484, 10, 703, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (485, 10, 525, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (486, 10, 239, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (487, 10, 1516, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (488, 10, 915, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (489, 10, 217, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (490, 10, 1510, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (491, 10, 1203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (492, 10, 1211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (493, 10, 528, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (494, 10, 1002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (495, 10, 1108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (496, 10, 630, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (497, 10, 1012, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (498, 10, 816, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (499, 10, 711, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (500, 10, 601, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (501, 10, 1411, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (502, 10, 901, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (503, 10, 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (504, 10, 808, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (505, 10, 832, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (506, 10, 823, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (507, 10, 1007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (508, 10, 1308, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (509, 10, 621, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (510, 10, 427, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (511, 10, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (512, 10, 1016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (513, 10, 805, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (514, 10, 815, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (515, 10, 240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (516, 10, 1320, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (517, 10, 1506, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (518, 10, 420, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (519, 10, 829, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (520, 10, 505, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (521, 10, 1507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (522, 10, 504, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (523, 10, 1521, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (524, 10, 320, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (525, 10, 523, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (526, 10, 517, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (527, 10, 206, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (528, 10, 1017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (529, 10, 412, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (530, 10, 302, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (531, 10, 1104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (532, 10, 918, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (533, 10, 613, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (534, 10, 305, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (535, 10, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (536, 10, 920, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (537, 10, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (538, 10, 909, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (539, 10, 229, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (540, 10, 417, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (541, 10, 1405, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (542, 10, 502, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (543, 10, 307, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (544, 10, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (545, 10, 1107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (546, 10, 214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (547, 10, 716, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (548, 10, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (549, 10, 508, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (550, 10, 230, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (551, 10, 1307, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (552, 10, 1508, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (553, 10, 710, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (554, 10, 203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (555, 10, 625, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (556, 10, 824, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (557, 10, 411, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (558, 10, 708, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (559, 10, 632, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (560, 10, 610, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (561, 10, 233, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (562, 10, 212, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (563, 10, 1106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (564, 10, 1205, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (565, 10, 821, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (566, 10, 332, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (567, 10, 719, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (568, 10, 1413, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (569, 10, 333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (570, 10, 1020, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (571, 10, 1206, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (572, 10, 1110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (573, 10, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (574, 10, 809, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (575, 10, 1304, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (576, 10, 826, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (577, 10, 614, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (578, 10, 227, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (579, 10, 919, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (580, 10, 213, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (581, 10, 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (582, 10, 331, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (583, 10, 605, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (584, 10, 520, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (585, 10, 1221, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (586, 10, 221, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (587, 10, 314, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (588, 10, 312, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (589, 10, 637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (590, 10, 1111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (591, 10, 603, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (592, 10, 802, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (593, 10, 104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (594, 10, 617, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (595, 10, 1526, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (596, 10, 1408, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (597, 10, 109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (598, 10, 1403, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (599, 10, 819, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (600, 10, 722, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (601, 10, 1501, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (602, 10, 403, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (603, 10, 811, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (604, 10, 215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (605, 10, 516, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (606, 10, 1217, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (607, 10, 207, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (608, 10, 422, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (609, 10, 1527, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (610, 10, 1113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (611, 10, 927, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (612, 10, 1214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (613, 10, 1103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (614, 10, 425, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (615, 10, 509, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (616, 10, 926, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (617, 10, 712, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (618, 10, 503, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (619, 10, 1101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (620, 10, 611, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (621, 10, 236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (622, 10, 426, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (623, 10, 705, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (624, 10, 619, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (625, 10, 404, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (626, 10, 514, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (627, 10, 237, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (628, 10, 524, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (629, 10, 1210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (630, 10, 813, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (631, 10, 308, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (632, 10, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (633, 10, 419, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (634, 10, 519, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (635, 10, 620, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (636, 10, 234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (637, 10, 717, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (638, 10, 1209, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (639, 10, 904, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (640, 10, 405, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (641, 10, 629, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (642, 10, 406, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (643, 10, 1010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (644, 10, 1004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (645, 10, 208, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (646, 10, 907, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (647, 10, 1505, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (648, 10, 1105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (649, 10, 1418, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (650, 10, 1309, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (651, 10, 902, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (652, 10, 631, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (653, 10, 1315, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (654, 10, 1406, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (655, 10, 319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (656, 10, 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (657, 10, 914, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (658, 10, 1416, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (659, 10, 225, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (660, 10, 107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (661, 10, 323, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (662, 10, 924, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (663, 10, 241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (664, 10, 1014, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (665, 10, 510, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (666, 10, 903, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (667, 10, 1414, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (668, 10, 1009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (669, 10, 1216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (670, 10, 812, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (671, 10, 313, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (672, 10, 827, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (673, 10, 928, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (674, 10, 413, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (675, 10, 309, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (676, 10, 526, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (677, 10, 1311, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (678, 10, 235, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (679, 10, 205, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (680, 10, 905, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (681, 10, 1224, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (682, 10, 210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (683, 10, 634, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (684, 10, 831, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (685, 10, 1314, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (686, 10, 211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (687, 10, 201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (688, 10, 1502, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (689, 10, 609, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (690, 10, 415, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (691, 10, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (692, 10, 1231, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (693, 10, 1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (694, 10, 1321, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (695, 10, 929, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (696, 10, 825, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (697, 10, 807, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (698, 10, 1116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (699, 10, 1022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (700, 10, 1112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (701, 10, 1011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (702, 10, 911, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (703, 10, 315, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (704, 10, 321, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (705, 10, 922, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (706, 10, 529, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (707, 10, 721, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (708, 10, 612, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (709, 10, 1306, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (710, 10, 633, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (711, 10, 1529, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (712, 10, 1313, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (713, 10, 1219, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (714, 10, 1518, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (715, 10, 409, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (716, 10, 706, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (717, 10, 714, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (718, 10, 602, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (719, 10, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (720, 10, 1528, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (721, 10, 709, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (722, 10, 1220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (723, 10, 627, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (724, 10, 329, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (725, 10, 316, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (726, 10, 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (727, 10, 1006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (728, 10, 1222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (729, 10, 220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (730, 10, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (731, 10, 1114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (732, 10, 402, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (733, 10, 322, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (734, 10, 1208, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (735, 10, 1109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (736, 10, 1515, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (737, 10, 1316, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (738, 10, 817, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (739, 10, 635, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (740, 10, 216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (741, 10, 912, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (742, 10, 1419, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (743, 10, 1415, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (744, 10, 324, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (745, 10, 701, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (746, 10, 1512, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (747, 10, 622, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (748, 10, 1102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (749, 10, 1230, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (750, 10, 325, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (751, 10, 1301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (752, 10, 423, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (753, 10, 932, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (754, 10, 830, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (755, 10, 224, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (756, 10, 628, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (757, 10, 232, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (758, 10, 930, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (759, 10, 521, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (760, 10, 1530, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (761, 10, 1509, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (762, 10, 910, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (763, 10, 1525, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (764, 10, 1229, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (765, 10, 106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (766, 10, 804, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (767, 10, 1323, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (768, 10, 724, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (769, 10, 303, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (770, 10, 219, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (771, 10, 606, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (772, 10, 238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (773, 10, 1407, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (774, 10, 626, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (775, 10, 616, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (776, 10, 1310, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (777, 10, 512, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (778, 10, 623, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (779, 10, 636, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (780, 10, 326, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (781, 10, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (782, 10, 916, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (783, 10, 1226, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (784, 10, 720, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (785, 10, 931, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (786, 10, 814, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (787, 10, 515, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (788, 10, 310, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (789, 10, 1215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (790, 10, 704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (791, 10, 1001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (792, 10, 231, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (793, 10, 1305, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (794, 10, 806, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (795, 10, 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (796, 10, 801, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (797, 10, 1115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (798, 10, 1207, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (799, 10, 820, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (800, 10, 223, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (801, 10, 301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (802, 10, 604, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (803, 10, 1003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (804, 10, 822, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (805, 10, 713, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (806, 10, 530, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (807, 10, 117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (808, 10, 1520, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (809, 10, 818, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (810, 10, 1402, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (811, 10, 923, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (812, 10, 1021, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (813, 10, 1324, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (814, 10, 1522, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (815, 10, 1318, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (816, 10, 228, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (817, 10, 522, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (818, 10, 1513, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (819, 10, 608, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (820, 10, 1412, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (821, 10, 1322, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (822, 10, 925, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (823, 10, 702, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (824, 10, 1008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (825, 10, 418, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (826, 10, 306, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (827, 10, 1213, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (828, 10, 921, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (829, 10, 624, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (830, 10, 1225, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (831, 10, 913, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (832, 10, 1317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (833, 10, 501, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (834, 10, 424, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (835, 10, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (836, 10, 1504, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (837, 10, 328, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (838, 10, 1417, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (839, 10, 1319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (840, 10, 718, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (841, 10, 317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (842, 10, 1523, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (843, 10, 908, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (844, 10, 414, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (845, 10, 311, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (846, 10, 707, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (21, 10, 242, 5, 1, 1, 'jlji', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (847, 15, 1018, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (848, 15, 527, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (849, 15, 513, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (850, 15, 906, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (851, 15, 1404, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (852, 15, 401, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (853, 15, 715, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (854, 15, 1503, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (855, 15, 615, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (856, 15, 1202, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (857, 15, 618, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (858, 15, 1023, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (859, 15, 1302, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (860, 15, 1019, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (861, 15, 723, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (862, 15, 202, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (863, 15, 828, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (864, 15, 304, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (865, 15, 410, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (866, 15, 408, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (867, 15, 242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (868, 15, 327, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (869, 15, 204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (870, 15, 917, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (871, 15, 810, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (872, 15, 407, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (873, 15, 607, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (874, 15, 1013, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (875, 15, 1401, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (876, 15, 506, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (877, 15, 1218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (878, 15, 725, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (879, 15, 318, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (880, 15, 218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (881, 15, 933, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (882, 15, 1227, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (883, 15, 330, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (884, 15, 1517, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (885, 15, 518, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (886, 15, 1204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (887, 15, 416, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (888, 15, 1223, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (889, 15, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (890, 15, 1303, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (891, 15, 1511, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (892, 15, 1410, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (893, 15, 1228, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (894, 15, 421, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (895, 15, 511, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (896, 15, 1312, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (897, 15, 1524, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (898, 15, 1212, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (899, 15, 1409, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (900, 15, 1519, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (901, 15, 1005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (902, 15, 507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (903, 15, 209, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (904, 15, 1201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (905, 15, 803, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (906, 15, 1514, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (907, 15, 703, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (908, 15, 525, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (909, 15, 239, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (910, 15, 1516, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (911, 15, 915, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (912, 15, 217, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (913, 15, 1510, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (914, 15, 1203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (915, 15, 1211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (916, 15, 528, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (917, 15, 1002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (918, 15, 1108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (919, 15, 630, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (920, 15, 1012, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (921, 15, 816, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (922, 15, 711, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (923, 15, 601, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (924, 15, 1411, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (925, 15, 901, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (926, 15, 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (927, 15, 808, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (928, 15, 832, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (929, 15, 823, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (930, 15, 1007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (931, 15, 1308, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (932, 15, 621, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (933, 15, 427, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (934, 15, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (935, 15, 1016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (936, 15, 805, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (937, 15, 815, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (938, 15, 240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (939, 15, 1320, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (940, 15, 1506, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (941, 15, 420, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (942, 15, 829, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (943, 15, 505, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (944, 15, 1507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (945, 15, 504, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (946, 15, 1521, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (947, 15, 320, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (948, 15, 523, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (949, 15, 517, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (950, 15, 206, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (951, 15, 1017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (952, 15, 412, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (953, 15, 302, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (954, 15, 1104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (955, 15, 918, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (956, 15, 613, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (957, 15, 305, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (958, 15, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (959, 15, 920, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (960, 15, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (961, 15, 909, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (962, 15, 229, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (963, 15, 417, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (964, 15, 1405, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (965, 15, 502, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (966, 15, 307, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (967, 15, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (968, 15, 1107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (969, 15, 214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (970, 15, 716, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (971, 15, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (972, 15, 508, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (973, 15, 230, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (974, 15, 1307, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (975, 15, 1508, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (976, 15, 710, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (977, 15, 203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (978, 15, 625, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (979, 15, 824, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (980, 15, 411, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (981, 15, 708, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (982, 15, 632, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (983, 15, 610, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (984, 15, 233, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (985, 15, 212, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (986, 15, 1106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (987, 15, 1205, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (988, 15, 821, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (989, 15, 332, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (990, 15, 719, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (991, 15, 1413, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (992, 15, 333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (993, 15, 1020, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (994, 15, 1206, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (995, 15, 1110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (996, 15, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (997, 15, 809, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (998, 15, 1304, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (999, 15, 826, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1000, 15, 614, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1001, 15, 227, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1002, 15, 919, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1003, 15, 213, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1004, 15, 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1005, 15, 331, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1006, 15, 605, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1007, 15, 520, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1008, 15, 1221, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1009, 15, 221, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1010, 15, 314, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1011, 15, 312, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1012, 15, 637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1013, 15, 1111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1014, 15, 603, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1015, 15, 802, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1016, 15, 104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1017, 15, 617, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1018, 15, 1526, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1019, 15, 1408, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1020, 15, 109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1021, 15, 1403, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1022, 15, 819, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1023, 15, 722, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1024, 15, 1501, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1025, 15, 403, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1026, 15, 811, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1027, 15, 215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1028, 15, 516, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1029, 15, 1217, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1030, 15, 207, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1031, 15, 422, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1032, 15, 1527, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1033, 15, 1113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1034, 15, 927, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1035, 15, 1214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1036, 15, 1103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1037, 15, 425, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1038, 15, 509, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1039, 15, 926, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1040, 15, 712, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1041, 15, 503, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1042, 15, 1101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1043, 15, 611, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1044, 15, 236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1045, 15, 426, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1046, 15, 705, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1047, 15, 619, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1048, 15, 404, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1049, 15, 514, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1050, 15, 237, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1051, 15, 524, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1052, 15, 1210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1053, 15, 813, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1054, 15, 308, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1055, 15, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1056, 15, 419, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1057, 15, 519, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1058, 15, 620, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1059, 15, 234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1060, 15, 717, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1061, 15, 1209, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1062, 15, 904, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1063, 15, 405, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1064, 15, 629, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1065, 15, 406, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1066, 15, 1010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1067, 15, 1004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1068, 15, 208, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1069, 15, 907, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1070, 15, 1505, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1071, 15, 1105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1072, 15, 1418, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1073, 15, 1309, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1074, 15, 902, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1075, 15, 631, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1076, 15, 1315, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1077, 15, 1406, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1078, 15, 319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1079, 15, 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1080, 15, 914, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1081, 15, 1416, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1082, 15, 225, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1083, 15, 107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1084, 15, 323, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1085, 15, 924, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1086, 15, 241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1087, 15, 1014, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1088, 15, 510, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1089, 15, 903, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1090, 15, 1414, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1091, 15, 1009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1092, 15, 1216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1093, 15, 812, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1094, 15, 313, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1095, 15, 827, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1096, 15, 928, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1097, 15, 413, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1098, 15, 309, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1099, 15, 526, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1100, 15, 1311, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1101, 15, 235, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1102, 15, 205, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1103, 15, 905, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1104, 15, 1224, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1105, 15, 210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1106, 15, 634, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1107, 15, 831, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1108, 15, 1314, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1109, 15, 211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1110, 15, 201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1111, 15, 1502, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1112, 15, 609, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1113, 15, 415, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1114, 15, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1115, 15, 1231, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1116, 15, 1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1117, 15, 1321, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1118, 15, 929, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1119, 15, 825, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1120, 15, 807, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1121, 15, 1116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1122, 15, 1022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1123, 15, 1112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1124, 15, 1011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1125, 15, 911, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1126, 15, 315, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1127, 15, 321, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1128, 15, 922, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1129, 15, 529, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1130, 15, 721, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1131, 15, 612, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1132, 15, 1306, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1133, 15, 633, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1134, 15, 1529, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1135, 15, 1313, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1136, 15, 1219, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1137, 15, 1518, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1138, 15, 409, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1139, 15, 706, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1140, 15, 714, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1141, 15, 602, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1142, 15, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1143, 15, 1528, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1144, 15, 709, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1145, 15, 1220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1146, 15, 627, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1147, 15, 329, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1148, 15, 316, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1149, 15, 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1150, 15, 1006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1151, 15, 1222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1152, 15, 220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1153, 15, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1154, 15, 1114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1155, 15, 402, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1156, 15, 322, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1157, 15, 1208, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1158, 15, 1109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1159, 15, 1515, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1160, 15, 1316, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1161, 15, 817, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1162, 15, 635, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1163, 15, 216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1164, 15, 912, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1165, 15, 1419, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1166, 15, 1415, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1167, 15, 324, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1168, 15, 701, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1169, 15, 1512, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1170, 15, 622, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1171, 15, 1102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1172, 15, 1230, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1173, 15, 325, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1174, 15, 1301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1175, 15, 423, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1176, 15, 932, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1177, 15, 830, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1178, 15, 224, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1179, 15, 628, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1180, 15, 232, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1181, 15, 930, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1182, 15, 521, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1183, 15, 1530, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1184, 15, 1509, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1185, 15, 910, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1186, 15, 1525, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1187, 15, 1229, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1188, 15, 106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1189, 15, 804, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1190, 15, 1323, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1191, 15, 724, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1192, 15, 303, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1193, 15, 219, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1194, 15, 606, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1195, 15, 238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1196, 15, 1407, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1197, 15, 626, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1198, 15, 616, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1199, 15, 1310, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1200, 15, 512, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1201, 15, 623, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1202, 15, 636, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1203, 15, 326, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1204, 15, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1205, 15, 916, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1206, 15, 1226, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1207, 15, 720, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1208, 15, 931, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1209, 15, 814, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1210, 15, 515, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1211, 15, 310, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1212, 15, 1215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1213, 15, 704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1214, 15, 1001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1215, 15, 231, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1216, 15, 1305, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1217, 15, 806, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1218, 15, 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1219, 15, 801, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1220, 15, 1115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1221, 15, 1207, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1222, 15, 820, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1223, 15, 223, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1224, 15, 301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1225, 15, 604, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1226, 15, 1003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1227, 15, 822, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1228, 15, 713, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1229, 15, 530, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1230, 15, 117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1231, 15, 1520, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1232, 15, 818, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1233, 15, 1402, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1234, 15, 923, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1235, 15, 1021, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1236, 15, 1324, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1237, 15, 1522, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1238, 15, 1318, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1239, 15, 228, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1240, 15, 522, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1241, 15, 1513, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1242, 15, 608, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1243, 15, 1412, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1244, 15, 1322, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1245, 15, 925, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1246, 15, 702, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1247, 15, 1008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1248, 15, 418, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1249, 15, 306, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1250, 15, 1213, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1251, 15, 921, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1252, 15, 624, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1253, 15, 1225, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1254, 15, 913, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1255, 15, 1317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1256, 15, 501, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1257, 15, 424, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1258, 15, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1259, 15, 1504, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1260, 15, 328, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1261, 15, 1417, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1262, 15, 1319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1263, 15, 718, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1264, 15, 317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1265, 15, 1523, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1266, 15, 908, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1267, 15, 414, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1268, 15, 311, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mb2data.cnt_estimations VALUES (1269, 15, 707, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: cnt_monitoring; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.cnt_monitoring VALUES (3, 13192, '2022-02-16', '2022-02-16', 'nbm,');
INSERT INTO mb2data.cnt_monitoring VALUES (4, 13193, '2022-02-16', '2022-02-16', 'nbm,');
INSERT INTO mb2data.cnt_monitoring VALUES (5, 13192, '2022-02-25', '2022-02-25', NULL);
INSERT INTO mb2data.cnt_monitoring VALUES (1, 13192, '2022-02-18', '2022-02-18', 'bn,b,mb');
INSERT INTO mb2data.cnt_monitoring VALUES (6, 13192, '2022-02-19', '2022-02-19', NULL);
INSERT INTO mb2data.cnt_monitoring VALUES (7, 13192, '2022-02-19', '2022-02-19', 'jkniuhiphpiu');
INSERT INTO mb2data.cnt_monitoring VALUES (8, 13192, '2022-05-13', '2022-05-13', NULL);
INSERT INTO mb2data.cnt_monitoring VALUES (9, 13192, '2022-05-13', '2022-05-13', 'vbmn');
INSERT INTO mb2data.cnt_monitoring VALUES (10, 13193, '2022-03-01', '2022-05-31', 'vbmn');
INSERT INTO mb2data.cnt_monitoring VALUES (2, 13192, '2022-02-16', '2022-02-16', NULL);
INSERT INTO mb2data.cnt_monitoring VALUES (11, 13192, '2022-05-13', '2022-05-13', NULL);
INSERT INTO mb2data.cnt_monitoring VALUES (12, 13192, '2022-05-03', '2022-05-03', NULL);
INSERT INTO mb2data.cnt_monitoring VALUES (13, 13192, '2022-05-03', '2022-05-03', NULL);
INSERT INTO mb2data.cnt_monitoring VALUES (15, 13193, '2022-05-10', '2022-05-17', 'TEST2');
INSERT INTO mb2data.cnt_monitoring VALUES (14, 13192, '2022-05-10', '2022-05-10', 'TEST1 - TEST1');


--
-- Data for Name: cnt_observation_reports; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.cnt_observation_reports VALUES (1, 14, 1, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (3, 14, 3, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (4, 14, 4, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (5, 14, 5, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (6, 14, 6, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (7, 14, 83, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (8, 14, 7, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (9, 14, 8, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (10, 14, 9, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (11, 14, 10, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (12, 14, 11, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (13, 14, 12, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (14, 14, 13, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (15, 14, 14, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (16, 14, 15, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (17, 14, 16, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (18, 14, 17, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (19, 14, 18, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (20, 14, 19, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (21, 14, 20, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (22, 14, 21, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (23, 14, 22, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (24, 14, 23, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (25, 14, 24, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (26, 14, 25, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (27, 14, 26, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (28, 14, 27, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (29, 14, 28, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (30, 14, 29, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (31, 14, 30, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (32, 14, 31, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (33, 14, 32, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (34, 14, 33, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (35, 14, 34, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (36, 14, 35, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (37, 14, 36, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (38, 14, 37, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (39, 14, 38, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (40, 14, 39, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (41, 14, 40, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (42, 14, 41, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (43, 14, 42, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (44, 14, 43, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (45, 14, 44, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (46, 14, 45, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (47, 14, 46, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (48, 14, 47, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (49, 14, 48, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (50, 14, 49, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (51, 14, 50, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (52, 14, 51, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (53, 14, 52, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (54, 14, 53, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (55, 14, 54, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (56, 14, 55, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (57, 14, 56, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (58, 14, 57, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (59, 14, 58, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (60, 14, 59, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (61, 14, 60, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (62, 14, 61, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (63, 14, 62, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (64, 14, 63, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (65, 14, 64, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (66, 14, 65, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (67, 14, 66, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (68, 14, 67, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (69, 14, 68, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (70, 14, 69, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (71, 14, 70, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (72, 14, 71, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (73, 14, 72, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (74, 14, 73, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (75, 14, 74, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (76, 14, 75, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (77, 14, 76, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (78, 14, 77, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (79, 14, 78, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (80, 14, 79, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (81, 14, 80, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (82, 14, 81, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (83, 14, 82, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (84, 14, 84, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (85, 14, 85, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (86, 14, 86, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (87, 14, 87, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (88, 14, 88, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (89, 14, 89, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (90, 14, 90, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (91, 14, 91, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (92, 14, 92, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (93, 14, 93, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (94, 14, 94, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (95, 14, 95, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (96, 14, 96, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (97, 14, 97, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (98, 14, 98, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (99, 14, 99, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (100, 14, 100, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (101, 14, 101, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (102, 14, 102, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (103, 14, 103, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (104, 14, 104, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (105, 14, 105, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (106, 14, 106, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (107, 14, 107, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (108, 14, 108, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (109, 14, 109, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (110, 14, 110, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (111, 14, 111, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (112, 14, 112, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (113, 14, 113, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (114, 14, 114, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (115, 14, 115, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (116, 14, 116, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (117, 14, 117, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (118, 14, 118, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (119, 14, 119, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (120, 14, 120, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (121, 14, 121, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (122, 14, 122, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (123, 14, 123, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (124, 14, 124, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (125, 14, 125, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (126, 14, 126, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (127, 14, 127, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (128, 14, 128, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (129, 14, 129, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (130, 14, 130, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (131, 14, 131, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (132, 14, 132, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (133, 14, 133, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (134, 14, 134, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (135, 14, 135, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (136, 14, 136, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (137, 14, 137, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (138, 14, 138, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (139, 14, 139, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (140, 14, 140, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (141, 14, 141, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (142, 14, 142, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (143, 14, 143, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (144, 14, 144, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (145, 14, 145, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (146, 14, 146, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (147, 14, 147, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (148, 14, 148, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (149, 14, 149, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (150, 14, 150, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (151, 14, 151, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (152, 14, 152, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (153, 14, 153, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (154, 14, 154, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (155, 14, 155, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (156, 14, 156, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (157, 14, 157, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (158, 14, 158, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (159, 14, 159, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (160, 14, 160, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (161, 14, 161, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (162, 14, 162, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (163, 14, 163, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (164, 14, 164, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (165, 14, 165, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (166, 14, 166, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (167, 14, 167, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-10 02:24:13.102086');
INSERT INTO mb2data.cnt_observation_reports VALUES (2, 3, 2, false, NULL, 1, 2, 0, 2, 5, NULL, NULL, NULL, NULL, '2022-05-10 02:24:13.102086', '2022-05-16 11:06:20.651268');


--
-- Data for Name: cnt_observations; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--



--
-- Data for Name: cnt_permanent_spots; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.cnt_permanent_spots VALUES (7, '{"lat": 45.8713051337332, "lon": 14.6544428024587, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "DOBREPOLJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Dobrepolje"}}', 'Gmajna', '061-050', true, '0101000020E610000047538320134F2D404A1C37ED86EF4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (8, '{"lat": 45.8615424358363, "lon": 14.7391789495955, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "DOBREPOLJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Dobrepolje"}}', 'Kamnit hrib', '061-049', true, '0101000020E610000010CFCCA9757A2D404304C50547EE4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (9, '{"lat": 45.8166331707647, "lon": 14.6984810990395, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "DOBREPOLJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Dobrepolje"}}', 'Vrhunska voda', '061-047', true, '0101000020E6100000587F8A509F652D40B4A18C6F87E84640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (10, '{"lat": 45.7137507061997, "lon": 14.8064014978844, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "DOLENJA VAS", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Ribnica"}}', 'Malenski stelnik', '287-143', true, '0101000020E6100000DAB739A8E09C2D40F24FE22E5CDB4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (11, '{"lat": 45.6812836352085, "lon": 14.7667187940407, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "DOLENJA VAS", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Ribnica"}}', 'Požarnica', '287-142', true, '0101000020E61000004944A35D8F882D409B425A4D34D74640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (12, '{"lat": 45.6700979083579, "lon": 14.6217359966195, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "DRAGA", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Loški Potok"}}', 'Saduc', '099-072', true, '0101000020E61000000374382E543E2D40F3C1ACC4C5D54640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (13, '{"lat": 45.5248723657632, "lon": 15.136045893373, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "DRAGATUŠ", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Črnomelj"}}', 'Vusec', '044-044', true, '0101000020E61000009195ADCEA7452E4079C386042FC34640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (14, '{"lat": 45.9177854988762, "lon": 14.7051400157217, "spatial_request_result": {"oe_ime": "LJUBLJANA", "lov_ime": "GROSUPLJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Grosuplje"}}', 'Lavričice', '059-045', true, '0101000020E61000003740B51C08692D405135C7FE79F54640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (15, '{"lat": 45.6768523679729, "lon": 14.8026779816815, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "KOČEVJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Javor', '095-065', true, '0101000020E61000003715C19BF89A2D40FA543019A3D64640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (16, '{"lat": 45.7425631250843, "lon": 14.817867872884, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "KOČEVJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Dobrepolje"}}', 'Vrbovec', '095-066', true, '0101000020E6100000D8F8EC93BFA22D40F1B9F84E0CDF4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (17, '{"lat": 45.7705636533598, "lon": 14.9064932908929, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "LAZINA HINJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Žužemberk"}}', 'Črni dol', '223-124', true, '0101000020E610000071DB7CE31FD02D4057556DD4A1E24640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (18, '{"lat": 45.571702595217, "lon": 15.0977228679584, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "LOKA", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Črnomelj"}}', 'Loch pihelj', '039-036', true, '0101000020E6100000DAE753BB08322E4069BFF68C2DC94640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (19, '{"lat": 45.6926786970173, "lon": 14.6485469882103, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LOŠKI POTOK", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Loški Potok"}}', 'Mrtalos', '285-139', true, '0101000020E6100000A990D0590E4C2D409B290FB2A9D84640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (20, '{"lat": 45.7296174744692, "lon": 14.9000091234086, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LPN MEDVED KOČEVJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Obora S.log -Beli kamen', '100-090', true, '0101000020E61000006048EEFECDCC2D40BAB7FB1A64DD4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (21, '{"lat": 45.6181445302852, "lon": 15.083570437006, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "LPN MEDVED KOČEVJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Semič"}}', 'Cigelnica', '100-079', true, '0101000020E6100000C5B48BBEC92A2E4059E3265C1FCF4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (22, '{"lat": 45.6153843210484, "lon": 15.0175332543349, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LPN MEDVED KOČEVJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Hoberlok', '100-078', true, '0101000020E6100000DDEB631EFA082E40E5AFD6E9C4CE4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (23, '{"lat": 45.5900004688703, "lon": 15.048540496979, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LPN MEDVED KOČEVJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Hrib', '100-077', true, '0101000020E6100000D41CCE4CDA182E401D36A72285CB4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (24, '{"lat": 45.6439994225113, "lon": 15.0088188094417, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LPN MEDVED KOČEVJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Janezova koča', '100-081', true, '0101000020E61000007A4824E683042E40192AB5926ED24640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (25, '{"lat": 45.6871804215817, "lon": 14.9518233151069, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LPN MEDVED KOČEVJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Kamenjak', '100-084', true, '0101000020E61000009FE8B36255E72D408C922E87F5D74640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (26, '{"lat": 45.7651931913381, "lon": 14.9522704570282, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LPN MEDVED KOČEVJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Obora Smuka - Klanc', '100-092', true, '0101000020E610000015C44BFE8FE72D40A9F5B9D9F1E14640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (27, '{"lat": 45.6311177752555, "lon": 14.9421239561093, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LPN MEDVED KOČEVJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Onek-Bukva', '100-080', true, '0101000020E6100000F88838125EE22D40C5529E77C8D04640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (28, '{"lat": 45.5647914803445, "lon": 14.925538526166, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LPN MEDVED KOČEVJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Peči', '100-075', true, '0101000020E610000076248A2FE0D92D40D29154164BC84640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (29, '{"lat": 45.7145445357546, "lon": 14.9963706220751, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "LPN MEDVED KOČEVJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Dolenjske Toplice"}}', 'Podstenice', '100-088', true, '0101000020E61000000904494A24FE2D40004D023276DB4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (30, '{"lat": 45.7223692082219, "lon": 15.0288715277046, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "LPN MEDVED KOČEVJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Dolenjske Toplice"}}', 'Pogorelec', '100-089', true, '0101000020E6100000C08DB63FC80E2E40A5791E9876DC4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (31, '{"lat": 45.5549949093688, "lon": 14.94604461298, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LPN MEDVED KOČEVJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Rajndol', '100-073', true, '0101000020E6100000CB9CA2F55FE42D40BB97BC120AC74640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (32, '{"lat": 45.6986895442959, "lon": 15.0650709144292, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "LPN MEDVED KOČEVJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Dolenjske Toplice"}}', 'Rampoha', '100-086', true, '0101000020E6100000EBC992F950212E407367B3A86ED94640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (1, '{"lat": 45.6278573619633, "lon": 14.4193882146349, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "LPN JELEN SNEŽNIK", "luo_ime": "Notranjsko", "ob_uime": "Ilirska Bistrica"}}', 'Dolfetov laz', '036-024', true, '0101000020E61000008C5E540DBAD62C40BA174AA15DD04640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (2, '{"lat": 45.4933582120608, "lon": 14.8480996358032, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "BANJA LOKA", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kostel"}}', 'Stružnica', '094-064', true, '0101000020E6100000700C8F1D3AB22D40D601A55C26BF4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (3, '{"lat": 45.5560989599935, "lon": 15.2821377769958, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "ADLEŠIČI", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Črnomelj"}}', 'Kaliček', '043-042', true, '0101000020E61000007D53DA5C74902E4081412F402EC74640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (4, '{"lat": 45.50294704136, "lon": 15.3061853456237, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "ADLEŠIČI", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Črnomelj"}}', 'Police', '043-042', true, '0101000020E6100000A8EF5B53C49C2E406E21939160C04640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (5, '{"lat": 45.5986867417904, "lon": 15.1093060375745, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "ČRNOMELJ", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Črnomelj"}}', 'Klecpihl', '042-041', true, '0101000020E6100000AC4601F6F6372E40E94464C4A1CC4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (6, '{"lat": 45.8251098638837, "lon": 14.7429527489208, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "DOBREPOLJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Dobrepolje"}}', 'Debeli hrib', '061-048', true, '0101000020E61000001D2D7E4D647C2D406C7E34339DE94640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (83, '{"lat": 45.7917535291847, "lon": 14.4459858965093, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "GRAHOVO", "luo_ime": "Notranjsko", "ob_uime": "Cerknica"}}', 'Jelovci', '029-012', true, '0101000020E61000002AF86F4358E42C409B2BFD2D58E54640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (33, '{"lat": 45.6875156328192, "lon": 14.9107400590598, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LPN MEDVED KOČEVJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Rigl', '100-085', true, '0101000020E610000041A361854CD22D404139238300D84640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (34, '{"lat": 45.6862002567153, "lon": 14.988926342133, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LPN MEDVED KOČEVJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Rog', '100-083', true, '0101000020E6100000633AB38D54FA2D40AF8CF668D5D74640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (35, '{"lat": 45.5617563127385, "lon": 15.0026572517678, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LPN MEDVED KOČEVJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Studeno', '100-074', true, '0101000020E61000002CE1924A5C012E4048C47FA1E7C74640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (36, '{"lat": 45.5882975067597, "lon": 14.971259820344, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LPN MEDVED KOČEVJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Suhi potok', '100-076', true, '0101000020E6100000B09798F748F12D40F9EC2B554DCB4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (37, '{"lat": 45.7300077751561, "lon": 14.9447200213061, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LPN MEDVED KOČEVJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Šenberg', '100-091', true, '0101000020E6100000AAC5B657B2E32D40860F10E570DD4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (38, '{"lat": 45.657747255172, "lon": 15.066948218766, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "LPN MEDVED KOČEVJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Semič"}}', 'Štale', '100-082', true, '0101000020E61000002440740947222E40B0FFE20F31D44640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (39, '{"lat": 45.7666423155534, "lon": 14.9891675676781, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "LPN MEDVED KOČEVJE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Dolenjske Toplice"}}', 'Štrbenk', '100-093', true, '0101000020E6100000FAE1E22B74FA2D400784DC5521E24640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (40, '{"lat": 45.5587040246812, "lon": 14.8012602524751, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LPN SNEŽNIK KOČEVSKA REKA", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Črpalka-Reški hrib', '499-162', true, '0101000020E610000026EEA7C83E9A2D4023130D9D83C74640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (41, '{"lat": 45.700637433483, "lon": 14.6775187706595, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LPN SNEŽNIK KOČEVSKA REKA", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Ribnica"}}', 'Glavica', '100-087', true, '0101000020E61000002CD184BDE35A2D40D394C77CAED94640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (42, '{"lat": 45.664153855993, "lon": 14.7724493434224, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LPN SNEŽNIK KOČEVSKA REKA", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Ribnica"}}', 'Grčarske Gredice', '499-167', true, '0101000020E6100000D5A1F77A7E8B2D40498059FE02D54640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (43, '{"lat": 45.5996870064468, "lon": 14.7748892035542, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LPN SNEŽNIK KOČEVSKA REKA", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Lesna gorica', '499-163', true, '0101000020E6100000D4931647BE8C2D403943388BC2CC4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (44, '{"lat": 45.6354482422031, "lon": 14.7341885595838, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LPN SNEŽNIK KOČEVSKA REKA", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Kotliček', '499-160', true, '0101000020E610000015051990E7772D400F48355E56D14640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (45, '{"lat": 45.6602646691601, "lon": 14.7012592165132, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LPN SNEŽNIK KOČEVSKA REKA", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Loški Potok"}}', 'Lepa gorica', '499-166', true, '0101000020E6100000BCE2B1720B672D40995F7C8D83D44640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (46, '{"lat": 45.5346825952403, "lon": 14.825735753409, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LPN SNEŽNIK KOČEVSKA REKA", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Mošenik', '499-158', true, '0101000020E61000003A0F30D6C6A62D401026B27A70C44640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (47, '{"lat": 45.5357239996481, "lon": 14.9209675152415, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LPN SNEŽNIK KOČEVSKA REKA", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Muha vas', '499-159', true, '0101000020E6100000F847DD0D89D72D40E315A19A92C44640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (48, '{"lat": 45.5249466066155, "lon": 14.9606669374929, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LPN SNEŽNIK KOČEVSKA REKA", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Podlesje', '499-157', true, '0101000020E6100000C3C26D89DCEB2D40A2C74D7331C34640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (49, '{"lat": 45.5582852939421, "lon": 14.7405344181388, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LPN SNEŽNIK KOČEVSKA REKA", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Ravne', '499-165', true, '0101000020E6100000DAEFC653277B2D40DAA87BE475C74640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (50, '{"lat": 45.5483586500131, "lon": 14.8807239339703, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LPN SNEŽNIK KOČEVSKA REKA", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Ograja-Ajbig', '499-161', true, '0101000020E6100000E3695A3FEEC22D407424C29D30C64640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (51, '{"lat": 45.5998071898916, "lon": 14.847633202918, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LPN SNEŽNIK KOČEVSKA REKA", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Sekret- Suhi hrib', '499-164', true, '0101000020E61000009E12ABFAFCB12D40BD3E647BC6CC4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (52, '{"lat": 45.7426335044149, "lon": 14.8692718678809, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "LPN ŽITNA GORA", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Rjavi pesek', '146-096', true, '0101000020E610000031C3C73311BD2D401C305B9D0EDF4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (53, '{"lat": 45.6446021885271, "lon": 14.9208145605475, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "MALA GORA", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Mrhovišče', '096-067', true, '0101000020E6100000DB768E0175D72D40B853135382D24640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (54, '{"lat": 45.7021396581261, "lon": 14.8667979210906, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "MALA GORA", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Trikot', '096-068', true, '0101000020E61000005DA6E6EFCCBB2D4021705AB6DFD94640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (55, '{"lat": 45.5193597940289, "lon": 14.7891490859372, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "OSILNICA", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Osilnica"}}', 'Borič I', '101-094', true, '0101000020E61000008B8957590B942D40141BB9617AC24640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (56, '{"lat": 45.5564269929794, "lon": 15.0682367385763, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "PREDGRAD", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Luščiči', '097-070', true, '0101000020E6100000492401EDEF222E409EBAECFF38C74640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (57, '{"lat": 45.5087506676729, "lon": 15.0361847953466, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "PREDGRAD", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Kočevje"}}', 'Vršič', '097-069', true, '0101000020E6100000884041D086122E409ABCEBBD1EC14640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (58, '{"lat": 45.7287499420797, "lon": 14.6753013740335, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "RIBNICA", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Ribnica"}}', 'Geben', '286-140', true, '0101000020E6100000D2D5081AC1592D40D51898AD47DD4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (59, '{"lat": 45.7361916390594, "lon": 14.7767699343539, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "RIBNICA", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Ribnica"}}', 'Jeshova dolina', '286-141', true, '0101000020E6100000BA21F1C9B48D2D40A2AC12873BDE4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (60, '{"lat": 45.49068180121, "lon": 15.1334048282672, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "SINJI VRH", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Črnomelj"}}', 'Grobek', '041-040', true, '0101000020E610000072123DA34D442E403E7848A9CEBE4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (61, '{"lat": 45.4573754526125, "lon": 15.14355514732, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "SINJI VRH", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Črnomelj"}}', 'Široki del', '041-038', true, '0101000020E6100000D1D26D0F80492E405D7B61478BBA4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (62, '{"lat": 45.4771461399057, "lon": 15.162791194274, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "SINJI VRH", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Črnomelj"}}', 'Škrilje', '041-039', true, '0101000020E610000086F70E5E59532E406327ED1F13BD4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (63, '{"lat": 45.6778598404896, "lon": 15.1197290612773, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "SMUK SEMIČ", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Semič"}}', 'Ašelica', '038-035', true, '0101000020E61000002122A5204D3D2E405D167B1CC4D64640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (64, '{"lat": 45.6319493981282, "lon": 15.1375872957275, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "SMUK SEMIČ", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Semič"}}', 'Kleč', '038-034', true, '0101000020E610000030FD8ED771462E4001D8C6B7E3D04640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (65, '{"lat": 45.7241751165945, "lon": 14.6496342236833, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "SODRAŽICA", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Sodražica"}}', 'Globoka dolina', '284-138', true, '0101000020E6100000262A62DB9C4C2D40D82C2DC5B1DC4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (66, '{"lat": 45.7836395749261, "lon": 14.7473873606657, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "STRUGE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Dobrepolje"}}', 'Špičnik', '098-071', true, '0101000020E610000083015F8EA97E2D405D14354D4EE44640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (67, '{"lat": 45.8010202693923, "lon": 14.8003104581519, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "STRUGE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Dobrepolje"}}', 'Debeli hrib', '063-051', true, '0101000020E610000087D1D84AC2992D40903C0AD587E64640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (68, '{"lat": 45.8037971285574, "lon": 14.851117729785, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "SUHA KRAJINA", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Ivančna Gorica"}}', 'Leseni hrib', '063-052', true, '0101000020E6100000CAF1FCB3C5B32D40E5E205D3E2E64640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (69, '{"lat": 45.8397780344261, "lon": 14.8432977540589, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "SUHA KRAJINA", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Ivančna Gorica"}}', 'Volčje', '063-053', true, '0101000020E610000051F224B9C4AF2D4035E1BCD87DEB4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (70, '{"lat": 45.8978920453881, "lon": 14.6691622087311, "spatial_request_result": {"oe_ime": "LJUBLJANA", "lov_ime": "TABORSKA JAMA", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Grosuplje"}}', 'Jelovec', '060-046', true, '0101000020E61000004070D46D9C562D40DF236520EEF24640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (71, '{"lat": 45.866084938366, "lon": 14.5740427985083, "spatial_request_result": {"oe_ime": "LJUBLJANA", "lov_ime": "TURJAK", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Velike Lašče"}}', 'Beli pesek', '158-103', true, '0101000020E6100000F3310CF0E8252D408EEB0ADFDBEE4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (72, '{"lat": 45.8093614782534, "lon": 14.564182270072, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "VELIKE LAŠČE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Velike Lašče"}}', 'Železnica', '164-105', true, '0101000020E61000008EE29D7FDC202D40C5DE2B2899E74640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (73, '{"lat": 45.790018585519, "lon": 14.7058144664871, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "VELIKE POLJANE", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Ribnica"}}', 'Šoba', '283-137', true, '0101000020E61000004036858360692D40AA043A541FE54640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (74, '{"lat": 45.4904694624869, "lon": 15.2575021023979, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "VINICA", "luo_ime": "Kočevsko Belokranjsko", "ob_uime": "Črnomelj"}}', 'Hobiljec', '040-037', true, '0101000020E61000009CE6C850D7832E40B3880EB4C7BE4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (75, '{"lat": 45.6229973680881, "lon": 14.537416459838, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "BABNO POLJE", "luo_ime": "Notranjsko", "ob_uime": "Loška dolina"}}', 'Beriščkova draga', '035-016', true, '0101000020E610000020AC0E4028132D405EB7B460BECF4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (76, '{"lat": 45.8411578416132, "lon": 14.3450805850603, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "BEGUNJE", "luo_ime": "Notranjsko", "ob_uime": "Cerknica"}}', 'Senožeti', '026-007', true, '0101000020E61000001BA30667AEB02C405140660FABEB4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (77, '{"lat": 45.8023567968677, "lon": 14.4072864192466, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "BEGUNJE", "luo_ime": "Notranjsko", "ob_uime": "Cerknica"}}', 'Slivnica', '026-006', true, '0101000020E6100000DA8975D887D02C408F22A5A0B3E64640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (78, '{"lat": 45.8633528535691, "lon": 14.3718656233507, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "BEGUNJE", "luo_ime": "Notranjsko", "ob_uime": "Cerknica"}}', 'Vinji vrh', '026-008', true, '0101000020E61000007298C52B65BE2C40657EA75882EE4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (79, '{"lat": 45.8384769670105, "lon": 14.4326492580206, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "CAJNARJE", "luo_ime": "Notranjsko", "ob_uime": "Cerknica"}}', 'Kranjče', '026-011', true, '0101000020E610000095AC1B3484DD2C4031E1973653EB4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (80, '{"lat": 45.7721478578479, "lon": 14.3150299763882, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "CERKNICA", "luo_ime": "Notranjsko", "ob_uime": "Cerknica"}}', 'Balantove doline', '027-010', true, '0101000020E610000094B1EB9B4BA12C400691B2BDD5E24640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (81, '{"lat": 45.8211652222782, "lon": 14.3404891164232, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "CERKNICA", "luo_ime": "Notranjsko", "ob_uime": "Cerknica"}}', 'Puntar', '027-009', true, '0101000020E6100000EC5CE79654AE2C400E2627F11BE94640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (82, '{"lat": 45.719324128593, "lon": 14.3606358050914, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "GORNJE JEZERO", "luo_ime": "Notranjsko", "ob_uime": "Pivka"}}', 'Sovinjšček', '037-033', true, '0101000020E610000099449941A5B82C40E9C323D012DC4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (84, '{"lat": 45.9025375995609, "lon": 14.4693720311896, "spatial_request_result": {"oe_ime": "LJUBLJANA", "lov_ime": "IG", "luo_ime": "Notranjsko", "ob_uime": "Ig"}}', 'Jernejčkov laz', '156-102', true, '0101000020E6100000B03BE78751F02C4022C3205A86F34640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (85, '{"lat": 45.7084815958199, "lon": 14.5379961518321, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "IGA VAS", "luo_ime": "Notranjsko", "ob_uime": "Loška dolina"}}', 'Urši lazi/ Joškov kot', '034-015', true, '0101000020E610000057FC4A3B74132D40A2EE6186AFDA4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (86, '{"lat": 45.7591737318859, "lon": 14.2617253235729, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "JAVORNIK POSTOJNA", "luo_ime": "Notranjsko", "ob_uime": "Postojna"}}', 'Baba', '242-056', true, '0101000020E6100000C78F92DC00862C405637D79A2CE14640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (87, '{"lat": 45.5703448805947, "lon": 14.2752086568654, "spatial_request_result": {"oe_ime": "SEŽANA", "lov_ime": "KOZLEK", "luo_ime": "Notranjsko", "ob_uime": "Ilirska Bistrica"}}', 'Brozinov žleb', '077-057', true, '0101000020E610000045A02926E88C2C4030CCA00F01C94640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (88, '{"lat": 45.5500397323553, "lon": 14.3634545241294, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "LPN JELEN SNEŽNIK", "luo_ime": "Notranjsko", "ob_uime": "Ilirska Bistrica"}}', 'Batistov laz', '036-021', true, '0101000020E61000003E701DB616BA2C40BBFBB2B367C64640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (89, '{"lat": 45.644372813821, "lon": 14.4859262488293, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "LPN JELEN SNEŽNIK", "luo_ime": "Notranjsko", "ob_uime": "Loška dolina"}}', 'Bezgovice', '036-027', true, '0101000020E6100000BAFA4553CBF82C407BE5F0CE7AD24640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (90, '{"lat": 45.6382741767857, "lon": 14.3487310767596, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "LPN JELEN SNEŽNIK", "luo_ime": "Notranjsko", "ob_uime": "Ilirska Bistrica"}}', 'Bradlov laz', '036-026', true, '0101000020E6100000279033E18CB22C408296DDF7B2D14640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (91, '{"lat": 45.6618322589872, "lon": 14.3779728973843, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "LPN JELEN SNEŽNIK", "luo_ime": "Notranjsko", "ob_uime": "Pivka"}}', 'Dedna gora (barka)', '036-030', true, '0101000020E61000008614E2A985C12C40D9E461EBB6D44640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (92, '{"lat": 45.6833414230855, "lon": 14.3623295771714, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "LPN JELEN SNEŽNIK", "luo_ime": "Notranjsko", "ob_uime": "Pivka"}}', 'Jurjeva dolina-Pogoreli vrh', '036-031', true, '0101000020E610000050A6284383B92C40BC1354BB77D74640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (93, '{"lat": 45.6872612897974, "lon": 14.4226254489953, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "LPN JELEN SNEŽNIK", "luo_ime": "Notranjsko", "ob_uime": "Loška dolina"}}', 'Kačičji laz', '036-032', true, '0101000020E6100000CFC8E35C62D82C404CBE8D2DF8D74640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (94, '{"lat": 45.5778346293151, "lon": 14.4967845107316, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "LPN JELEN SNEŽNIK", "luo_ime": "Notranjsko", "ob_uime": "Ilirska Bistrica"}}', 'Kujavič', '036-023', true, '0101000020E6100000B780158A5AFE2C40C7B3317CF6C94640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (95, '{"lat": 45.6557107079601, "lon": 14.4114017272616, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "LPN JELEN SNEŽNIK", "luo_ime": "Notranjsko", "ob_uime": "Pivka"}}', 'Laz pri hiši', '036-028', true, '0101000020E61000008036483FA3D22C40B4291754EED34640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (96, '{"lat": 45.5118183260293, "lon": 14.4269818157931, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "LPN JELEN SNEŽNIK", "luo_ime": "Notranjsko", "ob_uime": "Ilirska Bistrica"}}', 'Lupova Draga', '036-017', true, '0101000020E6100000DAA24D5C9DDA2C400FE54D4383C14640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (97, '{"lat": 45.6559332533009, "lon": 14.45630867203, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "LPN JELEN SNEŽNIK", "luo_ime": "Notranjsko", "ob_uime": "Loška dolina"}}', 'Malenski lazi', '036-029', true, '0101000020E6100000EB7F4E4AA1E92C409EA4EF9EF5D34640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (98, '{"lat": 45.5798784840422, "lon": 14.3651676488732, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "LPN JELEN SNEŽNIK", "luo_ime": "Notranjsko", "ob_uime": "Ilirska Bistrica"}}', 'Jesenovci', '036-022', true, '0101000020E610000080EF0A41F7BA2C40C74E4A7539CA4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (99, '{"lat": 45.5386195111275, "lon": 14.3895765604505, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "LPN JELEN SNEŽNIK", "luo_ime": "Notranjsko", "ob_uime": "Ilirska Bistrica"}}', 'Okroglina-Palež', '036-019', true, '0101000020E6100000B0D8349476C72C40D7A3F07BF1C44640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (100, '{"lat": 45.6343448355141, "lon": 14.4578001035591, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "LPN JELEN SNEŽNIK", "luo_ime": "Notranjsko", "ob_uime": "Loška dolina"}}', 'Ovčarija', '036-025', true, '0101000020E610000081C871C664EA2C40B275293632D14640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (101, '{"lat": 45.5408394179495, "lon": 14.4740656275154, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "LPN JELEN SNEŽNIK", "luo_ime": "Notranjsko", "ob_uime": "Ilirska Bistrica"}}', 'Vala', '036-020', true, '0101000020E610000040ACDCBAB8F22C40843DDE393AC54640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (102, '{"lat": 45.5326019480014, "lon": 14.4446951860854, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "LPN JELEN SNEŽNIK", "luo_ime": "Notranjsko", "ob_uime": "Ilirska Bistrica"}}', 'Vel. Dolčiči', '036-018', true, '0101000020E6100000DBD96116AFE32C40D639F64C2CC44640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (103, '{"lat": 45.8914219293475, "lon": 14.3238734699283, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "LPN  LJUBLJANSKI VRH", "luo_ime": "Notranjsko", "ob_uime": "Cerknica"}}', 'Predole', '148-097', true, '0101000020E6100000AFC452BED2A52C4007BE201D1AF24640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (104, '{"lat": 45.940425258852, "lon": 14.3181193769685, "spatial_request_result": {"oe_ime": "LJUBLJANA", "lov_ime": "LPN  LJUBLJANSKI VRH", "luo_ime": "Notranjsko", "ob_uime": "Vrhnika"}}', 'Skalčna pot', '148-098', true, '0101000020E6100000809B008BE0A22C40058DD9DA5FF84640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (105, '{"lat": 45.8869214578672, "lon": 14.4981238917221, "spatial_request_result": {"oe_ime": "LJUBLJANA", "lov_ime": "MOKRC", "luo_ime": "Notranjsko", "ob_uime": "Ig"}}', 'Colnarica', '151-100', true, '0101000020E6100000E99A40180AFF2C407ED46FA486F14640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (106, '{"lat": 45.8360947818941, "lon": 14.5216228969904, "spatial_request_result": {"oe_ime": "KOČEVJE", "lov_ime": "MOKRC", "luo_ime": "Notranjsko", "ob_uime": "Velike Lašče"}}', 'Gaberje', '151-101', true, '0101000020E61000004CD60628120B2D40B24B602705EB4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (107, '{"lat": 45.8709007090408, "lon": 14.5397436302018, "spatial_request_result": {"oe_ime": "LJUBLJANA", "lov_ime": "MOKRC", "luo_ime": "Notranjsko", "ob_uime": "Velike Lašče"}}', 'Potošlarca', '151-099', true, '0101000020E6100000D8E1EF4659142D4060B2A7AC79EF4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (108, '{"lat": 45.7168950464085, "lon": 14.2566175873453, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "PIVKA", "luo_ime": "Notranjsko", "ob_uime": "Pivka"}}', 'Zgornje Ravne', '244-136', true, '0101000020E6100000E873626163832C40917E8537C3DB4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (109, '{"lat": 45.8737143503126, "lon": 14.2970375978746, "spatial_request_result": {"oe_ime": "LJUBLJANA", "lov_ime": "RAKEK", "luo_ime": "Notranjsko", "ob_uime": "Cerknica"}}', 'Pranger', '031-014', true, '0101000020E61000009E1BE14F15982C40BB5130DFD5EF4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (110, '{"lat": 45.79258730486, "lon": 14.2736194379896, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "RAKEK", "luo_ime": "Notranjsko", "ob_uime": "Cerknica"}}', 'Unški tali', '031-013', true, '0101000020E6100000316ED3D8178C2C4098CC348073E54640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (111, '{"lat": 45.8709344231057, "lon": 14.4459725410217, "spatial_request_result": {"oe_ime": "LJUBLJANA", "lov_ime": "RAKITNA", "luo_ime": "Notranjsko", "ob_uime": "Brezovica"}}', 'Piren pod', '168-106', true, '0101000020E610000042344D8356E42C40881978C77AEF4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (112, '{"lat": 45.8874253313472, "lon": 14.4148860047319, "spatial_request_result": {"oe_ime": "LJUBLJANA", "lov_ime": "RAKITNA", "luo_ime": "Notranjsko", "ob_uime": "Brezovica"}}', 'Zagabrnice', '168-107', true, '0101000020E610000071C83BF06BD42C4097E33B2797F14640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (113, '{"lat": 45.9262827984743, "lon": 14.4124146480016, "spatial_request_result": {"oe_ime": "LJUBLJANA", "lov_ime": "RAKITNA", "luo_ime": "Notranjsko", "ob_uime": "Borovnica"}}', 'Zavodi', '168-108', true, '0101000020E6100000CA1D430328D32C40B6254B6F90F64640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (114, '{"lat": 45.8886353059982, "lon": 14.5893320909578, "spatial_request_result": {"oe_ime": "LJUBLJANA", "lov_ime": "RAKOVNIK ŠKOFLJICA", "luo_ime": "Notranjsko", "ob_uime": "Ig"}}', 'Brezinca', '163-104', true, '0101000020E61000005A4B92EFBC2D2D40A7AA3CCDBEF14640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (115, '{"lat": 45.6830199929685, "lon": 14.3071323302623, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "TABOR ZAGORJE", "luo_ime": "Notranjsko", "ob_uime": "Pivka"}}', 'Ropatija', '237-131', true, '0101000020E6100000B50AE472409D2C402B28FA326DD74640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (116, '{"lat": 45.951110930934, "lon": 14.4663288477636, "spatial_request_result": {"oe_ime": "LJUBLJANA", "lov_ime": "TOMIŠELJ", "luo_ime": "Notranjsko", "ob_uime": "Ig"}}', 'Izduhe', '145-095', true, '0101000020E610000008A79CA7C2EE2C40669DC300BEF94640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (117, '{"lat": 45.5986259494277, "lon": 14.3389354072973, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "TRNOVO", "luo_ime": "Notranjsko", "ob_uime": "Ilirska Bistrica"}}', 'Vidovi lazi', '081-063', true, '0101000020E6100000BA9813F188AD2C401BAA6DC69FCC4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (118, '{"lat": 45.4880636897022, "lon": 14.3594195635828, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "ZEMON", "luo_ime": "Notranjsko", "ob_uime": "Ilirska Bistrica"}}', 'Dletvo', '073-058', true, '0101000020E6100000D7424ED705B82C4067D1F8DE78BE4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (119, '{"lat": 45.51010157539, "lon": 14.2823813389147, "spatial_request_result": {"oe_ime": "SEŽANA", "lov_ime": "ZEMON", "luo_ime": "Notranjsko", "ob_uime": "Ilirska Bistrica"}}', 'Šentjak', '078-059', true, '0101000020E61000004B476F4994902C4011F827024BC14640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (120, '{"lat": 45.8410989913021, "lon": 15.0165354980206, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "DOBRNIČ", "luo_ime": "Novomeško", "ob_uime": "Trebnje"}}', 'Gabrove doline', '377-155', true, '0101000020E610000065713E5777082E40A52BBA21A9EB4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (121, '{"lat": 45.7464823201111, "lon": 15.2888144299483, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "GORJANCI", "luo_ime": "Novomeško", "ob_uime": "Novo mesto"}}', 'Gajski jarek', '226-127', true, '0101000020E6100000647B267CDF932E40ADF58FBB8CDF4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (122, '{"lat": 45.7287771256041, "lon": 15.2367277964321, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "GORJANCI", "luo_ime": "Novomeško", "ob_uime": "Novo mesto"}}', 'Vahta', '226-126', true, '0101000020E6100000D375BF6234792E407645A09148DD4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (123, '{"lat": 45.8099471763955, "lon": 15.0684555778225, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "NOVO MESTO", "luo_ime": "Novomeško", "ob_uime": "Žužemberk"}}', 'Dule', '216-115', true, '0101000020E6100000F4F3079C0C232E40980D5D59ACE74640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (124, '{"lat": 45.7893980658905, "lon": 15.0465267768926, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "NOVO MESTO", "luo_ime": "Novomeško", "ob_uime": "Žužemberk"}}', 'Mihovka', '216-114', true, '0101000020E61000009A48925BD2172E404343EEFE0AE54640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (125, '{"lat": 45.76963910773, "lon": 15.3423558382884, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "OREHOVICA", "luo_ime": "Novomeško", "ob_uime": "Šentjernej"}}', 'Peteršilka', '224-125', true, '0101000020E61000002D16B24349AF2E402AB6C68883E24640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (126, '{"lat": 45.7030221024453, "lon": 15.1788558555751, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "PADEŽ", "luo_ime": "Novomeško", "ob_uime": "Novo mesto"}}', 'Kilovec', '218-116', true, '0101000020E610000059C9A4FE925B2E400B2FD5A0FCD94640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (127, '{"lat": 45.7259513750546, "lon": 15.1590158080677, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "PADEŽ", "luo_ime": "Novomeško", "ob_uime": "Novo mesto"}}', 'Odd. 7c', '218-117', true, '0101000020E610000050651E856A512E40442C83F9EBDC4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (128, '{"lat": 45.8441064416121, "lon": 14.9572111602922, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "DOBRNIČ", "luo_ime": "Novomeško", "ob_uime": "Trebnje"}}', 'Čeplje – Gliha', '221-121', true, '0101000020E610000080A4C99417EA2D4094880CAE0BEC4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (129, '{"lat": 45.8210751211258, "lon": 14.8932179548678, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "PLEŠIVICA", "luo_ime": "Novomeško", "ob_uime": "Žužemberk"}}', 'Debeli hrib – Črnagoj', '221-120', true, '0101000020E6100000F2B620DD53C92D40B36554FD18E94640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (130, '{"lat": 45.7986483566348, "lon": 15.0014078245012, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "PLEŠIVICA", "luo_ime": "Novomeško", "ob_uime": "Žužemberk"}}', 'Dule-Andrejčič', '221-119', true, '0101000020E6100000C961C086B8002E400D60FE1B3AE64640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (131, '{"lat": 45.7860407032525, "lon": 15.3879071138404, "spatial_request_result": {"oe_ime": "BREŽICE", "lov_ime": "ŠENTJERNEJ", "luo_ime": "Novomeško", "ob_uime": "Šentjernej"}}', 'Ravna gora', '220-118', true, '0101000020E610000016A9DFC29BC62E40AAE554FB9CE44640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (132, '{"lat": 45.6946994686777, "lon": 15.096164939572, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "TOPLICE", "luo_ime": "Novomeško", "ob_uime": "Dolenjske Toplice"}}', 'Pajkež', '222-122', true, '0101000020E610000081F7EC873C312E407A4285E9EBD84640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (133, '{"lat": 45.7656545178631, "lon": 15.0888301056035, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "TOPLICE", "luo_ime": "Novomeško", "ob_uime": "Straža"}}', 'Staja', '222-123', true, '0101000020E61000003BEFBC237B2D2E40E0209DF700E24640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (134, '{"lat": 45.487469250111, "lon": 14.1329915839096, "spatial_request_result": {"oe_ime": "SEŽANA", "lov_ime": "Brkini", "luo_ime": "Primorsko", "ob_uime": "Ilirska Bistrica"}}', 'Kovačeva senožet', '080-062', true, '0101000020E6100000E4110F7917442C402A84736465BE4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (135, '{"lat": 45.4904440302085, "lon": 14.1700473801809, "spatial_request_result": {"oe_ime": "SEŽANA", "lov_ime": "Bukovica", "luo_ime": "Primorsko", "ob_uime": "Ilirska Bistrica"}}', 'Plasine', '079-061', true, '0101000020E61000008A4B417310572C40C221B7DEC6BE4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (136, '{"lat": 45.4779763014067, "lon": 14.1881375326327, "spatial_request_result": {"oe_ime": "SEŽANA", "lov_ime": "Bukovica", "luo_ime": "Primorsko", "ob_uime": "Ilirska Bistrica"}}', 'Pod Kovnico', '079-060', true, '0101000020E6100000929D0B9053602C400A67D3532EBD4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (137, '{"lat": 45.7159506996585, "lon": 13.9633151322648, "spatial_request_result": {"oe_ime": "SEŽANA", "lov_ime": "Gaberk-Divača", "luo_ime": "Primorsko", "ob_uime": "Sežana"}}', 'Čebulovica', '300-149', true, '0101000020E610000068A319A437ED2B40734AC445A4DB4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (138, '{"lat": 45.6899543457037, "lon": 14.1362878517712, "spatial_request_result": {"oe_ime": "SEŽANA", "lov_ime": "Gradišče-Košana", "luo_ime": "Primorsko", "ob_uime": "Pivka"}}', 'Škrnik', '243-135', true, '0101000020E61000001A667485C7452C40E9438B6C50D84640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (139, '{"lat": 45.7561045574842, "lon": 14.0283467027197, "spatial_request_result": {"oe_ime": "SEŽANA", "lov_ime": "Senožeče", "luo_ime": "Primorsko", "ob_uime": "Divača"}}', 'Kalinovec', '296-146', true, '0101000020E6100000C0428275830E2C402660BD08C8E04640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (140, '{"lat": 45.7295803989493, "lon": 14.0954241686495, "spatial_request_result": {"oe_ime": "SEŽANA", "lov_ime": "Senožeče", "luo_ime": "Primorsko", "ob_uime": "Divača"}}', 'Leskovca', '296-145', true, '0101000020E61000000132C76FDB302C401CA5F8E362DD4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (141, '{"lat": 45.6970074947106, "lon": 14.0608560962695, "spatial_request_result": {"oe_ime": "SEŽANA", "lov_ime": "Senožeče", "luo_ime": "Primorsko", "ob_uime": "Divača"}}', 'Vremščica', '296-144', true, '0101000020E6100000D47ABE87281F2C40A76CA58A37D94640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (142, '{"lat": 45.5966709539069, "lon": 14.0556098554275, "spatial_request_result": {"oe_ime": "SEŽANA", "lov_ime": "Slavnik-Materija", "luo_ime": "Primorsko", "ob_uime": "Hrpelje-Kozina"}}', 'Javor', '307-152', true, '0101000020E61000000DCB1CE5781C2C406AC0BCB65FCC4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (143, '{"lat": 45.5456098330534, "lon": 14.0409698972191, "spatial_request_result": {"oe_ime": "SEŽANA", "lov_ime": "Slavnik-Materija", "luo_ime": "Primorsko", "ob_uime": "Hrpelje-Kozina"}}', 'Mavrovc', '307-151', true, '0101000020E61000007C5AA101FA142C408CAB028BD6C54640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (144, '{"lat": 45.633666213854, "lon": 14.0881827237429, "spatial_request_result": {"oe_ime": "SEŽANA", "lov_ime": "Timav-Vreme", "luo_ime": "Primorsko", "ob_uime": "Divača"}}', 'Padež', '299-147', true, '0101000020E61000007C183549262D2C40A58A78F91BD14640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (145, '{"lat": 45.6706691797874, "lon": 14.039105683557, "spatial_request_result": {"oe_ime": "SEŽANA", "lov_ime": "Timav-Vreme", "luo_ime": "Primorsko", "ob_uime": "Divača"}}', 'Sadeže', '299-148', true, '0101000020E610000020EEFFA805142C409CCFD87CD8D54640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (146, '{"lat": 45.483824384951, "lon": 14.1037791676688, "spatial_request_result": {"oe_ime": "SEŽANA", "lov_ime": "Žabnik-Obrov", "luo_ime": "Primorsko", "ob_uime": "Hrpelje-Kozina"}}', 'Goli vrh', '303-150', true, '0101000020E61000008E49068B22352C409F2F1BF5EDBD4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (147, '{"lat": 46.2006175582474, "lon": 13.8369058882434, "spatial_request_result": {"oe_ime": "TOLMIN", "lov_ime": "LPN PRODI - RAZOR", "luo_ime": "Triglavsko", "ob_uime": "Tolmin"}}', 'Lisec', '368-154', true, '0101000020E6100000AEABB7ED7EAC2B4083D60DD6AD194740');
INSERT INTO mb2data.cnt_permanent_spots VALUES (148, '{"lat": 46.1381260956536, "lon": 13.7973230822278, "spatial_request_result": {"oe_ime": "TOLMIN", "lov_ime": "PLANOTA", "luo_ime": "Triglavsko", "ob_uime": "Tolmin"}}', 'Pleča', '364-153', true, '0101000020E6100000700725BB3A982B4032C7AB1DAE114740');
INSERT INTO mb2data.cnt_permanent_spots VALUES (149, '{"lat": 45.8510667130954, "lon": 14.1428105235381, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "BUKOVJE", "luo_ime": "Zahodno visoko Kraško", "ob_uime": "Postojna"}}', 'Konfinska pot', '240-133', true, '0101000020E6100000E93D00761E492C40BCBA09C1EFEC4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (150, '{"lat": 45.8030625983622, "lon": 14.224596420912, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "ČRNA JAMA", "luo_ime": "Zahodno visoko Kraško", "ob_uime": "Postojna"}}', 'Pod Travnim vrhom', '238-132', true, '0101000020E61000002D3B554DFE722C409E4D56C1CAE64640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (151, '{"lat": 45.8832984733948, "lon": 14.1217013384585, "spatial_request_result": {"oe_ime": "TOLMIN", "lov_ime": "JAVORNIK ČRNI VRH", "luo_ime": "Zahodno visoko Kraško", "ob_uime": "Idrija"}}', 'Hrušica zgornja', '173-111', true, '0101000020E61000000F1E49A34F3E2C4030EBA3EC0FF14640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (152, '{"lat": 45.9262308575551, "lon": 13.8675388660579, "spatial_request_result": {"oe_ime": "TOLMIN", "lov_ime": "HUBELJ", "luo_ime": "Zahodno visoko Kraško", "ob_uime": "Ajdovščina"}}', 'Zagriža', '007-005', true, '0101000020E61000008D74E30D2EBC2B4065DF94BB8EF64640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (153, '{"lat": 45.9320411586883, "lon": 13.9942409521956, "spatial_request_result": {"oe_ime": "TOLMIN", "lov_ime": "JAVORNIK ČRNI VRH", "luo_ime": "Zahodno visoko Kraško", "ob_uime": "Idrija"}}', 'Ožbičev laz', '073-134', true, '0101000020E6100000660C6C260DFD2B40C98BEB1F4DF74640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (154, '{"lat": 45.9385169901889, "lon": 13.92383904653, "spatial_request_result": {"oe_ime": "TOLMIN", "lov_ime": "KOZJE STENA", "luo_ime": "Zahodno visoko Kraško", "ob_uime": "Ajdovščina"}}', 'Ilovna ravnica', '006-004', true, '0101000020E6100000693A776E01D92B4009CD215321F84640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (155, '{"lat": 45.9910442485965, "lon": 13.8889365383694, "spatial_request_result": {"oe_ime": "TOLMIN", "lov_ime": "KREKOVŠE", "luo_ime": "Zahodno visoko Kraško", "ob_uime": "Idrija"}}', 'Bukov vrh', '070-055', true, '0101000020E61000002408A1B022C72B40344EB689DAFE4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (156, '{"lat": 45.8966130195302, "lon": 14.2896610982135, "spatial_request_result": {"oe_ime": "LJUBLJANA", "lov_ime": "LOGATEC", "luo_ime": "Zahodno visoko Kraško", "ob_uime": "Logatec"}}', 'Ajnzar', '172-109', true, '0101000020E610000022809F754E942C4068062637C4F24640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (157, '{"lat": 45.9158347292285, "lon": 14.270079366195, "spatial_request_result": {"oe_ime": "LJUBLJANA", "lov_ime": "LOGATEC", "luo_ime": "Zahodno visoko Kraško", "ob_uime": "Logatec"}}', 'Mačkovo', '172-110', true, '0101000020E61000008243BAD7478A2C40F04989123AF54640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (158, '{"lat": 45.8109735597642, "lon": 14.013599735789, "spatial_request_result": {"oe_ime": "TOLMIN", "lov_ime": "NANOS", "luo_ime": "Zahodno visoko Kraško", "ob_uime": "Vipava"}}', 'Dolga rovna', '005-003', true, '0101000020E61000006CE5688BF6062C40D58D4AFBCDE74640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (159, '{"lat": 45.8049276041897, "lon": 14.0650394765621, "spatial_request_result": {"oe_ime": "TOLMIN", "lov_ime": "NANOS", "luo_ime": "Zahodno visoko Kraško", "ob_uime": "Vipava"}}', 'Požganina', '005-002', true, '0101000020E61000000391B1DA4C212C4033D223DE07E74640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (160, '{"lat": 45.8631736291862, "lon": 14.199291350666, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "PLANINA", "luo_ime": "Zahodno visoko Kraško", "ob_uime": "Postojna"}}', 'Doline', '236-129', true, '0101000020E6100000EEF8128409662C40E60F36797CEE4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (161, '{"lat": 45.9092790222053, "lon": 14.2308523584385, "spatial_request_result": {"oe_ime": "LJUBLJANA", "lov_ime": "LOGATEC", "luo_ime": "Zahodno visoko Kraško", "ob_uime": "Logatec"}}', 'Kališe', '236-130', true, '0101000020E61000004165C34732762C40BFA7474163F44640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (162, '{"lat": 45.8400456345797, "lon": 14.2382436732959, "spatial_request_result": {"oe_ime": "POSTOJNA", "lov_ime": "PLANINA", "luo_ime": "Zahodno visoko Kraško", "ob_uime": "Postojna"}}', 'Planinska gora', '236-128', true, '0101000020E6100000CA912213FB792C4068D5879D86EB4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (163, '{"lat": 45.9569425936511, "lon": 13.8705255000316, "spatial_request_result": {"oe_ime": "TOLMIN", "lov_ime": "TRNOVSKI GOZD", "luo_ime": "Zahodno visoko Kraško", "ob_uime": "Ajdovščina"}}', 'Korenine', '204-112', true, '0101000020E610000070F0B184B5BD2B40BCF04B187DFA4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (164, '{"lat": 45.9915363793801, "lon": 13.8300633654457, "spatial_request_result": {"oe_ime": "TOLMIN", "lov_ime": "TRNOVSKI GOZD", "luo_ime": "Zahodno visoko Kraško", "ob_uime": "Nova Gorica"}}', 'Krajni žleb', '204-113', true, '0101000020E6100000E064C010FEA82B40A41D01AAEAFE4640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (165, '{"lat": 45.7815560051201, "lon": 13.983447473412, "spatial_request_result": {"oe_ime": "TOLMIN", "lov_ime": "VOJKOVO", "luo_ime": "Zahodno visoko Kraško", "ob_uime": "Vipava"}}', 'Kol', '003-001', true, '0101000020E6100000C6465F6D86F72B40E0FDF4060AE44640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (166, '{"lat": 45.9481321384233, "lon": 14.2554671943071, "spatial_request_result": {"oe_ime": "LJUBLJANA", "lov_ime": "VRHNIKA", "luo_ime": "Zahodno visoko Kraško", "ob_uime": "Vrhnika"}}', 'Raskovec', '387-156', true, '0101000020E6100000F57F9998CC822C404A68D7645CF94640');
INSERT INTO mb2data.cnt_permanent_spots VALUES (167, '{"lat": 45.9091043522175, "lon": 14.879193156538, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "ŠENTVID PRI STIČNI", "luo_ime": "Zasavsko", "ob_uime": "Ivančna Gorica"}}', 'Sad', '064-054', true, '0101000020E61000003065FC9A25C22D4073B60A885DF44640');


--
-- Data for Name: ct; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.ct VALUES (1, 1046, 22, 2252, '2020-02-16', NULL, '["3407f6c8a04846adc6af14ca8d68d3753811ccd1"]', NULL, 1, NULL, 329, 1031, 1037, NULL, NULL, '03:27:53', 495, 1, 15, 561);
INSERT INTO mb2data.ct VALUES (2, 1046, 19, 2252, '2022-02-27', NULL, '["23fbf8276590dd293270edc161a8935b51c65a70"]', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '09:40:52', 496, 1, 16, 561);
INSERT INTO mb2data.ct VALUES (3, 1046, 12, 2252, '2020-09-02', NULL, '["02ae2d335e389499a47bbd9db928dce5981f7f2c"]', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 497, 1, 17, 560);


--
-- Data for Name: ct_cameras; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.ct_cameras VALUES (561, 2, 247, 'C175', 12445, 12447, NULL, 21);
INSERT INTO mb2data.ct_cameras VALUES (600, 2, 118, 'C022', 12445, 12447, NULL, 21);
INSERT INTO mb2data.ct_cameras VALUES (565, 2, 187, 'C111', 12445, 12446, NULL, 21);
INSERT INTO mb2data.ct_cameras VALUES (610, 2, 273, 'C201', 12445, 12447, NULL, 21);
INSERT INTO mb2data.ct_cameras VALUES (560, 2, 244, 'C172', 12445, 12446, NULL, 21);
INSERT INTO mb2data.ct_cameras VALUES (552, 2, 287, 'C216', 12445, 12447, NULL, 21);


--
-- Data for Name: ct_locations; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.ct_locations VALUES (529, NULL, '0101000020E61000000551F70148ED2D404051D9B0A6904640');
INSERT INTO mb2data.ct_locations VALUES (530, NULL, '0101000020E61000003C8386FE09AE2F40E5B8533A58234640');
INSERT INTO mb2data.ct_locations VALUES (531, NULL, '0101000020E61000000551F70148ED2D404051D9B0A6904640');


--
-- Data for Name: ct_sessions; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--



--
-- Data for Name: ct_sites; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.ct_sites VALUES (114, 2, 'CRO446', NULL, 4, NULL, 22);
INSERT INTO mb2data.ct_sites VALUES (115, 17, 'CRO600', NULL, 4, NULL, 22);
INSERT INTO mb2data.ct_sites VALUES (116, 13, 'CRO551', NULL, 4, NULL, 22);


--
-- Data for Name: ct_surveys; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.ct_surveys VALUES (15, 4, 1, 'Lifelynx 2020', NULL, NULL, 22);
INSERT INTO mb2data.ct_surveys VALUES (16, 4, 2, 'LifeLynx 2021', NULL, NULL, 22);
INSERT INTO mb2data.ct_surveys VALUES (17, 2, 203, 'LYNX2020_21', NULL, NULL, 21);


--
-- Data for Name: ct_trap_stations; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.ct_trap_stations VALUES (495, 6, 'CRO446_3', 114, 529, 4, NULL, 22, 15);
INSERT INTO mb2data.ct_trap_stations VALUES (496, 52, 'CRO600_4', 115, 530, 4, NULL, 22, 15);
INSERT INTO mb2data.ct_trap_stations VALUES (497, 63, 'CRO446_3', 114, 531, 4, NULL, 22, 16);


--
-- Data for Name: dmg; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.dmg VALUES (1563, 1, '08/BG2/11/2022', 745, 745, '["1467"]', 2047, '[{"key": "Način poškodovanja škodnega objekta", "value": ""}]', '[{"oid": 1648031387408, "data": {"enota": "kos", "affectee": "1467", "kolicina": "1", "varovanjePrisotno": true}, "text": "Čebelarstvo > Panj AŽ", "nodes": [{"icon": "fa fa-file-o", "text": "<b>Oškodovanec</b>&nbsp;STANKO ZOREC, ČIMERNO 11, 1433 Radeče (ID: 1467)", "selectable": false}, {"text": "Obseg škode", "nodes": [{"icon": "fa fa-file-o", "text": "<b>enota</b>&nbsp;kos", "selectable": false}, {"icon": "fa fa-file-o", "text": "<b>kolicina</b>&nbsp;1", "selectable": false}], "selectable": false}], "zgsKey": "Čebelarstvo", "objectKey": "Panj AŽ", "parentGroupKey": "Čebelarstvo"}]', NULL, NULL, NULL, '[]', '2022-03-15', '2022-03-17', '2022-03-17', '2022-03-17', '[]', 'Zelena žolna', '2022-03-23 11:29:54.215428', '2022-03-23 11:29:56.231276', NULL, 0, 1, '[]', 2, '0101000020E6100000CDFFFF6752452E40600B77CAC1094740', '{"lat": 46.076226528289, "lon": 15.135394334793, "spatial_request_result": {"oe_ime": "BREŽICE", "lov_ime": "RADEČE", "luo_ime": "Zasavsko", "ob_uime": "Radeče"}}', NULL);
INSERT INTO mb2data.dmg VALUES (1451, 1, '07/KMH/4/2022', 776, 776, '["1503"]', 2007, '[{"key": "Značilne sveže sledi (stopinje, dlaka, perje, iztrebki itd.) na škodnem objektu ali v neposredni bližini", "value": "sledovi kremplev medveda"}]', '[{"oid": 1643611703728, "data": {"enota": "kos", "affectee": "1503", "kolicina": "1", "_nacini_varovanja": [{"drog proti izvlačenju panjev (čebelnjak)": {"navedba": "dvignjen nivo panjev, drog proti izvleku panjev "}}], "varovanjePrisotno": true}, "text": "Čebelarstvo > Panj AŽ", "nodes": [{"icon": "fa fa-file-o", "text": "<b>Oškodovanec</b>&nbsp;Klobučar Marko, Stopiče 108, 8000 Novo mesto (ID: 1503)", "selectable": false}, {"text": "Obseg škode", "nodes": [{"icon": "fa fa-file-o", "text": "<b>enota</b>&nbsp;kos", "selectable": false}, {"icon": "fa fa-file-o", "text": "<b>kolicina</b>&nbsp;1", "selectable": false}], "selectable": false}, {"text": "Načini varovanja", "nodes": [{"icon": "fa fa-file-o", "text": "<b>drog proti izvlačenju panjev (čebelnjak)</b>&nbsp;{\"navedba\":\"dvignjen nivo panjev, drog proti izvleku panjev \"}", "selectable": false}], "selectable": false}], "zgsKey": "Čebelarstvo", "objectKey": "Panj AŽ", "parentGroupKey": "Čebelarstvo"}, {"oid": 1643611719246, "data": {"enota": "kos", "affectee": "1503", "kolicina": "2", "varovanjePrisotno": false}, "text": "Čebelarstvo > Deli panja: poškodovana brada panja AŽ", "nodes": [{"icon": "fa fa-file-o", "text": "<b>Oškodovanec</b>&nbsp;Klobučar Marko, Stopiče 108, 8000 Novo mesto (ID: 1503)", "selectable": false}, {"text": "Obseg škode", "nodes": [{"icon": "fa fa-file-o", "text": "<b>enota</b>&nbsp;kos", "selectable": false}, {"icon": "fa fa-file-o", "text": "<b>kolicina</b>&nbsp;2", "selectable": false}], "selectable": false}], "zgsKey": "Čebelarstvo", "objectKey": "Deli panja: poškodovana brada panja AŽ", "parentGroupKey": "Čebelarstvo"}, {"oid": 1643611728702, "data": {"enota": "kos", "affectee": "1503", "kolicina": "4", "varovanjePrisotno": false}, "text": "Čebelarstvo > Čebelja družina", "nodes": [{"icon": "fa fa-file-o", "text": "<b>Oškodovanec</b>&nbsp;Klobučar Marko, Stopiče 108, 8000 Novo mesto (ID: 1503)", "selectable": false}, {"text": "Obseg škode", "nodes": [{"icon": "fa fa-file-o", "text": "<b>enota</b>&nbsp;kos", "selectable": false}, {"icon": "fa fa-file-o", "text": "<b>kolicina</b>&nbsp;4", "selectable": false}], "selectable": false}], "zgsKey": "Čebelarstvo", "objectKey": "Čebelja družina", "parentGroupKey": "Čebelarstvo"}, {"oid": 1643611745229, "data": {"enota": "kos", "affectee": "1503", "kolicina": "60", "varovanjePrisotno": false}, "text": "Čebelarstvo > Deli panja: satnica z okvirjem", "nodes": [{"icon": "fa fa-file-o", "text": "<b>Oškodovanec</b>&nbsp;Klobučar Marko, Stopiče 108, 8000 Novo mesto (ID: 1503)", "selectable": false}, {"text": "Obseg škode", "nodes": [{"icon": "fa fa-file-o", "text": "<b>enota</b>&nbsp;kos", "selectable": false}, {"icon": "fa fa-file-o", "text": "<b>kolicina</b>&nbsp;60", "selectable": false}], "selectable": false}], "zgsKey": "Čebelarstvo", "objectKey": "Deli panja: satnica z okvirjem", "parentGroupKey": "Čebelarstvo"}, {"oid": 1643611754614, "data": {"enota": "panj", "affectee": "1503", "kolicina": "4", "varovanjePrisotno": false}, "text": "Čebelarstvo > Zimska zaloga (nakrmljeni sladkor)", "nodes": [{"icon": "fa fa-file-o", "text": "<b>Oškodovanec</b>&nbsp;Klobučar Marko, Stopiče 108, 8000 Novo mesto (ID: 1503)", "selectable": false}, {"text": "Obseg škode", "nodes": [{"icon": "fa fa-file-o", "text": "<b>enota</b>&nbsp;panj", "selectable": false}, {"icon": "fa fa-file-o", "text": "<b>kolicina</b>&nbsp;4", "selectable": false}], "selectable": false}], "zgsKey": "Čebelarstvo", "objectKey": "Zimska zaloga (nakrmljeni sladkor)", "parentGroupKey": "Čebelarstvo"}]', NULL, NULL, NULL, '[{"id": 8019, "name": "MK 4 zapisnik.pdf", "size": 154102, "properties": {"file_size": 154102}}]', '2022-01-23', '2022-01-23', '2022-01-23', '2022-01-25', '[]', 'Rjavi medved', '2022-01-31 07:49:28.638898', '2022-03-18 14:48:08.839243', NULL, 0, 1, '[]', 1, '0101000020E6100000F91EEAC537532E40E2F7B6ED41D94640', '{"lat": 45.697324480381, "lon": 15.162534890012, "spatial_request_result": {"oe_ime": "NOVO MESTO", "lov_ime": "PADEŽ", "luo_ime": "Novomeško", "ob_uime": "Novo mesto"}}', 11);
INSERT INTO mb2data.dmg VALUES (1564, 1, '04/PMB/1/2022', 778, 1455, '["1556"]', 2007, '[{"key": "Značilne sveže sledi (stopinje, dlaka, perje, iztrebki itd.) na škodnem objektu ali v neposredni bližini", "value": "Sledi medvedjih šap na zemljini in ograji"}]', '[{"oid": 1648032329526, "data": {"enota": "drugo", "navedba": "Žična ograja", "affectee": "1556", "kolicina": "1", "_nacini_varovanja": [{"mehanska ograja/ograda": {"navedba": "Žična ograja, višine 1,2m"}}], "varovanjePrisotno": true}, "text": "Drugo > Drugo (navedi)", "nodes": [{"icon": "fa fa-file-o", "text": "<b>Navedba</b>&nbsp;Žična ograja", "selectable": false}, {"icon": "fa fa-file-o", "text": "<b>Oškodovanec</b>&nbsp;Nada Šmigič, Cesta na Drenik 47, 1291 Škofljica (ID: 1556)", "selectable": false}, {"text": "Obseg škode", "nodes": [{"icon": "fa fa-file-o", "text": "<b>enota</b>&nbsp;drugo", "selectable": false}, {"icon": "fa fa-file-o", "text": "<b>kolicina</b>&nbsp;1", "selectable": false}], "selectable": false}, {"text": "Načini varovanja", "nodes": [{"icon": "fa fa-file-o", "text": "<b>mehanska ograja/ograda</b>&nbsp;{\"navedba\":\"Žična ograja, višine 1,2m\"}", "selectable": false}], "selectable": false}], "zgsKey": "Drugo", "objectKey": "Drugo (navedi)", "parentGroupKey": "Drugo"}, {"oid": 1648032359094, "data": {"enota": "drugo", "navedba": "kompostnik", "affectee": "1556", "kolicina": "0.999996", "_nacini_varovanja": [{"mehanska ograja/ograda": {"navedba": "Žična ograja, višine 1,2m"}}], "varovanjePrisotno": true}, "text": "Drugo > Drugo (navedi)", "nodes": [{"icon": "fa fa-file-o", "text": "<b>Navedba</b>&nbsp;kompostnik", "selectable": false}, {"icon": "fa fa-file-o", "text": "<b>Oškodovanec</b>&nbsp;Nada Šmigič, Cesta na Drenik 47, 1291 Škofljica (ID: 1556)", "selectable": false}, {"text": "Obseg škode", "nodes": [{"icon": "fa fa-file-o", "text": "<b>enota</b>&nbsp;drugo", "selectable": false}, {"icon": "fa fa-file-o", "text": "<b>kolicina</b>&nbsp;0.999996", "selectable": false}], "selectable": false}, {"text": "Načini varovanja", "nodes": [{"icon": "fa fa-file-o", "text": "<b>mehanska ograja/ograda</b>&nbsp;{\"navedba\":\"Žična ograja, višine 1,2m\"}", "selectable": false}], "selectable": false}], "zgsKey": "Drugo", "objectKey": "Drugo (navedi)", "parentGroupKey": "Drugo"}]', NULL, 'Skrb za osebno varnost, predvsem otrok!', NULL, '[]', '2022-03-14', '2022-03-14', '2022-03-14', '2022-03-15', '[]', 'Rjavi medved', '2022-03-23 11:46:43.503834', '2022-03-23 11:46:49.96161', NULL, 0, 2, '[]', 1, NULL, '{"id": null, "lat": null, "lon": null}', NULL);


--
-- Data for Name: dmg_affectees; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.dmg_affectees VALUES (284, 'dfsfsdfsd  fsd', 'fdfd', '13', 203, 2380, '021312333', NULL, 203, '00000000', 'SI56 0000 0000 0000 000', '');
INSERT INTO mb2data.dmg_affectees VALUES (285, 'lkdfmdsfj dsfs', 'ddd', '21', 203, 6243, '03140404', NULL, 203, '10237836', 'SI56 1010 0003 5671 745', '');
INSERT INTO mb2data.dmg_affectees VALUES (286, 'dfkds dfsd', 'dskmf fsd', '4', 203, 1223, '032618351', NULL, 203, '11523026', 'SI56 0230 3395 8753 392', '');
INSERT INTO mb2data.dmg_affectees VALUES (1670, 'dfs fs', 'dkfm fsd', '6', 203, 1338, '031353340', NULL, 203, '24588679', '023201622175819', NULL);


--
-- Data for Name: dmg_agreements; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.dmg_agreements VALUES (65, 1563, 284, '{"_status": "1", "_affectee": "421", "_odskodnina": [[{"key": "Rastlina na kmetijski površini / Rastlinski pridelek > Bale > Bale travna silaža", "oid": "__0"}, "7000.00", "kg", "0.04", "280.00", ["280.00", ""]]], "_attachments": [], "_odskodnina_additional": [], "_additional_damage_claims": null}', true);
INSERT INTO mb2data.dmg_agreements VALUES (71, 1451, 285, '{"_status": "1", "_affectee": "570", "_odskodnina": [[{"key": "Gradbeni objekt > Gradbeni objekt (navedi vrsto objekta)", "oid": "__0"}, "12.00", "objekt", "NaN", "NaN", ["450", "DOGOVOR"]]], "_attachments": [], "_odskodnina_additional": [], "_additional_damage_claims": null}', true);
INSERT INTO mb2data.dmg_agreements VALUES (63, 1564, 286, '{"_status": "1", "_affectee": "464", "_odskodnina": [[{"key": "Rejna žival - ubita > Živina za pitanje, zakol > Jagnjeta (do mase 10 kg)", "oid": "__0"}, "1.00", "žival", "70.00", "70.00", ["70.00", ""]]], "_attachments": [{"id": 67, "name": "20210215_152149.jpg", "size": 8416595, "properties": {"type": "jpeg", "width": 4128, "height": 3096, "file_size": 8416595}}], "_odskodnina_additional": [], "_additional_damage_claims": null}', true);


--
-- Data for Name: dmg_batches; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--



--
-- Data for Name: dmg_cenik; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.dmg_cenik VALUES (416, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Kokoši', '[{"c": "4.60", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (417, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Petelini', '[{"c": "5.53", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (275, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Žita', 'Pšenica', '[{"c": "122.35", "e": "t"}, {"c": "538.34", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (276, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Žita', 'Rž', '[{"c": "121.00", "e": "t"}, {"c": "353.32", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (277, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Žita', 'Ječmen', '[{"c": "123.38", "e": "t"}, {"c": "447.87", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (278, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Žita', 'Oves', '[{"c": "143.39", "e": "t"}, {"c": "372.81", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (279, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Žita', 'Koruza v zrnju', '[{"c": "123.02", "e": "t"}, {"c": "854.99", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (280, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Žita', 'Triticale', '[{"c": "132.42", "e": "t"}, {"c": "496.58", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (281, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Žita', 'Ajda', '[{"c": "419.39", "e": "t"}, {"c": "461.33", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (282, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Žita', 'Druge vrste žit (navedi)', '[{"e": "t"}, {"e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (283, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Industrijske rastline', 'Sončnica, seme', '[{"c": "0.27", "e": "kg"}, {"c": "378.00", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (284, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Industrijske rastline', 'Oljna ogrščica, seme', '[{"c": "0.22", "e": "kg"}, {"c": "506.00", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (285, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Industrijske rastline', 'Sladkorna pesa', '[{"c": "36.48", "e": "kg"}, {"c": "1615334.40", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (286, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Industrijske rastline', 'Hmelj', '[{"c": "4.36", "e": "kg"}, {"c": "5798.80", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (287, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Industrijske rastline', 'Buče, seme', '[{"c": "2.28", "e": "kg"}, {"c": "1824.00", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (288, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Industrijske rastline', 'Zdravilna zelišča', '[{"c": "0.41", "e": "kg"}]');
INSERT INTO mb2data.dmg_cenik VALUES (289, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Industrijske rastline', 'Druge vrste industrijskih rastlin (navedi)', '[{"e": "kg"}, {"e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (290, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Vrtnine in gobe', 'Krompir, zgodnji', '[{"c": "0.30", "e": "kg"}, {"c": "5154.00", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (291, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Vrtnine in gobe', 'Krompir, pozni', '[{"c": "0.23", "e": "kg"}, {"c": "4857.60", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (292, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Vrtnine in gobe', 'Krompir, semenski', '[{"c": "0.50", "e": "kg"}, {"c": "9815.00", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (293, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Vrtnine in gobe', 'Fižol v zrnju', '[{"c": "2.08", "e": "kg"}, {"c": "3265.60", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (294, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Vrtnine in gobe', 'Fižol, stročji', '[{"c": "1.48", "e": "kg"}, {"c": "10182.40", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (295, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Vrtnine in gobe', 'Grah, svež', '[{"c": "1.51", "e": "kg"}, {"c": "6644.00", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (296, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Vrtnine in gobe', 'Korenček', '[{"c": "0.38", "e": "kg"}, {"c": "7383.40", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (297, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Vrtnine in gobe', 'Zelje', '[{"c": "0.19", "e": "kg"}, {"c": "5700.00", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (298, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Vrtnine in gobe', 'Kitajsko zelje', '[{"c": "0.58", "e": "kg"}, {"c": "12760.00", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (299, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Vrtnine in gobe', 'Čebula', '[{"c": "0.41", "e": "kg"}, {"c": "8601.80", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (300, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Vrtnine in gobe', 'Česen', '[{"c": "2.15", "e": "kg"}, {"c": "13652.50", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (301, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Vrtnine in gobe', 'Paradižnik', '[{"c": "0.75", "e": "kg"}, {"c": "19852.50", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (302, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Vrtnine in gobe', 'Paprika', '[{"c": "0.80", "e": "kg"}, {"c": "23976.00", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (303, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Vrtnine in gobe', 'Cvetača', '[{"c": "0.68", "e": "kg"}, {"c": "11546.40", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (304, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Vrtnine in gobe', 'Rdeča pesa', '[{"c": "0.11", "e": "kg"}, {"c": "2381.50", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (305, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Vrtnine in gobe', 'Kumare, solatne', '[{"c": "0.47", "e": "kg"}, {"c": "9367.10", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (306, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Vrtnine in gobe', 'Kumare za vlaganje', '[{"c": "0.43", "e": "kg"}, {"c": "8569.90", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (307, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Vrtnine in gobe', 'Špinača', '[{"c": "1.40", "e": "kg"}, {"c": "16002.00", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (308, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Vrtnine in gobe', 'Solata (zgodnja, poletna, jesenska)', '[{"c": "0.59", "e": "kg"}, {"c": "11168.70", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (309, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Vrtnine in gobe', 'Endivja', '[{"c": "0.68", "e": "kg"}, {"c": "12954.00", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (310, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Vrtnine in gobe', 'Radič', '[{"c": "0.71", "e": "kg"}, {"c": "9847.70", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (311, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Vrtnine in gobe', 'Druge sveže vrtnine (peteršilj, koleraba, motovilec)', '[{"c": "0.64", "e": "kg"}, {"c": "11328.00", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (312, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Vrtnine in gobe', 'Gojene gobe', '[{"c": "2.38", "e": "kg"}]');
INSERT INTO mb2data.dmg_cenik VALUES (313, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Vrtnine in gobe', 'Druge vrste vrtnin (navedi)', '[{"e": "kg"}, {"e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (314, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Krmne rastline', 'Seno', '[{"c": "97.31", "e": "t"}, {"c": "453.46", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (315, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Krmne rastline', 'Koruza za siliranje', '[{"c": "23.41", "e": "t"}, {"c": "931.72", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (400, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Kozlički (od 11 kg do 25 kg)', '[{"c": "75.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (316, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Krmne rastline', 'Krmna pesa', '[{"c": "87.80", "e": "t"}, {"c": "2489.13", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (317, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Krmne rastline', 'Koruzna silaža', '[{"c": "22.55", "e": "t"}]');
INSERT INTO mb2data.dmg_cenik VALUES (318, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Krmne rastline', 'Krmno korenje', '[{"c": "87.80", "e": "t"}, {"c": "1389.87", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (319, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Krmne rastline', 'Druge vrste krmnih rastlin (navedi)', '[{"e": "t"}, {"e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (320, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Bale', 'Bale travna silaža', '[{"c": "0.04", "e": "kg"}]');
INSERT INTO mb2data.dmg_cenik VALUES (321, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Bale', 'Bale mrva', '[{"c": "0.07", "e": "kg"}]');
INSERT INTO mb2data.dmg_cenik VALUES (322, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Bale', 'Druge vrste bal (navedi)', '[{"e": "kg"}]');
INSERT INTO mb2data.dmg_cenik VALUES (323, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - intenzivni sadovnjak', 'Češplje, slive', '[{"c": "0.66", "e": "kg"}, {"c": "6204.00", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (324, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - intenzivni sadovnjak', 'Jabolka, namizna, I kakovost', '[{"c": "0.39", "e": "kg"}, {"c": "9913.80", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (325, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - intenzivni sadovnjak', 'Jabolka, namizna, II kakovost', '[{"c": "0.28", "e": "kg"}, {"c": "7117.60", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (326, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - intenzivni sadovnjak', 'Jabolka za predelavo', '[{"c": "0.10", "e": "kg"}, {"c": "2542.00", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (327, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - intenzivni sadovnjak', 'Hruške, namizne, I kakovost', '[{"c": "0.65", "e": "kg"}, {"c": "9373.00", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (328, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - intenzivni sadovnjak', 'Hruške, namizne, II kakovost', '[{"c": "0.33", "e": "kg"}, {"c": "4758.60", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (418, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Purani', '[{"c": "1.19", "e": "kg"}, {"c": "17.85", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (329, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - intenzivni sadovnjak', 'Hruške za predelavo', '[{"c": "0.29", "e": "kg"}, {"c": "4181.80", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (330, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - intenzivni sadovnjak', 'Češnje', '[{"c": "1.79", "e": "kg"}, {"c": "12046.70", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (331, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - intenzivni sadovnjak', 'Višnje', '[{"c": "0.46", "e": "kg"}, {"c": "2152.80", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (332, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - intenzivni sadovnjak', 'Marelice', '[{"c": "1.08", "e": "kg"}, {"c": "6987.60", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (333, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - intenzivni sadovnjak', 'Breskve, namizne', '[{"c": "0.62", "e": "kg"}, {"c": "8729.60", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (334, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - intenzivni sadovnjak', 'Breskve za predelavo', '[{"c": "0.30", "e": "kg"}, {"c": "4224.00", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (335, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - intenzivni sadovnjak', 'Jagode, gojene', '[{"c": "2.46", "e": "kg"}, {"c": "47059.80", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (336, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - intenzivni sadovnjak', 'Ribez in maline', '[{"c": "3.55", "e": "kg"}, {"c": "16862.50", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (337, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - intenzivni sadovnjak', 'Nektarine', '[{"c": "0.66", "e": "kg"}, {"c": "7920.00", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (338, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - intenzivni sadovnjak', 'Kaki', '[{"c": "1.00", "e": "kg"}, {"c": "20000.00", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (339, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - intenzivni sadovnjak', 'Kivi', '[{"c": "0.66", "e": "kg"}, {"c": "19650.00", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (340, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - intenzivni sadovnjak', 'Borovnice - gojene', '[{"c": "1.15", "e": "kg"}, {"c": "13800.00", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (341, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - intenzivni sadovnjak', 'Mandelj', '[{"c": "0.20", "e": "kg"}, {"c": "398.00", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (342, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - intenzivni sadovnjak', 'Kutina', '[{"c": "0.21", "e": "kg"}, {"c": "2625.00", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (343, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - intenzivni sadovnjak', 'Robide', '[{"c": "3.00", "e": "kg"}, {"c": "12000.00", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (344, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - intenzivni sadovnjak', 'Oljka', '[{"c": "2.21", "e": "kg"}, {"c": "11050.00", "e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (345, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - intenzivni sadovnjak', 'Fige', '[{"c": "2.00", "e": "kg"}]');
INSERT INTO mb2data.dmg_cenik VALUES (346, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - intenzivni sadovnjak', 'Lešniki', '[{"c": "4.00", "e": "kg"}]');
INSERT INTO mb2data.dmg_cenik VALUES (347, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - intenzivni sadovnjak', 'Kostanj (maroni)', '[{"c": "1.77", "e": "kg"}]');
INSERT INTO mb2data.dmg_cenik VALUES (348, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - intenzivni sadovnjak', 'Druge vrste sadja (navedi)', '[{"e": "kg"}, {"e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (349, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - ekstenzivni sadovnjak', 'Jabolka', '[{"c": "0.39", "e": "kg"}, {"c": "18.40", "e": "drevo"}]');
INSERT INTO mb2data.dmg_cenik VALUES (350, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - ekstenzivni sadovnjak', 'Hruške', '[{"c": "0.65", "e": "kg"}, {"c": "19.13", "e": "drevo"}]');
INSERT INTO mb2data.dmg_cenik VALUES (351, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - ekstenzivni sadovnjak', 'Breskve', '[{"c": "0.62", "e": "kg"}, {"c": "8.59", "e": "drevo"}]');
INSERT INTO mb2data.dmg_cenik VALUES (352, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - ekstenzivni sadovnjak', 'Marelice', '[{"c": "1.08", "e": "kg"}, {"c": "13.52", "e": "drevo"}]');
INSERT INTO mb2data.dmg_cenik VALUES (353, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - ekstenzivni sadovnjak', 'Češnje', '[{"c": "1.79", "e": "kg"}, {"c": "37.72", "e": "drevo"}]');
INSERT INTO mb2data.dmg_cenik VALUES (354, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - ekstenzivni sadovnjak', 'Višnje', '[{"c": "0.46", "e": "kg"}, {"c": "6.54", "e": "drevo"}]');
INSERT INTO mb2data.dmg_cenik VALUES (355, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - ekstenzivni sadovnjak', 'Češplje, slive', '[{"c": "0.66", "e": "kg"}, {"c": "11.44", "e": "drevo"}]');
INSERT INTO mb2data.dmg_cenik VALUES (356, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - ekstenzivni sadovnjak', 'Orehi', '[{"c": "2.34", "e": "kg"}, {"c": "40.67", "e": "drevo"}]');
INSERT INTO mb2data.dmg_cenik VALUES (357, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - ekstenzivni sadovnjak', 'Druge vrste sadja (navedi)', '[{"e": "kg"}, {"e": "drevo"}]');
INSERT INTO mb2data.dmg_cenik VALUES (358, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - travniški sadovnjak', 'Jabolka', '[{"c": "0.39", "e": "kg"}, {"c": "39.00", "e": "drevo"}]');
INSERT INTO mb2data.dmg_cenik VALUES (359, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - travniški sadovnjak', 'Hruške', '[{"c": "0.65", "e": "kg"}, {"c": "65.00", "e": "drevo"}]');
INSERT INTO mb2data.dmg_cenik VALUES (360, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - travniški sadovnjak', 'Češnje', '[{"c": "1.79", "e": "kg"}, {"c": "89.50", "e": "drevo"}]');
INSERT INTO mb2data.dmg_cenik VALUES (361, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - travniški sadovnjak', 'Slive', '[{"c": "0.66", "e": "kg"}, {"c": "19.80", "e": "drevo"}]');
INSERT INTO mb2data.dmg_cenik VALUES (362, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - travniški sadovnjak', 'Orehi', '[{"c": "2.34", "e": "kg"}, {"c": "234.00", "e": "drevo"}]');
INSERT INTO mb2data.dmg_cenik VALUES (363, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - travniški sadovnjak', 'Druge vrste sadja (navedi)', '[{"e": "kg"}, {"e": "drevo"}]');
INSERT INTO mb2data.dmg_cenik VALUES (364, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - travniški sadovnjak - zelo rodna leta', 'Jabolka', '[{"c": "0.39", "e": "kg"}, {"c": "78.00", "e": "drevo"}]');
INSERT INTO mb2data.dmg_cenik VALUES (365, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - travniški sadovnjak - zelo rodna leta', 'Hruške', '[{"c": "0.65", "e": "kg"}, {"c": "130.00", "e": "drevo"}]');
INSERT INTO mb2data.dmg_cenik VALUES (366, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - travniški sadovnjak - zelo rodna leta', 'Češnje', '[{"c": "1.79", "e": "kg"}, {"c": "143.20", "e": "drevo"}]');
INSERT INTO mb2data.dmg_cenik VALUES (367, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - travniški sadovnjak - zelo rodna leta', 'Slive', '[{"c": "0.66", "e": "kg"}, {"c": "66.00", "e": "drevo"}]');
INSERT INTO mb2data.dmg_cenik VALUES (368, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - travniški sadovnjak - zelo rodna leta', 'Orehi', '[{"c": "2.34", "e": "kg"}, {"c": "351.00", "e": "drevo"}]');
INSERT INTO mb2data.dmg_cenik VALUES (419, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Druge vrste živali (navedi)', '[{"e": "kg"}, {"e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (369, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadje - travniški sadovnjak - zelo rodna leta', 'Druge vrste sadja (navedi)', '[{"e": "kg"}, {"e": "drevo"}]');
INSERT INTO mb2data.dmg_cenik VALUES (370, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadike sadnega drevja', 'Sadike sadnega drevja - jablane', '[{"c": "2.76", "e": "sadika"}]');
INSERT INTO mb2data.dmg_cenik VALUES (371, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadike sadnega drevja', 'Sadike sadnega drevja - hruške', '[{"c": "5.41", "e": "sadika"}]');
INSERT INTO mb2data.dmg_cenik VALUES (372, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadike sadnega drevja', 'Sadike sadnega drevja - breskve', '[{"c": "3.81", "e": "sadika"}]');
INSERT INTO mb2data.dmg_cenik VALUES (373, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadike sadnega drevja', 'Sadike sadnega drevja - druge (navedi)', '[{"c": "5.35", "e": "sadika"}]');
INSERT INTO mb2data.dmg_cenik VALUES (374, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Sadike sadnega drevja', 'Okulirane podlage sadnih vrst', '[{"c": "1.00", "e": "sadika"}]');
INSERT INTO mb2data.dmg_cenik VALUES (375, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Grozdje', 'Grozdje, rdeče', '[{"c": "0.67", "e": "kg"}, {"c": "4690.00", "e": "ha"}, {"c": "1.47", "e": "trta"}]');
INSERT INTO mb2data.dmg_cenik VALUES (376, 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Grozdje', 'Grozdje, belo', '[{"c": "0.49", "e": "kg"}, {"c": "3434.90", "e": "ha"}, {"c": "1.01", "e": "trta"}]');
INSERT INTO mb2data.dmg_cenik VALUES (377, 'Rastlina na kmetijski površini / Rastlinski pridelek', '', 'Travna ruša', '[{"e": "ha"}]');
INSERT INTO mb2data.dmg_cenik VALUES (378, 'Rastlina na kmetijski površini / Rastlinski pridelek', '', 'Druge vrste rastlinskih pridelkov (navedi)', '[{"e": "kg"}, {"e": "t"}, {"e": "kos"}, {"e": "ha"}, {"e": "trta"}]');
INSERT INTO mb2data.dmg_cenik VALUES (379, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Teleta (novorojena)', '[{"c": "300.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (380, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Teleta (staro manj kot 1 leto – M do 120 kg)', '[{"c": "5.00", "e": "kg"}, {"c": "600.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (381, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Teleta (M od 121 kg do 250 kg)', '[{"c": "3.80", "e": "kg"}, {"c": "950.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (382, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Teleta (staro manj kot 1 leto – Ž do 120 kg)', '[{"c": "4.00", "e": "kg"}, {"c": "480.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (383, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Teleta (Ž nad 121 kg do 250 kg)', '[{"c": "3.20", "e": "kg"}, {"c": "800.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (384, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Mlado pitano govedo (od 1 do manj kot 2 leti)', '[{"c": "2.00", "e": "kg"}, {"c": "1000.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (385, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Drugo pitano govedo (več kot 2 leti)', '[{"c": "1170.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (386, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Krave (do 5 let)', '[{"c": "960.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (387, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Krave (nad 5 let)', '[{"c": "720.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (388, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Pujski in mladi prašički (do 50 kg)', '[{"c": "1.85", "e": "kg"}, {"c": "92.50", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (389, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Prašiči pitanci (do 150 kg)', '[{"c": "1.30", "e": "kg"}, {"c": "195.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (390, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Jagnjeta (do mase 10 kg)', '[{"c": "70.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (391, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Jagnjeta (od 11 kg do 25 kg)', '[{"c": "75.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (392, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Jagnjeta (od 26 kg do 50 kg)', '[{"c": "85.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (393, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Jagnjeta (kontrolirani tropi do mase 10 kg)', '[{"c": "84.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (394, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Jagnjeta (kontrolirani tropi od 11 kg do 25 kg)', '[{"c": "90.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (395, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Jagnjeta (kontrolirani tropi od 26 kg do 50 kg)', '[{"c": "102.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (396, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Jagnjeta (genska banka do mase 10 kg)', '[{"c": "105.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (397, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Jagnjeta (genska banka od 11 kg do 25 kg)', '[{"c": "112.50", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (398, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Jagnjeta (genska banka od 26 kg do 50 kg)', '[{"c": "127.50", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (399, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Kozlički (do mase 10 kg)', '[{"c": "70.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (401, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Kozlički (od 26 kg do 50 kg)', '[{"c": "85.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (402, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Kozlički (kontrolirani tropi do mase 10 kg)', '[{"c": "84.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (403, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Kozlički (kontrolirani tropi od 11 kg do 25 kg)', '[{"c": "90.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (404, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Kozlički (kontrolirani tropi od 26 kg do 50 kg)', '[{"c": "102.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (405, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Kozlički (genska banka do mase 10 kg)', '[{"c": "105.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (406, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Kozlički (genska banka od 11 kg do 25 kg)', '[{"c": "112.50", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (407, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Kozlički (genska banka od 26 kg do 50 kg)', '[{"c": "127.50", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (408, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Ovce (za pitanje, zakol, izločene živali)', '[{"c": "168.75", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (409, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Koze (za pitanje, zakol, izločene živali)', '[{"c": "168.75", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (410, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Žrebeta (novorojena)', '[{"c": "300.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (411, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Žrebeta (do 1 leta)', '[{"c": "2.50", "e": "kg"}, {"c": "1000.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (412, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Konji', '[{"c": "1080.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (413, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Osli (novorojeni)', '[{"c": "300.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (414, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Osli', '[{"c": "450.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (415, 'Rejna žival - ubita', 'Živina za pitanje, zakol', 'Piščanci', '[{"c": "0.92", "e": "kg"}, {"c": "2.30", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (420, 'Rejna žival - ubita', 'Živina za pleme', 'Teleta (novorojena)', '[{"c": "350.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (421, 'Rejna žival - ubita', 'Živina za pleme', 'Teleta (staro manj kot 1 leto – Ž do 120 kg)', '[{"c": "5.00", "e": "kg"}, {"c": "600.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (422, 'Rejna žival - ubita', 'Živina za pleme', 'Teleta (Ž nad 121 do 250 kg)', '[{"c": "2.50", "e": "kg"}, {"c": "625.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (423, 'Rejna žival - ubita', 'Živina za pleme', 'Mlado govedo (od 1 do manj kot 2 leti)', '[{"c": "2.50", "e": "kg"}, {"c": "1250.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (424, 'Rejna žival - ubita', 'Živina za pleme', 'Krave (do 5 let)', '[{"c": "1320.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (425, 'Rejna žival - ubita', 'Živina za pleme', 'Krave (nad 5 let)', '[{"c": "750.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (426, 'Rejna žival - ubita', 'Živina za pleme', 'Breje telice', '[{"c": "1320.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (427, 'Rejna žival - ubita', 'Živina za pleme', 'Pujski in mladi prašički', '[{"c": "2.73", "e": "kg"}, {"c": "136.50", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (428, 'Rejna žival - ubita', 'Živina za pleme', 'Ovce (mlečne pasme)', '[{"c": "210.75", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (429, 'Rejna žival - ubita', 'Živina za pleme', 'Ovce (mlečne pasme – genska banka)', '[{"c": "315.75", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (430, 'Rejna žival - ubita', 'Živina za pleme', 'Ovce (mesne pasme)', '[{"c": "181.50", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (431, 'Rejna žival - ubita', 'Živina za pleme', 'Ovce (mesne pasme – genska banka)', '[{"c": "273.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (432, 'Rejna žival - ubita', 'Živina za pleme', 'Koze (mlečne pasme)', '[{"c": "210.75", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (433, 'Rejna žival - ubita', 'Živina za pleme', 'Koze (mlečne pasme – genska banka)', '[{"c": "315.75", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (434, 'Rejna žival - ubita', 'Živina za pleme', 'Koze (mesne pasme)', '[{"c": "181.50", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (435, 'Rejna žival - ubita', 'Živina za pleme', 'Koze (mesne pasme – genska banka)', '[{"c": "273.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (436, 'Rejna žival - ubita', 'Živina za pleme', 'Žrebeta (novorojena)', '[{"c": "400.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (437, 'Rejna žival - ubita', 'Živina za pleme', 'Žrebeta (do 4 mesecev)', '[{"c": "1000.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (438, 'Rejna žival - ubita', 'Živina za pleme', 'Žrebeta (od 4 do 12 mesecev)', '[{"c": "3.25", "e": "kg"}, {"c": "1300.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (439, 'Rejna žival - ubita', 'Živina za pleme', 'Mladi konji (do 2 let)', '[{"c": "1800.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (440, 'Rejna žival - ubita', 'Živina za pleme', 'Mladi konji (do 3 let)', '[{"c": "2300.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (441, 'Rejna žival - ubita', 'Živina za pleme', 'Kobile (od 3 do 12 let)', '[{"c": "2800.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (442, 'Rejna žival - ubita', 'Živina za pleme', 'Žrebci (od 3 do 12 let)', '[{"c": "7000.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (443, 'Rejna žival - ubita', 'Živina za pleme', 'Kobile (od 12 do 18 let)', '[{"c": "2300.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (444, 'Rejna žival - ubita', 'Živina za pleme', 'Žrebci (od 12 do 18 let)', '[{"c": "5000.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (445, 'Rejna žival - ubita', 'Živina za pleme', 'Kobile, žrebci (nad 18 let)', '[{"c": "2000.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (446, 'Rejna žival - ubita', 'Živina za pleme', 'Osli (novorojeni)', '[{"c": "350.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (447, 'Rejna žival - ubita', 'Živina za pleme', 'Osli', '[{"c": "550.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (448, 'Rejna žival - ubita', 'Živina za pleme', 'Ribe - krapi', '[{"c": "2.54", "e": "kg"}]');
INSERT INTO mb2data.dmg_cenik VALUES (449, 'Rejna žival - ubita', 'Živina za pleme', 'Ribe - postrvi', '[{"c": "2.56", "e": "kg"}]');
INSERT INTO mb2data.dmg_cenik VALUES (450, 'Rejna žival - ubita', 'Živina za pleme', 'Ribe - druge vrste (navedi)', '[{"e": "kg"}, {"e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (451, 'Rejna žival - ubita', 'Živina za pleme', 'Druge vrste živali (navedi)', '[{"e": "kg"}, {"e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (452, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Teleta (novorojena)', '[{"c": "60.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (453, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Teleta (staro manj kot 1 leto – M do 120 kg)', '[{"c": "1.00", "e": "kg"}, {"c": "120.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (454, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Teleta (M od 121 kg do 250 kg)', '[{"c": "0.76", "e": "kg"}, {"c": "190.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (455, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Teleta (staro manj kot 1 leto – Ž do 120 kg)', '[{"c": "0.80", "e": "kg"}, {"c": "96.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (456, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Teleta (Ž nad 121 kg do 250 kg)', '[{"c": "0.64", "e": "kg"}, {"c": "160.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (457, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Mlado pitano govedo (od 1 do manj kot 2 leti)', '[{"c": "0.40", "e": "kg"}, {"c": "200.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (458, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Drugo pitano govedo (več kot 2 leti)', '[{"c": "234.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (459, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Krave (do 5 let)', '[{"c": "192.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (460, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Krave (nad 5 let)', '[{"c": "144.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (461, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Pujski in mladi prašički (do 50 kg)', '[{"c": "0.37", "e": "kg"}, {"c": "18.50", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (462, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Prašiči pitanci (do 150 kg)', '[{"c": "0.26", "e": "kg"}, {"c": "39.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (463, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Jagnjeta (do mase 10 kg)', '[{"c": "14.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (464, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Jagnjeta (od 11 kg do 25 kg)', '[{"c": "15.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (465, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Jagnjeta (od 26 kg do 50 kg)', '[{"c": "17.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (466, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Jagnjeta (kontrolirani tropi do mase 10 kg)', '[{"c": "16.80", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (467, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Jagnjeta (kontrolirani tropi od 11 kg do 25 kg)', '[{"c": "18.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (468, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Jagnjeta (kontrolirani tropi od 26 kg do 50 kg)', '[{"c": "20.40", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (469, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Jagnjeta (genska banka do mase 10 kg)', '[{"c": "21.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (470, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Jagnjeta (genska banka od 11 kg do 25 kg)', '[{"c": "22.50", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (471, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Jagnjeta (genska banka od 26 kg do 50 kg)', '[{"c": "25.50", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (472, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Kozlički (do mase 10 kg)', '[{"c": "14.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (473, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Kozlički (od 11 kg do 25 kg)', '[{"c": "15.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (474, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Kozlički (od 26 kg do 50 kg)', '[{"c": "17.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (475, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Kozlički (kontrolirani tropi do mase 10 kg)', '[{"c": "16.80", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (476, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Kozlički (kontrolirani tropi od 11 kg do 25 kg)', '[{"c": "18.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (477, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Kozlički (kontrolirani tropi od 26 kg do 50 kg)', '[{"c": "20.40", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (478, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Kozlički (genska banka do mase 10 kg)', '[{"c": "21.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (479, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Kozlički (genska banka od 11 kg do 25 kg)', '[{"c": "22.50", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (480, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Kozlički (genska banka od 26 kg do 50 kg)', '[{"c": "25.50", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (481, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Ovce (za pitanje, zakol, izločene živali)', '[{"c": "33.75", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (482, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Koze (za pitanje, zakol, izločene živali)', '[{"c": "33.75", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (483, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Žrebeta (novorojena)', '[{"c": "60.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (484, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Žrebeta (do 1 leta)', '[{"c": "0.5", "e": "kg"}, {"c": "200.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (485, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Konji', '[{"c": "216.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (486, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Osli (novorojeni)', '[{"c": "60.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (487, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Osli', '[{"c": "90.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (488, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Piščanci', '[{"c": "0.18", "e": "kg"}, {"c": "0.46", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (489, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Kokoši', '[{"c": "0.92", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (490, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Petelini', '[{"c": "1.11", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (491, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Purani', '[{"c": "0.24", "e": "kg"}, {"c": "3.57", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (492, 'Rejna žival - poškodovana', 'Živina za pitanje, zakol', 'Druge vrste živali (navedi)', '[{"e": "kg"}, {"e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (493, 'Rejna žival - poškodovana', 'Živina za pleme', 'Teleta (novorojena)', '[{"c": "70.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (494, 'Rejna žival - poškodovana', 'Živina za pleme', 'Teleta (staro manj kot 1 leto – Ž do 120 kg)', '[{"c": "1.00", "e": "kg"}, {"c": "120.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (495, 'Rejna žival - poškodovana', 'Živina za pleme', 'Teleta (Ž nad 121 do 250 kg)', '[{"c": "0.50", "e": "kg"}, {"c": "125.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (496, 'Rejna žival - poškodovana', 'Živina za pleme', 'Mlado govedo (od 1 do manj kot 2 leti)', '[{"c": "0.50", "e": "kg"}, {"c": "250.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (497, 'Rejna žival - poškodovana', 'Živina za pleme', 'Krave (do 5 let)', '[{"c": "264.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (498, 'Rejna žival - poškodovana', 'Živina za pleme', 'Krave (nad 5 let)', '[{"c": "150.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (499, 'Rejna žival - poškodovana', 'Živina za pleme', 'Breje telice', '[{"c": "264.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (500, 'Rejna žival - poškodovana', 'Živina za pleme', 'Pujski in mladi prašički', '[{"c": "0.55", "e": "kg"}, {"c": "27.30", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (501, 'Rejna žival - poškodovana', 'Živina za pleme', 'Ovce (mlečne pasme)', '[{"c": "42.15", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (502, 'Rejna žival - poškodovana', 'Živina za pleme', 'Ovce (mlečne pasme – genska banka)', '[{"c": "63.15", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (503, 'Rejna žival - poškodovana', 'Živina za pleme', 'Ovce (mesne pasme)', '[{"c": "36.30", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (504, 'Rejna žival - poškodovana', 'Živina za pleme', 'Ovce (mesne pasme – genska banka)', '[{"c": "54.60", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (505, 'Rejna žival - poškodovana', 'Živina za pleme', 'Koze (mlečne pasme)', '[{"c": "42.15", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (506, 'Rejna žival - poškodovana', 'Živina za pleme', 'Koze (mlečne pasme – genska banka)', '[{"c": "63.15", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (507, 'Rejna žival - poškodovana', 'Živina za pleme', 'Koze (mesne pasme)', '[{"c": "36.30", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (508, 'Rejna žival - poškodovana', 'Živina za pleme', 'Koze (mesne pasme – genska banka)', '[{"c": "54.60", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (509, 'Rejna žival - poškodovana', 'Živina za pleme', 'Žrebeta (novorojena)', '[{"c": "80.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (510, 'Rejna žival - poškodovana', 'Živina za pleme', 'Žrebeta (do 4 mesecev)', '[{"c": "200.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (511, 'Rejna žival - poškodovana', 'Živina za pleme', 'Žrebeta (od 4 do 12 mesecev)', '[{"c": "0.65", "e": "kg"}, {"c": "260.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (512, 'Rejna žival - poškodovana', 'Živina za pleme', 'Mladi konji (do 2 let)', '[{"c": "360.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (513, 'Rejna žival - poškodovana', 'Živina za pleme', 'Mladi konji (do 3 let)', '[{"c": "460.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (514, 'Rejna žival - poškodovana', 'Živina za pleme', 'Kobile (od 3 do 12 let)', '[{"c": "560.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (515, 'Rejna žival - poškodovana', 'Živina za pleme', 'Žrebci (od 3 do 12 let)', '[{"c": "1400.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (516, 'Rejna žival - poškodovana', 'Živina za pleme', 'Kobile (od 12 do 18 let)', '[{"c": "460.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (517, 'Rejna žival - poškodovana', 'Živina za pleme', 'Žrebci (od 12 do 18 let)', '[{"c": "1000.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (518, 'Rejna žival - poškodovana', 'Živina za pleme', 'Kobile, žrebci (nad 18 let)', '[{"c": "400.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (519, 'Rejna žival - poškodovana', 'Živina za pleme', 'Osli (novorojeni)', '[{"c": "70.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (520, 'Rejna žival - poškodovana', 'Živina za pleme', 'Osli', '[{"c": "110.00", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (521, 'Rejna žival - poškodovana', 'Živina za pleme', 'Ribe - krapi', '[{"c": "0.51", "e": "kg"}, {"c": "0.51", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (522, 'Rejna žival - poškodovana', 'Živina za pleme', 'Ribe - postrvi', '[{"c": "0.51", "e": "kg"}, {"c": "0.51", "e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (523, 'Rejna žival - poškodovana', 'Živina za pleme', 'Ribe - druge vrste (navedi)', '[{"e": "kg"}, {"e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (524, 'Rejna žival - poškodovana', 'Živina za pleme', 'Druge vrste živali (navedi)', '[{"e": "kg"}, {"e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (525, 'Čebelarstvo', '', 'Med cvetlični (prinesen pridelek)', '[{"c": "2.39", "e": "kg"}]');
INSERT INTO mb2data.dmg_cenik VALUES (526, 'Čebelarstvo', '', 'Med gozdni (prinesen pridelek)', '[{"c": "2.64", "e": "kg"}]');
INSERT INTO mb2data.dmg_cenik VALUES (527, 'Čebelarstvo', '', 'Panj AŽ', '[{"c": "120.00", "e": "kos"}]');
INSERT INTO mb2data.dmg_cenik VALUES (528, 'Čebelarstvo', '', 'Panj LR', '[{"c": "161.00", "e": "kos"}]');
INSERT INTO mb2data.dmg_cenik VALUES (529, 'Čebelarstvo', '', 'Panj Grajšev panj', '[{"c": "149.00", "e": "kos"}]');
INSERT INTO mb2data.dmg_cenik VALUES (530, 'Čebelarstvo', '', 'Čebelja družina', '[{"c": "120.00", "e": "kos"}]');
INSERT INTO mb2data.dmg_cenik VALUES (531, 'Čebelarstvo', '', 'Deli panja: izdelan sat', '[{"c": "5.25", "e": "kos"}]');
INSERT INTO mb2data.dmg_cenik VALUES (532, 'Čebelarstvo', '', 'Deli panja: satnica z okvirjem', '[{"c": "1.98", "e": "kos"}]');
INSERT INTO mb2data.dmg_cenik VALUES (533, 'Čebelarstvo', '', 'Deli panja: poškodovana brada panja AŽ', '[{"c": "39.60", "e": "kos"}]');
INSERT INTO mb2data.dmg_cenik VALUES (534, 'Čebelarstvo', '', 'Deli panja: poškodovana brada Grajševa panj', '[{"c": "44.70", "e": "kos"}]');
INSERT INTO mb2data.dmg_cenik VALUES (535, 'Čebelarstvo', '', 'Deli LR panja: podnica', '[{"c": "29.70", "e": "kos"}]');
INSERT INTO mb2data.dmg_cenik VALUES (536, 'Čebelarstvo', '', 'Deli LR panja: naklada', '[{"c": "18.30", "e": "kos"}]');
INSERT INTO mb2data.dmg_cenik VALUES (537, 'Čebelarstvo', '', 'Deli LR panja: matična rešetka', '[{"c": "5.00", "e": "kos"}]');
INSERT INTO mb2data.dmg_cenik VALUES (538, 'Čebelarstvo', '', 'Deli LR panja: pitalnik', '[{"c": "15.20", "e": "kos"}]');
INSERT INTO mb2data.dmg_cenik VALUES (539, 'Čebelarstvo', '', 'Deli LR panja: pokrov', '[{"c": "16.10", "e": "kos"}]');
INSERT INTO mb2data.dmg_cenik VALUES (540, 'Čebelarstvo', '', 'Zimska zaloga (nakrmljeni sladkor)', '[{"c": "29.60", "e": "panj"}]');
INSERT INTO mb2data.dmg_cenik VALUES (541, 'Čebelarstvo', '', 'Čebelarstvo - drugo (navedi)', '[{"e": "kg"}, {"e": "kos"}, {"e": "panj"}]');
INSERT INTO mb2data.dmg_cenik VALUES (542, 'Gradbeni objekt', '', 'Gradbeni objekt (navedi vrsto objekta)', '[{"e": "objekt"}]');
INSERT INTO mb2data.dmg_cenik VALUES (543, 'Domača/hišna žival', '', 'Domača/hišna žival (navedi vrsto živali)', '[{"e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (544, 'Divjad v obori', '', 'Divjad v obori (navedi vrsto divjadi)', '[{"e": "žival"}]');
INSERT INTO mb2data.dmg_cenik VALUES (545, 'Krmilnik za divjad', '', 'Krmilnik za divjad (navedi tip krmilnika)', '[{"e": "kos"}]');
INSERT INTO mb2data.dmg_cenik VALUES (546, 'Vozilo', '', 'Vozilo (navedi vrsto vozila)', '[{"e": "vozilo"}]');
INSERT INTO mb2data.dmg_cenik VALUES (547, 'Človek', '', 'Človek (opis)', '[{"e": "človek"}]');
INSERT INTO mb2data.dmg_cenik VALUES (548, 'Drugo', '', 'Drugo (navedi)', '[{"e": "drugo"}]');


--
-- Data for Name: dmg_culprits; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.dmg_culprits VALUES (440, 'culprit_options.Drugo', NULL, 'Other species');
INSERT INTO mb2data.dmg_culprits VALUES (408, 'Rjavi medved', 'Sesalci (Mammalia)', 'Ursus arctos');
INSERT INTO mb2data.dmg_culprits VALUES (409, 'Volk', 'Sesalci (Mammalia)', 'Canis lupus');
INSERT INTO mb2data.dmg_culprits VALUES (410, 'Evrazijski ris', 'Sesalci (Mammalia)', 'Lynx lynx');
INSERT INTO mb2data.dmg_culprits VALUES (411, 'Divja mačka', 'Sesalci (Mammalia)', 'Felis silvestris');
INSERT INTO mb2data.dmg_culprits VALUES (412, 'Vidra', 'Sesalci (Mammalia)', 'Lutra lutra');
INSERT INTO mb2data.dmg_culprits VALUES (413, 'Dihur', 'Sesalci (Mammalia)', 'Mustela putorius');
INSERT INTO mb2data.dmg_culprits VALUES (414, 'Velika podlasica - hermelin', 'Sesalci (Mammalia)', 'Mustela erminea');
INSERT INTO mb2data.dmg_culprits VALUES (415, 'Mala podlasica', 'Sesalci (Mammalia)', 'Mustela nivalis');
INSERT INTO mb2data.dmg_culprits VALUES (416, 'Navadna veverica', 'Sesalci (Mammalia)', 'Sciurus vulgaris');
INSERT INTO mb2data.dmg_culprits VALUES (417, 'Bober', 'Sesalci (Mammalia)', 'Castor fiber');
INSERT INTO mb2data.dmg_culprits VALUES (418, 'Krokar', 'Ptiči pevci', 'Corvus corax');
INSERT INTO mb2data.dmg_culprits VALUES (419, 'Poljska vrana', 'Ptiči pevci', 'Corvus frugilegus');
INSERT INTO mb2data.dmg_culprits VALUES (420, 'Črna vrana', 'Ptiči pevci', 'Corvus corone');
INSERT INTO mb2data.dmg_culprits VALUES (421, 'Kavka', 'Ptiči pevci', 'Corvus monedula');
INSERT INTO mb2data.dmg_culprits VALUES (422, 'Drozgi (npr. kos, cikovt, carar, …)', 'Ptiči pevci', 'Turdidae');
INSERT INTO mb2data.dmg_culprits VALUES (423, 'Škorec', 'Ptiči pevci', 'Sturnus vulgaris');
INSERT INTO mb2data.dmg_culprits VALUES (424, 'Neugotovljiva vrsta ptice pevke', 'Ptiči pevci', 'Unidentifiable species of a songbird');
INSERT INTO mb2data.dmg_culprits VALUES (425, 'Druga vrsta ptice pevke (navedi)', 'Ptiči pevci', 'Other species of a songbird');
INSERT INTO mb2data.dmg_culprits VALUES (426, 'Veliki detel', 'Žolne', 'Dendrocopus major');
INSERT INTO mb2data.dmg_culprits VALUES (427, 'Črna žolna', 'Žolne', 'Dryocopus martius');
INSERT INTO mb2data.dmg_culprits VALUES (428, 'Zelena žolna', 'Žolne', 'Picus viridis');
INSERT INTO mb2data.dmg_culprits VALUES (429, 'Pivka', 'Žolne', 'Picus canus');
INSERT INTO mb2data.dmg_culprits VALUES (430, 'Neugotovljiva vrsta žolne', 'Žolne', 'Unidentifiable species of Picidae - Woodpeckers');
INSERT INTO mb2data.dmg_culprits VALUES (431, 'Druga vrsta žolne (navedi)', 'Žolne', 'Other species of Picidae - Woodpeckers');
INSERT INTO mb2data.dmg_culprits VALUES (432, 'Kanja', 'Ujede in sove', 'Buteo buteo');
INSERT INTO mb2data.dmg_culprits VALUES (433, 'Kragulj', 'Ujede in sove', 'Accipiter gentilis');
INSERT INTO mb2data.dmg_culprits VALUES (434, 'Planinski orel', 'Ujede in sove', 'Aquila chrysaetos');
INSERT INTO mb2data.dmg_culprits VALUES (435, 'Druga vrsta ujede ali sove', 'Ujede in sove', 'Other species of a bird of prey or an owl');
INSERT INTO mb2data.dmg_culprits VALUES (436, 'Bela štorklja', NULL, 'Ciconia ciconia');
INSERT INTO mb2data.dmg_culprits VALUES (437, 'Labod grbec', NULL, 'Cygnus olor');
INSERT INTO mb2data.dmg_culprits VALUES (438, 'Nezavarovana vrsta (tudi pes)', NULL, 'Unprotected species (also a dog)');
INSERT INTO mb2data.dmg_culprits VALUES (439, 'Neugotovljivo / neznano', NULL, 'Unidentifiable species / unknown');
INSERT INTO mb2data.dmg_culprits VALUES (441, 'Sesalci (Mammalia)', NULL, NULL);
INSERT INTO mb2data.dmg_culprits VALUES (442, 'Ptiči pevci', NULL, NULL);
INSERT INTO mb2data.dmg_culprits VALUES (443, 'Žolne', NULL, NULL);
INSERT INTO mb2data.dmg_culprits VALUES (444, 'Ujede in sove', NULL, NULL);


--
-- Data for Name: dmg_deputies; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.dmg_deputies VALUES (162, 2930, 'JS3', 12);
INSERT INTO mb2data.dmg_deputies VALUES (3, 2748, 'GT4', 15);
INSERT INTO mb2data.dmg_deputies VALUES (2, 5, 'BT2', 15);
INSERT INTO mb2data.dmg_deputies VALUES (6, 2360, 'RI3', 12);
INSERT INTO mb2data.dmg_deputies VALUES (10, 782, 'BMG', 15);
INSERT INTO mb2data.dmg_deputies VALUES (11, 706, 'KAN', 12);
INSERT INTO mb2data.dmg_deputies VALUES (12, 2548, 'ŽA8', 12);
INSERT INTO mb2data.dmg_deputies VALUES (13, 2753, 'KAO', 12);
INSERT INTO mb2data.dmg_deputies VALUES (14, 1476, 'SA5', 12);
INSERT INTO mb2data.dmg_deputies VALUES (15, 734, 'GD6', 12);
INSERT INTO mb2data.dmg_deputies VALUES (17, 1477, 'TM1', 12);
INSERT INTO mb2data.dmg_deputies VALUES (18, 2756, 'MAB', 12);
INSERT INTO mb2data.dmg_deputies VALUES (19, 718, 'ČB4', 1);
INSERT INTO mb2data.dmg_deputies VALUES (20, 2754, 'MB3', 1);
INSERT INTO mb2data.dmg_deputies VALUES (21, 2755, 'GA5', 1);
INSERT INTO mb2data.dmg_deputies VALUES (22, 825, 'MZ2', 13);
INSERT INTO mb2data.dmg_deputies VALUES (23, 1482, 'KB5', 13);
INSERT INTO mb2data.dmg_deputies VALUES (24, 799, 'TP1', 3);
INSERT INTO mb2data.dmg_deputies VALUES (25, 755, 'ČJ2', 3);
INSERT INTO mb2data.dmg_deputies VALUES (26, 2752, 'PMŠ', 3);
INSERT INTO mb2data.dmg_deputies VALUES (27, 754, 'AJ4', 10);
INSERT INTO mb2data.dmg_deputies VALUES (28, 318, 'BR2', 10);
INSERT INTO mb2data.dmg_deputies VALUES (29, 1470, 'TA4', 10);
INSERT INTO mb2data.dmg_deputies VALUES (30, 805, 'VR5', 10);
INSERT INTO mb2data.dmg_deputies VALUES (31, 807, 'OR2', 10);
INSERT INTO mb2data.dmg_deputies VALUES (32, 776, 'KMH', 10);
INSERT INTO mb2data.dmg_deputies VALUES (34, 745, 'BG2', 2);
INSERT INTO mb2data.dmg_deputies VALUES (35, 1440, 'CM5', 2);
INSERT INTO mb2data.dmg_deputies VALUES (36, 1463, 'VB7', 8);
INSERT INTO mb2data.dmg_deputies VALUES (37, 1464, 'ZD2', 8);
INSERT INTO mb2data.dmg_deputies VALUES (38, 790, 'HM1', 5);
INSERT INTO mb2data.dmg_deputies VALUES (39, 724, 'ŠB2', 5);
INSERT INTO mb2data.dmg_deputies VALUES (40, 1451, 'ŽB2', 5);
INSERT INTO mb2data.dmg_deputies VALUES (41, 1449, 'SI4', 5);
INSERT INTO mb2data.dmg_deputies VALUES (42, 1450, 'NR1', 5);
INSERT INTO mb2data.dmg_deputies VALUES (43, 798, 'KP7', 11);
INSERT INTO mb2data.dmg_deputies VALUES (44, 2357, 'GK3', 11);
INSERT INTO mb2data.dmg_deputies VALUES (45, 722, 'JB9', 11);
INSERT INTO mb2data.dmg_deputies VALUES (46, 747, 'KI9', 11);
INSERT INTO mb2data.dmg_deputies VALUES (47, 2749, 'OE2', 11);
INSERT INTO mb2data.dmg_deputies VALUES (48, 1473, 'TA3', 11);
INSERT INTO mb2data.dmg_deputies VALUES (49, 802, 'TR1', 11);
INSERT INTO mb2data.dmg_deputies VALUES (50, 762, 'MJ2', 11);
INSERT INTO mb2data.dmg_deputies VALUES (51, 797, 'KP5', 11);
INSERT INTO mb2data.dmg_deputies VALUES (52, 2358, 'OR3', 6);
INSERT INTO mb2data.dmg_deputies VALUES (53, 1457, 'ŽM3', 6);
INSERT INTO mb2data.dmg_deputies VALUES (54, 1455, 'PMB', 6);
INSERT INTO mb2data.dmg_deputies VALUES (55, 764, 'VJ4', 6);
INSERT INTO mb2data.dmg_deputies VALUES (56, 822, 'MV3', 6);
INSERT INTO mb2data.dmg_deputies VALUES (57, 778, 'JM5', 6);
INSERT INTO mb2data.dmg_deputies VALUES (123, 2359, 'ŽA9', 4);
INSERT INTO mb2data.dmg_deputies VALUES (115, 710, 'SA7', 14);
INSERT INTO mb2data.dmg_deputies VALUES (124, 354, 'ŠB7', 4);
INSERT INTO mb2data.dmg_deputies VALUES (110, 731, 'MD3', 14);
INSERT INTO mb2data.dmg_deputies VALUES (109, 120, 'ME1', 14);
INSERT INTO mb2data.dmg_deputies VALUES (111, 736, 'MD4', 14);
INSERT INTO mb2data.dmg_deputies VALUES (113, 1480, 'ŠD6', 14);
INSERT INTO mb2data.dmg_deputies VALUES (117, 750, 'KI5', 14);
INSERT INTO mb2data.dmg_deputies VALUES (118, 789, 'BM3', 4);
INSERT INTO mb2data.dmg_deputies VALUES (119, 1443, 'ŠD2', 4);
INSERT INTO mb2data.dmg_deputies VALUES (121, 742, 'HF2', 4);
INSERT INTO mb2data.dmg_deputies VALUES (125, 1065, 'OM4', 4);
INSERT INTO mb2data.dmg_deputies VALUES (4, 1594, 'PN2', 15);
INSERT INTO mb2data.dmg_deputies VALUES (126, 2764, 'RD1', 2);
INSERT INTO mb2data.dmg_deputies VALUES (33, 1471, 'VU1', 10);
INSERT INTO mb2data.dmg_deputies VALUES (128, 707, 'MA1', 11);
INSERT INTO mb2data.dmg_deputies VALUES (120, 785, 'PMJ', 4);
INSERT INTO mb2data.dmg_deputies VALUES (122, 723, 'PBA', 4);
INSERT INTO mb2data.dmg_deputies VALUES (114, 186, 'KJB', 14);
INSERT INTO mb2data.dmg_deputies VALUES (129, 2549, 'PB9', 9);
INSERT INTO mb2data.dmg_deputies VALUES (130, 2769, 'GD7', 9);
INSERT INTO mb2data.dmg_deputies VALUES (133, 1458, 'KAA', 6);
INSERT INTO mb2data.dmg_deputies VALUES (132, 1456, 'NJ1', 6);
INSERT INTO mb2data.dmg_deputies VALUES (131, 196, 'DK2', 6);
INSERT INTO mb2data.dmg_deputies VALUES (134, 836, 'UJ1', 11);
INSERT INTO mb2data.dmg_deputies VALUES (135, 749, 'CI1', 7);
INSERT INTO mb2data.dmg_deputies VALUES (136, 2788, 'ČA1', 5);
INSERT INTO mb2data.dmg_deputies VALUES (137, 2789, 'ŠA8', 5);
INSERT INTO mb2data.dmg_deputies VALUES (145, 1411, NULL, NULL);
INSERT INTO mb2data.dmg_deputies VALUES (150, 839, 'ŠJE', 4);
INSERT INTO mb2data.dmg_deputies VALUES (151, 850, 'ŠJD', 4);
INSERT INTO mb2data.dmg_deputies VALUES (152, 2799, 'JJ7', 12);
INSERT INTO mb2data.dmg_deputies VALUES (153, 715, 'LA5', 10);
INSERT INTO mb2data.dmg_deputies VALUES (154, 2831, 'CG2', 7);
INSERT INTO mb2data.dmg_deputies VALUES (155, 2835, 'RP3', 14);
INSERT INTO mb2data.dmg_deputies VALUES (156, 2862, 'KJE', 8);
INSERT INTO mb2data.dmg_deputies VALUES (5, 1603, 'TT', 11);
INSERT INTO mb2data.dmg_deputies VALUES (159, 2914, 'OA4', 5);
INSERT INTO mb2data.dmg_deputies VALUES (157, 2912, 'SMC', 5);
INSERT INTO mb2data.dmg_deputies VALUES (158, 2913, 'VB8', 5);
INSERT INTO mb2data.dmg_deputies VALUES (160, 2924, 'LAA', 12);
INSERT INTO mb2data.dmg_deputies VALUES (161, 2925, 'TS5', 11);


--
-- Data for Name: dmg_nacini_varovanja; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.dmg_nacini_varovanja VALUES (1, 'elektromreža', 'Bober');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (2, 'elektromreža', 'Vidra');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (3, 'elektromreža', 'Divja mačka');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (4, 'elektromreža', 'Evrazijski ris');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (5, 'elektromreža', 'Rjavi medved');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (6, 'elektromreža', 'Volk');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (7, 'elektromreža', 'Labod grbec');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (8, 'žična elektroograja', 'Bober');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (9, 'žična elektroograja', 'Vidra');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (10, 'žična elektroograja', 'Divja mačka');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (11, 'žična elektroograja', 'Evrazijski ris');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (12, 'žična elektroograja', 'Rjavi medved');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (13, 'žična elektroograja', 'Volk');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (14, 'žična elektroograja', 'Labod grbec');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (15, 'farmer mreža', 'Bober');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (16, 'farmer mreža', 'Vidra');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (17, 'farmer mreža', 'Evrazijski ris');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (18, 'farmer mreža', 'Rjavi medved');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (19, 'farmer mreža', 'Volk');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (20, 'farmer mreža', 'Labod grbec');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (21, 'farmer mreža nadgrajena z električnimi žicami', 'Bober');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (22, 'farmer mreža nadgrajena z električnimi žicami', 'Vidra');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (23, 'farmer mreža nadgrajena z električnimi žicami', 'Evrazijski ris');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (24, 'farmer mreža nadgrajena z električnimi žicami', 'Rjavi medved');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (25, 'farmer mreža nadgrajena z električnimi žicami', 'Volk');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (26, 'farmer mreža nadgrajena z električnimi žicami', 'Labod grbec');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (27, 'mehanska ograja/ograda', 'Krokar');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (28, 'mehanska ograja/ograda', 'Kanja');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (29, 'mehanska ograja/ograda', 'Kragulj');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (30, 'mehanska ograja/ograda', 'Planinski orel');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (31, 'mehanska ograja/ograda', 'Navadna veverica');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (32, 'mehanska ograja/ograda', 'Bober');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (33, 'mehanska ograja/ograda', 'Mala podlasica');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (34, 'mehanska ograja/ograda', 'Velika podlasica - hermelin');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (35, 'mehanska ograja/ograda', 'Dihur');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (36, 'mehanska ograja/ograda', 'Divja mačka');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (37, 'mehanska ograja/ograda', 'Evrazijski ris');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (38, 'mehanska ograja/ograda', 'Rjavi medved');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (39, 'mehanska ograja/ograda', 'Volk');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (40, 'kletka (kokošnjak, zajčnik, voljera ipd.)', 'Krokar');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (41, 'kletka (kokošnjak, zajčnik, voljera ipd.)', 'Kanja');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (42, 'kletka (kokošnjak, zajčnik, voljera ipd.)', 'Kragulj');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (43, 'kletka (kokošnjak, zajčnik, voljera ipd.)', 'Planinski orel');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (44, 'kletka (kokošnjak, zajčnik, voljera ipd.)', 'Mala podlasica');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (45, 'kletka (kokošnjak, zajčnik, voljera ipd.)', 'Velika podlasica - hermelin');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (46, 'kletka (kokošnjak, zajčnik, voljera ipd.)', 'Dihur');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (47, 'kletka (kokošnjak, zajčnik, voljera ipd.)', 'Divja mačka');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (48, 'kletka (kokošnjak, zajčnik, voljera ipd.)', 'Evrazijski ris');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (49, 'kletka (kokošnjak, zajčnik, voljera ipd.)', 'Rjavi medved');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (50, 'kletka (kokošnjak, zajčnik, voljera ipd.)', 'Volk');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (51, 'pastirski pes ob čredi', 'Evrazijski ris');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (52, 'pastirski pes ob čredi', 'Rjavi medved');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (53, 'pastirski pes ob čredi', 'Volk');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (54, 'pastirski pes ob čredi', 'Krokar');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (55, 'stalna prisotnost pastirja ob čredi, tudi v času napada', 'Evrazijski ris');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (56, 'stalna prisotnost pastirja ob čredi, tudi v času napada', 'Rjavi medved');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (57, 'stalna prisotnost pastirja ob čredi, tudi v času napada', 'Volk');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (58, 'stalna prisotnost pastirja ob čredi, tudi v času napada', 'Krokar');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (59, 'kemična odvračala', 'Rjavi medved');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (60, 'kemična odvračala', 'Volk');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (61, 'kemična odvračala', 'Evrazijski ris');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (62, 'kemična odvračala', 'Divja mačka');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (63, 'kemična odvračala', 'Vidra');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (64, 'kemična odvračala', 'Dihur');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (65, 'kemična odvračala', 'Velika podlasica - hermelin');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (66, 'kemična odvračala', 'Mala podlasica');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (67, 'kemična odvračala', 'Navadna veverica');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (68, 'kemična odvračala', 'Bober');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (69, 'zvočna odvračala', 'Krokar');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (70, 'zvočna odvračala', 'Poljska vrana');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (71, 'zvočna odvračala', 'Črna vrana');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (72, 'zvočna odvračala', 'Kavka');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (73, 'zvočna odvračala', 'Drozgi (npr. kos, cikovt, carar, …)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (74, 'zvočna odvračala', 'Škorec');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (75, 'zvočna odvračala', 'Neugotovljiva vrsta ptice pevke');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (76, 'zvočna odvračala', 'Druga vrsta ptice pevke (navedi)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (77, 'zvočna odvračala', 'Divja mačka');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (78, 'zvočna odvračala', 'Evrazijski ris');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (79, 'zvočna odvračala', 'Rjavi medved');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (80, 'zvočna odvračala', 'Volk');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (81, 'pokrivne zaščitne mreže (varovanje pred ptiči)', 'Krokar');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (82, 'pokrivne zaščitne mreže (varovanje pred ptiči)', 'Poljska vrana');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (83, 'pokrivne zaščitne mreže (varovanje pred ptiči)', 'Črna vrana');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (84, 'pokrivne zaščitne mreže (varovanje pred ptiči)', 'Kavka');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (85, 'pokrivne zaščitne mreže (varovanje pred ptiči)', 'Drozgi (npr. kos, cikovt, carar, …)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (86, 'pokrivne zaščitne mreže (varovanje pred ptiči)', 'Škorec');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (87, 'pokrivne zaščitne mreže (varovanje pred ptiči)', 'Neugotovljiva vrsta ptice pevke');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (88, 'pokrivne zaščitne mreže (varovanje pred ptiči)', 'Druga vrsta ptice pevke (navedi)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (89, 'pokrivne zaščitne mreže (varovanje pred ptiči)', 'Veliki detel');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (90, 'pokrivne zaščitne mreže (varovanje pred ptiči)', 'Črna žolna');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (91, 'pokrivne zaščitne mreže (varovanje pred ptiči)', 'Zelena žolna');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (92, 'pokrivne zaščitne mreže (varovanje pred ptiči)', 'Pivka');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (93, 'pokrivne zaščitne mreže (varovanje pred ptiči)', 'Neugotovljiva vrsta žolne');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (94, 'pokrivne zaščitne mreže (varovanje pred ptiči)', 'Druga vrsta žolne (navedi)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (95, 'pokrivne zaščitne mreže (varovanje pred ptiči)', 'Kanja');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (96, 'pokrivne zaščitne mreže (varovanje pred ptiči)', 'Kragulj');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (97, 'pokrivne zaščitne mreže (varovanje pred ptiči)', 'Planinski orel');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (98, 'pokrivne zaščitne mreže (varovanje pred ptiči)', 'Druga vrsta ujede ali sove');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (99, 'pokrivne zaščitne mreže (varovanje pred ptiči)', 'Bela štorklja');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (100, 'pokrivne zaščitne mreže (varovanje pred ptiči)', 'Labod grbec');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (101, 'škodni objekt v zaprtem prostoru (hiša, hlev, garaža ipd.)', 'Evrazijski ris');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (102, 'škodni objekt v zaprtem prostoru (hiša, hlev, garaža ipd.)', 'Rjavi medved');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (103, 'škodni objekt v zaprtem prostoru (hiša, hlev, garaža ipd.)', 'Volk');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (104, 'škodni objekt v zaprtem prostoru (hiša, hlev, garaža ipd.)', 'Kanja');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (105, 'škodni objekt v zaprtem prostoru (hiša, hlev, garaža ipd.)', 'Kragulj');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (106, 'škodni objekt v zaprtem prostoru (hiša, hlev, garaža ipd.)', 'Planinski orel');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (107, 'škodni objekt v zaprtem prostoru (hiša, hlev, garaža ipd.)', 'Druga vrsta ujede ali sove');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (108, 'škodni objekt v zaprtem prostoru (hiša, hlev, garaža ipd.)', 'Mala podlasica');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (109, 'škodni objekt v zaprtem prostoru (hiša, hlev, garaža ipd.)', 'Velika podlasica - hermelin');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (110, 'škodni objekt v zaprtem prostoru (hiša, hlev, garaža ipd.)', 'Dihur');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (111, 'škodni objekt v zaprtem prostoru (hiša, hlev, garaža ipd.)', 'Divja mačka');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (112, 'drog proti izvlačenju panjev (čebelnjak)', 'Rjavi medved');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (113, 'nivo dvignjen od tal (čebelnjak, krmilnik ipd.)', 'Rjavi medved');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (114, 'rešetke na iztočnih kanalih (ribe)', 'Vidra');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (115, 'elektromreža', 'Nezavarovana vrsta (tudi pes)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (116, 'žična elektroograja', 'Nezavarovana vrsta (tudi pes)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (117, 'farmer mreža', 'Nezavarovana vrsta (tudi pes)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (118, 'farmer mreža nadgrajena z električnimi žicami', 'Nezavarovana vrsta (tudi pes)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (119, 'mehanska ograja/ograda', 'Nezavarovana vrsta (tudi pes)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (120, 'kletka (kokošnjak, zajčnik, voljera ipd.)', 'Nezavarovana vrsta (tudi pes)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (121, 'pastirski pes ob čredi', 'Nezavarovana vrsta (tudi pes)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (122, 'stalna prisotnost pastirja ob čredi, tudi v času napada', 'Nezavarovana vrsta (tudi pes)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (123, 'kemična odvračala', 'Nezavarovana vrsta (tudi pes)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (124, 'zvočna odvračala', 'Nezavarovana vrsta (tudi pes)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (125, 'vizualna odvračala (trakovi, strašila ipd.)', 'Nezavarovana vrsta (tudi pes)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (126, 'pokrivne zaščitne mreže (varovanje pred ptiči)', 'Nezavarovana vrsta (tudi pes)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (127, 'škodni objekt v zaprtem prostoru (hiša, hlev, garaža ipd.)', 'Nezavarovana vrsta (tudi pes)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (128, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Nezavarovana vrsta (tudi pes)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (129, 'drog proti izvlačenju panjev (čebelnjak)', 'Nezavarovana vrsta (tudi pes)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (130, 'nivo dvignjen od tal (čebelnjak, krmilnik ipd.)', 'Nezavarovana vrsta (tudi pes)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (131, 'rešetke na iztočnih kanalih (ribe)', 'Nezavarovana vrsta (tudi pes)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (132, 'drugo (navedi)', 'Nezavarovana vrsta (tudi pes)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (133, 'elektromreža', 'Neugotovljivo / neznano');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (134, 'žična elektroograja', 'Neugotovljivo / neznano');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (135, 'farmer mreža', 'Neugotovljivo / neznano');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (136, 'farmer mreža nadgrajena z električnimi žicami', 'Neugotovljivo / neznano');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (137, 'mehanska ograja/ograda', 'Neugotovljivo / neznano');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (138, 'kletka (kokošnjak, zajčnik, voljera ipd.)', 'Neugotovljivo / neznano');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (139, 'pastirski pes ob čredi', 'Neugotovljivo / neznano');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (140, 'stalna prisotnost pastirja ob čredi, tudi v času napada', 'Neugotovljivo / neznano');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (141, 'kemična odvračala', 'Neugotovljivo / neznano');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (142, 'zvočna odvračala', 'Neugotovljivo / neznano');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (143, 'vizualna odvračala (trakovi, strašila ipd.)', 'Neugotovljivo / neznano');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (144, 'pokrivne zaščitne mreže (varovanje pred ptiči)', 'Neugotovljivo / neznano');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (145, 'škodni objekt v zaprtem prostoru (hiša, hlev, garaža ipd.)', 'Neugotovljivo / neznano');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (146, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Neugotovljivo / neznano');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (147, 'drog proti izvlačenju panjev (čebelnjak)', 'Neugotovljivo / neznano');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (148, 'nivo dvignjen od tal (čebelnjak, krmilnik ipd.)', 'Neugotovljivo / neznano');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (149, 'rešetke na iztočnih kanalih (ribe)', 'Neugotovljivo / neznano');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (150, 'drugo (navedi)', 'Neugotovljivo / neznano');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (151, 'elektromreža', 'culprit_options.Drugo');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (152, 'žična elektroograja', 'culprit_options.Drugo');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (153, 'farmer mreža', 'culprit_options.Drugo');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (154, 'farmer mreža nadgrajena z električnimi žicami', 'culprit_options.Drugo');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (155, 'mehanska ograja/ograda', 'culprit_options.Drugo');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (156, 'kletka (kokošnjak, zajčnik, voljera ipd.)', 'culprit_options.Drugo');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (157, 'pastirski pes ob čredi', 'culprit_options.Drugo');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (158, 'stalna prisotnost pastirja ob čredi, tudi v času napada', 'culprit_options.Drugo');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (159, 'kemična odvračala', 'culprit_options.Drugo');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (160, 'zvočna odvračala', 'culprit_options.Drugo');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (161, 'vizualna odvračala (trakovi, strašila ipd.)', 'culprit_options.Drugo');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (162, 'pokrivne zaščitne mreže (varovanje pred ptiči)', 'culprit_options.Drugo');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (163, 'škodni objekt v zaprtem prostoru (hiša, hlev, garaža ipd.)', 'culprit_options.Drugo');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (164, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'culprit_options.Drugo');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (165, 'drog proti izvlačenju panjev (čebelnjak)', 'culprit_options.Drugo');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (166, 'nivo dvignjen od tal (čebelnjak, krmilnik ipd.)', 'culprit_options.Drugo');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (167, 'rešetke na iztočnih kanalih (ribe)', 'culprit_options.Drugo');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (168, 'drugo (navedi)', 'culprit_options.Drugo');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (172, 'vizualna odvračala (trakovi, strašila ipd.)', 'Neugotovljiva vrsta ptice pevke');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (173, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Neugotovljiva vrsta ptice pevke');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (174, 'drugo (navedi)', 'Neugotovljiva vrsta ptice pevke');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (175, 'vizualna odvračala (trakovi, strašila ipd.)', 'Druga vrsta ptice pevke (navedi)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (176, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Druga vrsta ptice pevke (navedi)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (177, 'drugo (navedi)', 'Druga vrsta ptice pevke (navedi)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (178, 'vizualna odvračala (trakovi, strašila ipd.)', 'Veliki detel');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (179, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Veliki detel');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (180, 'drugo (navedi)', 'Veliki detel');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (181, 'vizualna odvračala (trakovi, strašila ipd.)', 'Črna žolna');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (182, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Črna žolna');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (183, 'drugo (navedi)', 'Črna žolna');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (184, 'vizualna odvračala (trakovi, strašila ipd.)', 'Rjavi medved');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (185, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Rjavi medved');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (186, 'drugo (navedi)', 'Rjavi medved');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (187, 'vizualna odvračala (trakovi, strašila ipd.)', 'Evrazijski ris');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (188, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Evrazijski ris');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (189, 'drugo (navedi)', 'Evrazijski ris');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (190, 'vizualna odvračala (trakovi, strašila ipd.)', 'Divja mačka');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (191, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Divja mačka');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (192, 'drugo (navedi)', 'Divja mačka');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (193, 'vizualna odvračala (trakovi, strašila ipd.)', 'Vidra');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (194, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Vidra');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (195, 'drugo (navedi)', 'Vidra');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (196, 'vizualna odvračala (trakovi, strašila ipd.)', 'Dihur');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (197, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Dihur');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (198, 'drugo (navedi)', 'Dihur');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (199, 'vizualna odvračala (trakovi, strašila ipd.)', 'Velika podlasica - hermelin');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (200, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Velika podlasica - hermelin');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (201, 'drugo (navedi)', 'Velika podlasica - hermelin');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (202, 'vizualna odvračala (trakovi, strašila ipd.)', 'Mala podlasica');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (203, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Mala podlasica');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (204, 'drugo (navedi)', 'Mala podlasica');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (205, 'vizualna odvračala (trakovi, strašila ipd.)', 'Navadna veverica');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (206, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Navadna veverica');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (207, 'drugo (navedi)', 'Navadna veverica');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (208, 'vizualna odvračala (trakovi, strašila ipd.)', 'Bober');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (209, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Bober');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (210, 'drugo (navedi)', 'Bober');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (211, 'vizualna odvračala (trakovi, strašila ipd.)', 'Krokar');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (212, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Krokar');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (213, 'drugo (navedi)', 'Krokar');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (214, 'vizualna odvračala (trakovi, strašila ipd.)', 'Poljska vrana');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (215, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Poljska vrana');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (216, 'drugo (navedi)', 'Poljska vrana');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (217, 'vizualna odvračala (trakovi, strašila ipd.)', 'Črna vrana');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (218, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Črna vrana');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (219, 'drugo (navedi)', 'Črna vrana');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (220, 'vizualna odvračala (trakovi, strašila ipd.)', 'Kavka');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (221, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Kavka');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (222, 'drugo (navedi)', 'Kavka');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (223, 'vizualna odvračala (trakovi, strašila ipd.)', 'Drozgi (npr. kos, cikovt, carar, …)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (224, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Drozgi (npr. kos, cikovt, carar, …)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (225, 'drugo (navedi)', 'Drozgi (npr. kos, cikovt, carar, …)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (226, 'vizualna odvračala (trakovi, strašila ipd.)', 'Škorec');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (227, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Škorec');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (228, 'drugo (navedi)', 'Škorec');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (229, 'vizualna odvračala (trakovi, strašila ipd.)', 'Zelena žolna');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (230, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Zelena žolna');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (231, 'drugo (navedi)', 'Zelena žolna');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (232, 'vizualna odvračala (trakovi, strašila ipd.)', 'Pivka');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (233, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Pivka');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (234, 'drugo (navedi)', 'Pivka');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (235, 'vizualna odvračala (trakovi, strašila ipd.)', 'Druga vrsta žolne (navedi)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (236, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Druga vrsta žolne (navedi)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (237, 'drugo (navedi)', 'Druga vrsta žolne (navedi)');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (238, 'vizualna odvračala (trakovi, strašila ipd.)', 'Kanja');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (239, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Kanja');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (240, 'drugo (navedi)', 'Kanja');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (241, 'vizualna odvračala (trakovi, strašila ipd.)', 'Kragulj');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (242, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Kragulj');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (243, 'drugo (navedi)', 'Kragulj');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (244, 'vizualna odvračala (trakovi, strašila ipd.)', 'Planinski orel');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (245, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Planinski orel');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (246, 'drugo (navedi)', 'Planinski orel');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (247, 'vizualna odvračala (trakovi, strašila ipd.)', 'Druga vrsta ujede ali sove');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (248, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Druga vrsta ujede ali sove');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (249, 'drugo (navedi)', 'Druga vrsta ujede ali sove');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (250, 'vizualna odvračala (trakovi, strašila ipd.)', 'Bela štorklja');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (251, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Bela štorklja');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (252, 'drugo (navedi)', 'Bela štorklja');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (253, 'vizualna odvračala (trakovi, strašila ipd.)', 'Labod grbec');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (254, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Labod grbec');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (255, 'drugo (navedi)', 'Labod grbec');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (256, 'vizualna odvračala (trakovi, strašila ipd.)', 'Volk');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (257, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Volk');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (258, 'drugo (navedi)', 'Volk');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (259, 'vizualna odvračala (trakovi, strašila ipd.)', 'Neugotovljiva vrsta žolne');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (260, 'škodni objekt v neposredni bližini stanovanjskega poslopja (do 10 m)', 'Neugotovljiva vrsta žolne');
INSERT INTO mb2data.dmg_nacini_varovanja VALUES (261, 'drugo (navedi)', 'Neugotovljiva vrsta žolne');


--
-- Data for Name: dmg_others; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.dmg_others VALUES (1, 'strokovnjak1', 'strokovna ulica', '4', 201, -1, 'Tuja pošta PBOX 123', '00123', NULL);
INSERT INTO mb2data.dmg_others VALUES (2, 'Anton Opazovalec', 'Srednja ulica', '7', 203, 1234, NULL, '041898323', NULL);
INSERT INTO mb2data.dmg_others VALUES (3, 'Leopold Krt', 'Na deželi', '6', 203, 6280, NULL, '041673829', NULL);


--
-- Data for Name: dmg_skodni_objekti; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.dmg_skodni_objekti VALUES (6393, 'Krmilnik za divjad', NULL, NULL, NULL, false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6394, 'Vozilo', NULL, NULL, NULL, false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6395, 'Človek', NULL, NULL, NULL, false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6396, 'Drugo', NULL, NULL, NULL, false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5864, 'Pšenica', 'Žita', 'Druge poljščine/vrtnine', '[{"c": "122.35", "e": "t"}, {"c": "538.34", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5865, 'Žita', 'Rastlina na kmetijski površini / Rastlinski pridelek', NULL, NULL, false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5866, 'Rž', 'Žita', 'Druge poljščine/vrtnine', '[{"c": "121.00", "e": "t"}, {"c": "353.32", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5868, 'Ječmen', 'Žita', 'Druge poljščine/vrtnine', '[{"c": "123.38", "e": "t"}, {"c": "447.87", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5870, 'Oves', 'Žita', 'Druge poljščine/vrtnine', '[{"c": "143.39", "e": "t"}, {"c": "372.81", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5872, 'Koruza v zrnju', 'Žita', 'Koruza v zrnju', '[{"c": "123.02", "e": "t"}, {"c": "854.99", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5874, 'Triticale', 'Žita', 'Druge poljščine/vrtnine', '[{"c": "132.42", "e": "t"}, {"c": "496.58", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5876, 'Ajda', 'Žita', 'Druge poljščine/vrtnine', '[{"c": "419.39", "e": "t"}, {"c": "461.33", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5878, 'Druge vrste žit (navedi)', 'Žita', 'Druge poljščine/vrtnine', '[{"e": "t"}, {"e": "ha"}]', true);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5880, 'Sončnica, seme', 'Industrijske rastline', 'Druge poljščine/vrtnine', '[{"c": "0.27", "e": "kg"}, {"c": "378.00", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5881, 'Industrijske rastline', 'Rastlina na kmetijski površini / Rastlinski pridelek', NULL, NULL, false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5882, 'Oljna ogrščica, seme', 'Industrijske rastline', 'Druge poljščine/vrtnine', '[{"c": "0.22", "e": "kg"}, {"c": "506.00", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5884, 'Sladkorna pesa', 'Industrijske rastline', 'Druge poljščine/vrtnine', '[{"c": "36.48", "e": "kg"}, {"c": "1615334.40", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5886, 'Hmelj', 'Industrijske rastline', 'Druge poljščine/vrtnine', '[{"c": "4.36", "e": "kg"}, {"c": "5798.80", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5888, 'Buče, seme', 'Industrijske rastline', 'Druge poljščine/vrtnine', '[{"c": "2.28", "e": "kg"}, {"c": "1824.00", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5890, 'Zdravilna zelišča', 'Industrijske rastline', 'Druge poljščine/vrtnine', '[{"c": "0.41", "e": "kg"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5892, 'Druge vrste industrijskih rastlin (navedi)', 'Industrijske rastline', 'Druge poljščine/vrtnine', '[{"e": "kg"}, {"e": "ha"}]', true);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5894, 'Krompir, zgodnji', 'Vrtnine in gobe', 'Druge poljščine/vrtnine', '[{"c": "0.30", "e": "kg"}, {"c": "5154.00", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5895, 'Vrtnine in gobe', 'Rastlina na kmetijski površini / Rastlinski pridelek', NULL, NULL, false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5896, 'Krompir, pozni', 'Vrtnine in gobe', 'Druge poljščine/vrtnine', '[{"c": "0.23", "e": "kg"}, {"c": "4857.60", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5898, 'Krompir, semenski', 'Vrtnine in gobe', 'Druge poljščine/vrtnine', '[{"c": "0.50", "e": "kg"}, {"c": "9815.00", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5900, 'Fižol v zrnju', 'Vrtnine in gobe', 'Druge poljščine/vrtnine', '[{"c": "2.08", "e": "kg"}, {"c": "3265.60", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5902, 'Fižol, stročji', 'Vrtnine in gobe', 'Druge poljščine/vrtnine', '[{"c": "1.48", "e": "kg"}, {"c": "10182.40", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5904, 'Grah, svež', 'Vrtnine in gobe', 'Druge poljščine/vrtnine', '[{"c": "1.51", "e": "kg"}, {"c": "6644.00", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5906, 'Korenček', 'Vrtnine in gobe', 'Druge poljščine/vrtnine', '[{"c": "0.38", "e": "kg"}, {"c": "7383.40", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5908, 'Zelje', 'Vrtnine in gobe', 'Druge poljščine/vrtnine', '[{"c": "0.19", "e": "kg"}, {"c": "5700.00", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5910, 'Kitajsko zelje', 'Vrtnine in gobe', 'Druge poljščine/vrtnine', '[{"c": "0.58", "e": "kg"}, {"c": "12760.00", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5912, 'Čebula', 'Vrtnine in gobe', 'Druge poljščine/vrtnine', '[{"c": "0.41", "e": "kg"}, {"c": "8601.80", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5914, 'Česen', 'Vrtnine in gobe', 'Druge poljščine/vrtnine', '[{"c": "2.15", "e": "kg"}, {"c": "13652.50", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5916, 'Paradižnik', 'Vrtnine in gobe', 'Druge poljščine/vrtnine', '[{"c": "0.75", "e": "kg"}, {"c": "19852.50", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5918, 'Paprika', 'Vrtnine in gobe', 'Druge poljščine/vrtnine', '[{"c": "0.80", "e": "kg"}, {"c": "23976.00", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5920, 'Cvetača', 'Vrtnine in gobe', 'Druge poljščine/vrtnine', '[{"c": "0.68", "e": "kg"}, {"c": "11546.40", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5922, 'Rdeča pesa', 'Vrtnine in gobe', 'Druge poljščine/vrtnine', '[{"c": "0.11", "e": "kg"}, {"c": "2381.50", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5924, 'Kumare, solatne', 'Vrtnine in gobe', 'Druge poljščine/vrtnine', '[{"c": "0.47", "e": "kg"}, {"c": "9367.10", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5926, 'Kumare za vlaganje', 'Vrtnine in gobe', 'Druge poljščine/vrtnine', '[{"c": "0.43", "e": "kg"}, {"c": "8569.90", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5928, 'Špinača', 'Vrtnine in gobe', 'Druge poljščine/vrtnine', '[{"c": "1.40", "e": "kg"}, {"c": "16002.00", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5930, 'Solata (zgodnja, poletna, jesenska)', 'Vrtnine in gobe', 'Druge poljščine/vrtnine', '[{"c": "0.59", "e": "kg"}, {"c": "11168.70", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5932, 'Endivja', 'Vrtnine in gobe', 'Druge poljščine/vrtnine', '[{"c": "0.68", "e": "kg"}, {"c": "12954.00", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5934, 'Radič', 'Vrtnine in gobe', 'Druge poljščine/vrtnine', '[{"c": "0.71", "e": "kg"}, {"c": "9847.70", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5936, 'Druge sveže vrtnine (peteršilj, koleraba, motovilec)', 'Vrtnine in gobe', 'Druge poljščine/vrtnine', '[{"c": "0.64", "e": "kg"}, {"c": "11328.00", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5938, 'Gojene gobe', 'Vrtnine in gobe', 'Druge poljščine/vrtnine', '[{"c": "2.38", "e": "kg"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5940, 'Druge vrste vrtnin (navedi)', 'Vrtnine in gobe', 'Druge poljščine/vrtnine', '[{"e": "kg"}, {"e": "ha"}]', true);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5942, 'Seno', 'Krmne rastline', 'Seno', '[{"c": "97.31", "e": "t"}, {"c": "453.46", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5943, 'Krmne rastline', 'Rastlina na kmetijski površini / Rastlinski pridelek', NULL, NULL, false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5944, 'Koruza za siliranje', 'Krmne rastline', 'Krmne rastline', '[{"c": "23.41", "e": "t"}, {"c": "931.72", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5946, 'Krmna pesa', 'Krmne rastline', 'Krmne rastline', '[{"c": "87.80", "e": "t"}, {"c": "2489.13", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5948, 'Koruzna silaža', 'Krmne rastline', 'Krmne rastline', '[{"c": "22.55", "e": "t"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5950, 'Krmno korenje', 'Krmne rastline', 'Krmne rastline', '[{"c": "87.80", "e": "t"}, {"c": "1389.87", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5952, 'Druge vrste krmnih rastlin (navedi)', 'Krmne rastline', 'Krmne rastline', '[{"e": "t"}, {"e": "ha"}]', true);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5954, 'Bale travna silaža', 'Bale', 'Bala travne silaže', '[{"c": "0.04", "e": "kg"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5955, 'Bale', 'Rastlina na kmetijski površini / Rastlinski pridelek', NULL, NULL, false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5956, 'Bale mrva', 'Bale', 'Bala mrve', '[{"c": "0.07", "e": "kg"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6391, 'Domača/hišna žival', NULL, NULL, NULL, false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5958, 'Druge vrste bal (navedi)', 'Bale', 'Druge vrste bal', '[{"e": "kg"}]', true);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5960, 'Češplje, slive', 'Sadje - intenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "0.66", "e": "kg"}, {"c": "6204.00", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5961, 'Sadje - intenzivni sadovnjak', 'Rastlina na kmetijski površini / Rastlinski pridelek', NULL, NULL, false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5962, 'Jabolka, namizna, I kakovost', 'Sadje - intenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "0.39", "e": "kg"}, {"c": "9913.80", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5964, 'Jabolka, namizna, II kakovost', 'Sadje - intenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "0.28", "e": "kg"}, {"c": "7117.60", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5966, 'Jabolka za predelavo', 'Sadje - intenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "0.10", "e": "kg"}, {"c": "2542.00", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5968, 'Hruške, namizne, I kakovost', 'Sadje - intenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "0.65", "e": "kg"}, {"c": "9373.00", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5970, 'Hruške, namizne, II kakovost', 'Sadje - intenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "0.33", "e": "kg"}, {"c": "4758.60", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5972, 'Hruške za predelavo', 'Sadje - intenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "0.29", "e": "kg"}, {"c": "4181.80", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5974, 'Češnje', 'Sadje - intenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "1.79", "e": "kg"}, {"c": "12046.70", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5976, 'Višnje', 'Sadje - intenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "0.46", "e": "kg"}, {"c": "2152.80", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5978, 'Marelice', 'Sadje - intenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "1.08", "e": "kg"}, {"c": "6987.60", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5980, 'Breskve, namizne', 'Sadje - intenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "0.62", "e": "kg"}, {"c": "8729.60", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5982, 'Breskve za predelavo', 'Sadje - intenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "0.30", "e": "kg"}, {"c": "4224.00", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5984, 'Jagode, gojene', 'Sadje - intenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "2.46", "e": "kg"}, {"c": "47059.80", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5986, 'Ribez in maline', 'Sadje - intenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "3.55", "e": "kg"}, {"c": "16862.50", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5988, 'Nektarine', 'Sadje - intenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "0.66", "e": "kg"}, {"c": "7920.00", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5990, 'Kaki', 'Sadje - intenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "1.00", "e": "kg"}, {"c": "20000.00", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5992, 'Kivi', 'Sadje - intenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "0.66", "e": "kg"}, {"c": "19650.00", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5994, 'Borovnice - gojene', 'Sadje - intenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "1.15", "e": "kg"}, {"c": "13800.00", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5996, 'Mandelj', 'Sadje - intenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "0.20", "e": "kg"}, {"c": "398.00", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (5998, 'Kutina', 'Sadje - intenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "0.21", "e": "kg"}, {"c": "2625.00", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6000, 'Robide', 'Sadje - intenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "3.00", "e": "kg"}, {"c": "12000.00", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6002, 'Oljka', 'Sadje - intenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "2.21", "e": "kg"}, {"c": "11050.00", "e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6004, 'Fige', 'Sadje - intenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "2.00", "e": "kg"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6006, 'Lešniki', 'Sadje - intenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "4.00", "e": "kg"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6008, 'Kostanj (maroni)', 'Sadje - intenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "1.77", "e": "kg"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6010, 'Druge vrste sadja (navedi)', 'Sadje - intenzivni sadovnjak', 'Sadje, sadno drevje', '[{"e": "kg"}, {"e": "ha"}]', true);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6012, 'Jabolka', 'Sadje - ekstenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "0.39", "e": "kg"}, {"c": "18.40", "e": "drevo"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6013, 'Sadje - ekstenzivni sadovnjak', 'Rastlina na kmetijski površini / Rastlinski pridelek', NULL, NULL, false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6014, 'Hruške', 'Sadje - ekstenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "0.65", "e": "kg"}, {"c": "19.13", "e": "drevo"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6016, 'Breskve', 'Sadje - ekstenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "0.62", "e": "kg"}, {"c": "8.59", "e": "drevo"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6018, 'Marelice', 'Sadje - ekstenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "1.08", "e": "kg"}, {"c": "13.52", "e": "drevo"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6020, 'Češnje', 'Sadje - ekstenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "1.79", "e": "kg"}, {"c": "37.72", "e": "drevo"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6022, 'Višnje', 'Sadje - ekstenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "0.46", "e": "kg"}, {"c": "6.54", "e": "drevo"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6024, 'Češplje, slive', 'Sadje - ekstenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "0.66", "e": "kg"}, {"c": "11.44", "e": "drevo"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6026, 'Orehi', 'Sadje - ekstenzivni sadovnjak', 'Sadje, sadno drevje', '[{"c": "2.34", "e": "kg"}, {"c": "40.67", "e": "drevo"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6028, 'Druge vrste sadja (navedi)', 'Sadje - ekstenzivni sadovnjak', 'Sadje, sadno drevje', '[{"e": "kg"}, {"e": "drevo"}]', true);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6030, 'Jabolka', 'Sadje - travniški sadovnjak', 'Sadje, sadno drevje', '[{"c": "0.39", "e": "kg"}, {"c": "39.00", "e": "drevo"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6031, 'Sadje - travniški sadovnjak', 'Rastlina na kmetijski površini / Rastlinski pridelek', NULL, NULL, false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6032, 'Hruške', 'Sadje - travniški sadovnjak', 'Sadje, sadno drevje', '[{"c": "0.65", "e": "kg"}, {"c": "65.00", "e": "drevo"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6034, 'Češnje', 'Sadje - travniški sadovnjak', 'Sadje, sadno drevje', '[{"c": "1.79", "e": "kg"}, {"c": "89.50", "e": "drevo"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6036, 'Slive', 'Sadje - travniški sadovnjak', 'Sadje, sadno drevje', '[{"c": "0.66", "e": "kg"}, {"c": "19.80", "e": "drevo"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6038, 'Orehi', 'Sadje - travniški sadovnjak', 'Sadje, sadno drevje', '[{"c": "2.34", "e": "kg"}, {"c": "234.00", "e": "drevo"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6040, 'Druge vrste sadja (navedi)', 'Sadje - travniški sadovnjak', 'Sadje, sadno drevje', '[{"e": "kg"}, {"e": "drevo"}]', true);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6042, 'Jabolka', 'Sadje - travniški sadovnjak - zelo rodna leta', 'Sadje, sadno drevje', '[{"c": "0.39", "e": "kg"}, {"c": "78.00", "e": "drevo"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6043, 'Sadje - travniški sadovnjak - zelo rodna leta', 'Rastlina na kmetijski površini / Rastlinski pridelek', NULL, NULL, false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6044, 'Hruške', 'Sadje - travniški sadovnjak - zelo rodna leta', 'Sadje, sadno drevje', '[{"c": "0.65", "e": "kg"}, {"c": "130.00", "e": "drevo"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6046, 'Češnje', 'Sadje - travniški sadovnjak - zelo rodna leta', 'Sadje, sadno drevje', '[{"c": "1.79", "e": "kg"}, {"c": "143.20", "e": "drevo"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6146, 'Petelini', 'Živina za pitanje, zakol', 'Kokoš', '[{"c": "5.53", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6048, 'Slive', 'Sadje - travniški sadovnjak - zelo rodna leta', 'Sadje, sadno drevje', '[{"c": "0.66", "e": "kg"}, {"c": "66.00", "e": "drevo"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6390, 'Gradbeni objekt', NULL, NULL, NULL, false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6050, 'Orehi', 'Sadje - travniški sadovnjak - zelo rodna leta', 'Sadje, sadno drevje', '[{"c": "2.34", "e": "kg"}, {"c": "351.00", "e": "drevo"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6052, 'Druge vrste sadja (navedi)', 'Sadje - travniški sadovnjak - zelo rodna leta', 'Sadje, sadno drevje', '[{"e": "kg"}, {"e": "drevo"}]', true);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6054, 'Sadike sadnega drevja - jablane', 'Sadike sadnega drevja', 'Sadje, sadno drevje', '[{"c": "2.76", "e": "sadika"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6055, 'Sadike sadnega drevja', 'Rastlina na kmetijski površini / Rastlinski pridelek', NULL, NULL, false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6056, 'Sadike sadnega drevja - hruške', 'Sadike sadnega drevja', 'Sadje, sadno drevje', '[{"c": "5.41", "e": "sadika"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6058, 'Sadike sadnega drevja - breskve', 'Sadike sadnega drevja', 'Sadje, sadno drevje', '[{"c": "3.81", "e": "sadika"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6060, 'Sadike sadnega drevja - druge (navedi)', 'Sadike sadnega drevja', 'Sadje, sadno drevje', '[{"c": "5.35", "e": "sadika"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6062, 'Okulirane podlage sadnih vrst', 'Sadike sadnega drevja', 'Sadje, sadno drevje', '[{"c": "1.00", "e": "sadika"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6064, 'Grozdje, rdeče', 'Grozdje', 'Grozdje', '[{"c": "0.67", "e": "kg"}, {"c": "4690.00", "e": "ha"}, {"c": "1.47", "e": "trta"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6065, 'Grozdje', 'Rastlina na kmetijski površini / Rastlinski pridelek', NULL, NULL, false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6066, 'Grozdje, belo', 'Grozdje', 'Grozdje', '[{"c": "0.49", "e": "kg"}, {"c": "3434.90", "e": "ha"}, {"c": "1.01", "e": "trta"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6068, 'Travna ruša', 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Travna ruša', '[{"e": "ha"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6069, 'Druge vrste rastlinskih pridelkov (navedi)', 'Rastlina na kmetijski površini / Rastlinski pridelek', 'Druge vrste rastlinskih pridelkov', '[{"e": "kg"}, {"e": "t"}, {"e": "kos"}, {"e": "ha"}, {"e": "trta"}]', true);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6070, 'Teleta (novorojena)', 'Živina za pitanje, zakol', 'Govedo', '[{"c": "300.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6071, 'Živina za pitanje, zakol', 'Rejna žival - ubita', NULL, NULL, false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6072, 'Teleta (staro manj kot 1 leto – M do 120 kg)', 'Živina za pitanje, zakol', 'Govedo', '[{"c": "5.00", "e": "kg"}, {"c": "600.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6074, 'Teleta (M od 121 kg do 250 kg)', 'Živina za pitanje, zakol', 'Govedo', '[{"c": "3.80", "e": "kg"}, {"c": "950.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6076, 'Teleta (staro manj kot 1 leto – Ž do 120 kg)', 'Živina za pitanje, zakol', 'Govedo', '[{"c": "4.00", "e": "kg"}, {"c": "480.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6078, 'Teleta (Ž nad 121 kg do 250 kg)', 'Živina za pitanje, zakol', 'Govedo', '[{"c": "3.20", "e": "kg"}, {"c": "800.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6080, 'Mlado pitano govedo (od 1 do manj kot 2 leti)', 'Živina za pitanje, zakol', 'Govedo', '[{"c": "2.00", "e": "kg"}, {"c": "1000.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6082, 'Drugo pitano govedo (več kot 2 leti)', 'Živina za pitanje, zakol', 'Govedo', '[{"c": "1170.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6084, 'Krave (do 5 let)', 'Živina za pitanje, zakol', 'Govedo', '[{"c": "960.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6086, 'Krave (nad 5 let)', 'Živina za pitanje, zakol', 'Govedo', '[{"c": "720.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6088, 'Pujski in mladi prašički (do 50 kg)', 'Živina za pitanje, zakol', 'Prašič', '[{"c": "1.85", "e": "kg"}, {"c": "92.50", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6090, 'Prašiči pitanci (do 150 kg)', 'Živina za pitanje, zakol', 'Prašič', '[{"c": "1.30", "e": "kg"}, {"c": "195.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6092, 'Jagnjeta (do mase 10 kg)', 'Živina za pitanje, zakol', 'Ovca', '[{"c": "70.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6094, 'Jagnjeta (od 11 kg do 25 kg)', 'Živina za pitanje, zakol', 'Ovca', '[{"c": "75.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6096, 'Jagnjeta (od 26 kg do 50 kg)', 'Živina za pitanje, zakol', 'Ovca', '[{"c": "85.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6098, 'Jagnjeta (kontrolirani tropi do mase 10 kg)', 'Živina za pitanje, zakol', 'Ovca', '[{"c": "84.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6100, 'Jagnjeta (kontrolirani tropi od 11 kg do 25 kg)', 'Živina za pitanje, zakol', 'Ovca', '[{"c": "90.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6102, 'Jagnjeta (kontrolirani tropi od 26 kg do 50 kg)', 'Živina za pitanje, zakol', 'Ovca', '[{"c": "102.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6104, 'Jagnjeta (genska banka do mase 10 kg)', 'Živina za pitanje, zakol', 'Ovca', '[{"c": "105.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6106, 'Jagnjeta (genska banka od 11 kg do 25 kg)', 'Živina za pitanje, zakol', 'Ovca', '[{"c": "112.50", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6108, 'Jagnjeta (genska banka od 26 kg do 50 kg)', 'Živina za pitanje, zakol', 'Ovca', '[{"c": "127.50", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6110, 'Kozlički (do mase 10 kg)', 'Živina za pitanje, zakol', 'Koza', '[{"c": "70.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6112, 'Kozlički (od 11 kg do 25 kg)', 'Živina za pitanje, zakol', 'Koza', '[{"c": "75.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6114, 'Kozlički (od 26 kg do 50 kg)', 'Živina za pitanje, zakol', 'Koza', '[{"c": "85.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6116, 'Kozlički (kontrolirani tropi do mase 10 kg)', 'Živina za pitanje, zakol', 'Koza', '[{"c": "84.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6118, 'Kozlički (kontrolirani tropi od 11 kg do 25 kg)', 'Živina za pitanje, zakol', 'Koza', '[{"c": "90.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6120, 'Kozlički (kontrolirani tropi od 26 kg do 50 kg)', 'Živina za pitanje, zakol', 'Koza', '[{"c": "102.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6122, 'Kozlički (genska banka do mase 10 kg)', 'Živina za pitanje, zakol', 'Koza', '[{"c": "105.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6124, 'Kozlički (genska banka od 11 kg do 25 kg)', 'Živina za pitanje, zakol', 'Koza', '[{"c": "112.50", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6126, 'Kozlički (genska banka od 26 kg do 50 kg)', 'Živina za pitanje, zakol', 'Koza', '[{"c": "127.50", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6128, 'Ovce (za pitanje, zakol, izločene živali)', 'Živina za pitanje, zakol', 'Ovca', '[{"c": "168.75", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6130, 'Koze (za pitanje, zakol, izločene živali)', 'Živina za pitanje, zakol', 'Koza', '[{"c": "168.75", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6132, 'Žrebeta (novorojena)', 'Živina za pitanje, zakol', 'Konj', '[{"c": "300.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6134, 'Žrebeta (do 1 leta)', 'Živina za pitanje, zakol', 'Konj', '[{"c": "2.50", "e": "kg"}, {"c": "1000.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6136, 'Konji', 'Živina za pitanje, zakol', 'Konj', '[{"c": "1080.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6138, 'Osli (novorojeni)', 'Živina za pitanje, zakol', 'Osel', '[{"c": "300.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6140, 'Osli', 'Živina za pitanje, zakol', 'Osel', '[{"c": "450.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6142, 'Piščanci', 'Živina za pitanje, zakol', 'Kokoš', '[{"c": "0.92", "e": "kg"}, {"c": "2.30", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6144, 'Kokoši', 'Živina za pitanje, zakol', 'Kokoš', '[{"c": "4.60", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6392, 'Divjad v obori', NULL, NULL, NULL, false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6148, 'Purani', 'Živina za pitanje, zakol', 'Druge vrste rejnih živali', '[{"c": "1.19", "e": "kg"}, {"c": "17.85", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6150, 'Druge vrste živali (navedi)', 'Živina za pitanje, zakol', 'Druge vrste rejnih živali', '[{"e": "kg"}, {"e": "žival"}]', true);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6152, 'Teleta (novorojena)', 'Živina za pleme', 'Govedo', '[{"c": "350.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6153, 'Živina za pleme', 'Rejna žival - ubita', NULL, NULL, false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6154, 'Teleta (staro manj kot 1 leto – Ž do 120 kg)', 'Živina za pleme', 'Govedo', '[{"c": "5.00", "e": "kg"}, {"c": "600.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6156, 'Teleta (Ž nad 121 do 250 kg)', 'Živina za pleme', 'Govedo', '[{"c": "2.50", "e": "kg"}, {"c": "625.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6158, 'Mlado govedo (od 1 do manj kot 2 leti)', 'Živina za pleme', 'Govedo', '[{"c": "2.50", "e": "kg"}, {"c": "1250.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6160, 'Krave (do 5 let)', 'Živina za pleme', 'Govedo', '[{"c": "1320.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6162, 'Krave (nad 5 let)', 'Živina za pleme', 'Govedo', '[{"c": "750.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6164, 'Breje telice', 'Živina za pleme', 'Govedo', '[{"c": "1320.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6166, 'Pujski in mladi prašički', 'Živina za pleme', 'Prašič', '[{"c": "2.73", "e": "kg"}, {"c": "136.50", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6168, 'Ovce (mlečne pasme)', 'Živina za pleme', 'Ovca', '[{"c": "210.75", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6170, 'Ovce (mlečne pasme – genska banka)', 'Živina za pleme', 'Ovca', '[{"c": "315.75", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6172, 'Ovce (mesne pasme)', 'Živina za pleme', 'Ovca', '[{"c": "181.50", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6174, 'Ovce (mesne pasme – genska banka)', 'Živina za pleme', 'Ovca', '[{"c": "273.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6176, 'Koze (mlečne pasme)', 'Živina za pleme', 'Koza', '[{"c": "210.75", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6178, 'Koze (mlečne pasme – genska banka)', 'Živina za pleme', 'Koza', '[{"c": "315.75", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6180, 'Koze (mesne pasme)', 'Živina za pleme', 'Koza', '[{"c": "181.50", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6182, 'Koze (mesne pasme – genska banka)', 'Živina za pleme', 'Koza', '[{"c": "273.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6184, 'Žrebeta (novorojena)', 'Živina za pleme', 'Konj', '[{"c": "400.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6186, 'Žrebeta (do 4 mesecev)', 'Živina za pleme', 'Konj', '[{"c": "1000.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6188, 'Žrebeta (od 4 do 12 mesecev)', 'Živina za pleme', 'Konj', '[{"c": "3.25", "e": "kg"}, {"c": "1300.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6190, 'Mladi konji (do 2 let)', 'Živina za pleme', 'Konj', '[{"c": "1800.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6192, 'Mladi konji (do 3 let)', 'Živina za pleme', 'Konj', '[{"c": "2300.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6194, 'Kobile (od 3 do 12 let)', 'Živina za pleme', 'Konj', '[{"c": "2800.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6196, 'Žrebci (od 3 do 12 let)', 'Živina za pleme', 'Konj', '[{"c": "7000.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6198, 'Kobile (od 12 do 18 let)', 'Živina za pleme', 'Konj', '[{"c": "2300.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6200, 'Žrebci (od 12 do 18 let)', 'Živina za pleme', 'Konj', '[{"c": "5000.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6202, 'Kobile, žrebci (nad 18 let)', 'Živina za pleme', 'Konj', '[{"c": "2000.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6204, 'Osli (novorojeni)', 'Živina za pleme', 'Osel', '[{"c": "350.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6206, 'Osli', 'Živina za pleme', 'Osel', '[{"c": "550.00", "e": "žival"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6208, 'Ribe - krapi', 'Živina za pleme', 'Ribe', '[{"c": "2.54", "e": "kg"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6210, 'Ribe - postrvi', 'Živina za pleme', 'Ribe', '[{"c": "2.56", "e": "kg"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6212, 'Ribe - druge vrste (navedi)', 'Živina za pleme', 'Ribe', '[{"e": "kg"}, {"e": "žival"}]', true);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6214, 'Druge vrste živali (navedi)', 'Živina za pleme', 'Druge vrste rejnih živali', '[{"e": "kg"}, {"e": "žival"}]', true);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6217, 'Živina za pitanje, zakol', 'Rejna žival - poškodovana', NULL, NULL, false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6299, 'Živina za pleme', 'Rejna žival - poškodovana', NULL, NULL, false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6362, 'Med cvetlični (prinesen pridelek)', 'Čebelarstvo', 'Čebelarstvo', '[{"c": "2.39", "e": "kg"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6363, 'Med gozdni (prinesen pridelek)', 'Čebelarstvo', 'Čebelarstvo', '[{"c": "2.64", "e": "kg"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6364, 'Panj AŽ', 'Čebelarstvo', 'Čebelarstvo', '[{"c": "120.00", "e": "kos"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6365, 'Panj LR', 'Čebelarstvo', 'Čebelarstvo', '[{"c": "161.00", "e": "kos"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6366, 'Panj Grajšev panj', 'Čebelarstvo', 'Čebelarstvo', '[{"c": "149.00", "e": "kos"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6367, 'Čebelja družina', 'Čebelarstvo', 'Čebelarstvo', '[{"c": "120.00", "e": "kos"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6368, 'Deli panja: izdelan sat', 'Čebelarstvo', 'Čebelarstvo', '[{"c": "5.25", "e": "kos"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6369, 'Deli panja: satnica z okvirjem', 'Čebelarstvo', 'Čebelarstvo', '[{"c": "1.98", "e": "kos"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6370, 'Deli panja: poškodovana brada panja AŽ', 'Čebelarstvo', 'Čebelarstvo', '[{"c": "39.60", "e": "kos"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6371, 'Deli panja: poškodovana brada Grajševa panj', 'Čebelarstvo', 'Čebelarstvo', '[{"c": "44.70", "e": "kos"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6372, 'Deli LR panja: podnica', 'Čebelarstvo', 'Čebelarstvo', '[{"c": "29.70", "e": "kos"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6373, 'Deli LR panja: naklada', 'Čebelarstvo', 'Čebelarstvo', '[{"c": "18.30", "e": "kos"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6374, 'Deli LR panja: matična rešetka', 'Čebelarstvo', 'Čebelarstvo', '[{"c": "5.00", "e": "kos"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6375, 'Deli LR panja: pitalnik', 'Čebelarstvo', 'Čebelarstvo', '[{"c": "15.20", "e": "kos"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6376, 'Deli LR panja: pokrov', 'Čebelarstvo', 'Čebelarstvo', '[{"c": "16.10", "e": "kos"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6377, 'Zimska zaloga (nakrmljeni sladkor)', 'Čebelarstvo', 'Čebelarstvo', '[{"c": "29.60", "e": "panj"}]', false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6378, 'Čebelarstvo - drugo (navedi)', 'Čebelarstvo', 'Čebelarstvo', '[{"e": "kg"}, {"e": "kos"}, {"e": "panj"}]', true);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6379, 'Gradbeni objekt (navedi vrsto objekta)', 'Gradbeni objekt', 'Gradbeni objekt', '[{"e": "objekt"}]', true);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6380, 'Domača/hišna žival (navedi vrsto živali)', 'Domača/hišna žival', 'Domača/hišna žival', '[{"e": "žival"}]', true);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6381, 'Divjad v obori (navedi vrsto divjadi)', 'Divjad v obori', 'Divjad v obori', '[{"e": "žival"}]', true);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6382, 'Krmilnik za divjad (navedi tip krmilnika)', 'Krmilnik za divjad', 'Krmilnik za divjad', '[{"e": "kos"}]', true);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6383, 'Vozilo (navedi vrsto vozila)', 'Vozilo', 'Vozilo', '[{"e": "vozilo"}]', true);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6384, 'Človek (opis)', 'Človek', 'Človek', '[{"e": "človek"}]', true);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6385, 'Drugo (navedi)', 'Drugo', 'Drugo', '[{"e": "drugo"}]', true);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6386, 'Rastlina na kmetijski površini / Rastlinski pridelek', NULL, NULL, NULL, false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6387, 'Rejna žival - ubita', NULL, NULL, NULL, false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6388, 'Rejna žival - poškodovana', NULL, NULL, NULL, false);
INSERT INTO mb2data.dmg_skodni_objekti VALUES (6389, 'Čebelarstvo', NULL, NULL, NULL, false);


--
-- Data for Name: dmg_uac; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--



--
-- Data for Name: dmg_urne_postavke; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.dmg_urne_postavke VALUES (1, 'Delovna ura – ročna – enostavna dela', 'h', 5);
INSERT INTO mb2data.dmg_urne_postavke VALUES (2, 'Delovna ura – ročna – zahtevnejša dela', 'h', 6.5);
INSERT INTO mb2data.dmg_urne_postavke VALUES (3, 'Delovna ura – ročna – posebna usposobljenost', 'h', 9);
INSERT INTO mb2data.dmg_urne_postavke VALUES (4, 'Strošek traktorja 60 KW – štirikolesni pogon', 'h', 18.8999996);
INSERT INTO mb2data.dmg_urne_postavke VALUES (5, 'Drugo', '', NULL);
INSERT INTO mb2data.dmg_urne_postavke VALUES (6, 'Bale travne silaže - stiskanje', 'bala', 5.30000019);
INSERT INTO mb2data.dmg_urne_postavke VALUES (7, 'Bale travne silaže - zavijanje', 'bala', 5.38000011);


--
-- Data for Name: dmg_znaki_povzrocitelja; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (1, 'drugo (navedi)', '[null, 1, 2, 3, 4, 5]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (2, 'druge sledi močnih udarcev (močne podplutbe, zmečkanine, kri v ustni votlini ipd.)', '[2]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (3, 'značilen razmak med podočniki (60 mm – 90 mm)', '[2]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (4, 'obsežne poškodbe z velikimi ranami v predelu grla ali vratu', '[5]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (5, 'plen je premeščen/odvlečen z mesta uboja', '[2]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (6, 'značilen razmak med podočniki (35 mm – 40 mm)', '[1]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (7, 'žival opažena/posneta v okolici nastanka škode tik pred/po nastanku škode', '[null]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (8, 'način prehranjevanja (npr. požrto vime, notranji organi)', '[1]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (9, 'površinske praske na telesu', '[1]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (10, 'poškodovan/raztrgan sapnik oz. požiralnik', '[5]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (11, 'pooblaščencu je bil prikazan slikovni material', '[null]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (12, 'več ugriznih ran na vseh delih telesa', '[5]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (13, 'oglodani uhlji', '[3, 4]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (14, 'značilen razmak med podočniki (25 mm – 30 mm)', '[3, 4]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (15, 'plen je zakopan', '[2]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (16, 'značilne sveže sledi (stopinje, dlaka, perje, iztrebki itd.) na škodnem objektu ali v neposredni bližini', '[null]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (17, 'način poškodovanja varovanja (ograje, ograde)', '[2]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (18, 'značilen ugriz v vrat s krvavitvijo (notranjo ali zunanjo)', '[1]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (19, 'pokončani kadavri niso požrti', '[5]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (20, 'več ugrizov na trebuhu, nogah, gobcu', '[3, 4]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (21, 'poročilo/zapisnik pooblaščene osebe (veterinar, policist ipd.)', '[null]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (22, 'predhodno pojavljanje istovrstnih škod v okolici z zanesljivo prepoznanim povzročiteljem', '[null]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (23, '(večkratni) ugriz v vrat', '[3, 4]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (24, 'odprta trebušna votlina, izvlečeni prebavni organi', '[5]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (25, 'način prehranjevanja (predel trebušne votline)', '[3, 4]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (26, 'zlomljena hrbtenica', '[2]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (27, 'žival opažena/posneta ali zanesljivi znaki prisotnosti živali v okolici nastanka škode en ali več dni pred nastankom škode', '[null]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (28, 'počena lobanja', '[2]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (29, '»scufana« dlaka ob kadavru', '[5]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (30, 'način prehranjevanja (npr. požrti notranji organi, odstranjena koža)', '[2]');
INSERT INTO mb2data.dmg_znaki_povzrocitelja VALUES (31, 'način poškodovanja škodnega objekta', '[null]');


--
-- Data for Name: genetic_samples_table; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--



--
-- Data for Name: gensam; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.gensam VALUES (1895, '0101000020E6100000445D5AC3FBD02C40F93A80B099BF4640', '{"lat": 45.49687773, "lon": 14.4081708, "_locations_table": null}', 'M2F4K', NULL, NULL, 3, NULL, 1, NULL, 13697, NULL, NULL, 3, NULL, NULL, '2019-03-07', NULL, 1, 1046, 17);
INSERT INTO mb2data.gensam VALUES (1896, '0101000020E6100000C80C54C6BF873A40DD0C37E0F3FF4640', '{"lat": 45.99963, "lon": 26.53027, "_locations_table": null}', 'M1XA8', NULL, NULL, 4, NULL, 1, NULL, 13699, NULL, NULL, 4, NULL, NULL, '2019-01-28', NULL, 1, 1046, 17);
INSERT INTO mb2data.gensam VALUES (1897, '0101000020E61000000F7F4DD6A8873A404ED1915CFEFF4640', '{"lat": 45.99995, "lon": 26.52992, "_locations_table": null}', 'LR001P', NULL, NULL, 4, NULL, 1, NULL, 13700, NULL, NULL, 4, NULL, NULL, '2019-01-28', NULL, 1, 1046, 17);

--
-- Data for Name: gps_colars_table; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--



--
-- Data for Name: individuals; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.individuals VALUES (303, 'JURA', NULL, 1046);
INSERT INTO mb2data.individuals VALUES (304, 'Goru', 1029, 1046);
INSERT INTO mb2data.individuals VALUES (305, 'Bunker2', 1029, 1046);
INSERT INTO mb2data.individuals VALUES (306, 'Glazuta2016', 1030, 1046);
INSERT INTO mb2data.individuals VALUES (307, 'Draga2', 1029, 1046);
INSERT INTO mb2data.individuals VALUES (308, 'Osilnica1', 1030, 1046);
INSERT INTO mb2data.individuals VALUES (309, 'Bukner3', 1030, 1046);
INSERT INTO mb2data.individuals VALUES (310, 'Osilnica2', 1029, 1046);
INSERT INTO mb2data.individuals VALUES (311, 'Kambrce1', 1029, 1046);
INSERT INTO mb2data.individuals VALUES (312, 'Predgrad1', 1030, 1046);
INSERT INTO mb2data.individuals VALUES (313, 'Hrusica1', 1029, 1046);
INSERT INTO mb2data.individuals VALUES (314, 'Teja (MalaGora1)', 1030, 1046);
INSERT INTO mb2data.individuals VALUES (315, 'PoljanskaGora1', NULL, 1046);
INSERT INTO mb2data.individuals VALUES (316, 'Teja(MalaGora1)', 1030, 1046);
INSERT INTO mb2data.individuals VALUES (317, 'Mala', 1030, 1046);
INSERT INTO mb2data.individuals VALUES (318, 'Draga1', 1030, 1046);
INSERT INTO mb2data.individuals VALUES (319, 'Stojna1', 1029, 1046);
INSERT INTO mb2data.individuals VALUES (320, 'Bojan', 1029, 1046);
INSERT INTO mb2data.individuals VALUES (321, 'Mišo (Jurjeva3)', 1029, 1046);
INSERT INTO mb2data.individuals VALUES (322, 'Gomance1', NULL, 1046);
INSERT INTO mb2data.individuals VALUES (323, 'Javorniki1', NULL, 1046);
INSERT INTO mb2data.individuals VALUES (324, 'Rog1', 1030, 1046);
INSERT INTO mb2data.individuals VALUES (325, 'Doru', 1029, 1046);
INSERT INTO mb2data.individuals VALUES (326, 'Menisija1', NULL, 1046);
INSERT INTO mb2data.individuals VALUES (327, 'Pogorelec1', NULL, 1046);
INSERT INTO mb2data.individuals VALUES (328, 'VelikaGora1', 1030, 1046);
INSERT INTO mb2data.individuals VALUES (329, 'Hrusica2', NULL, 1046);
INSERT INTO mb2data.individuals VALUES (330, 'Jurjeva1', 1030, 1046);
INSERT INTO mb2data.individuals VALUES (331, 'Marta (Jurjeva2)', 1030, 1046);
INSERT INTO mb2data.individuals VALUES (332, 'Javorje1', NULL, 1046);
INSERT INTO mb2data.individuals VALUES (333, 'MalaGora2', 1030, 1046);
INSERT INTO mb2data.individuals VALUES (334, 'Zdrocle1', 1030, 1046);
INSERT INTO mb2data.individuals VALUES (335, 'Nanos1', 1029, 1046);
INSERT INTO mb2data.individuals VALUES (336, 'Mokrc2', 1029, 1046);
INSERT INTO mb2data.individuals VALUES (337, 'Katalin', 1029, 1046);
INSERT INTO mb2data.individuals VALUES (338, 'BabnoPolje3', NULL, 1046);
INSERT INTO mb2data.individuals VALUES (339, 'Mokrc1', 1030, 1046);
INSERT INTO mb2data.individuals VALUES (340, 'PoljanskaGora2', NULL, 1046);
INSERT INTO mb2data.individuals VALUES (341, 'Zois', 1029, 1046);
INSERT INTO mb2data.individuals VALUES (342, 'Tris', 1029, 1046);
INSERT INTO mb2data.individuals VALUES (343, 'Bor', 1029, 1046);


--
-- Data for Name: interventions; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.interventions VALUES (5, 1407, NULL, 1411, NULL, NULL, '0101000020E6100000C7D40F3A4A722E402CB163988A154740', 'test', NULL, '2021-09-07 14:09:23.562782', '2021-09-07 14:09:46.197665', false, '{"_location": {"lat": 46.168292092016, "lon": 15.223222555573, "_locations_table": "interventions", "spatial_request_result": {"oe_ime": "CELJE", "lov_ime": "REČICA PRI LAŠKEM", "luo_ime": "Savinjsko Kozjansko", "ob_uime": "Laško"}}}');
INSERT INTO mb2data.interventions VALUES (7, 1405, NULL, 1594, NULL, NULL, '0101000020E6100000BAFFFFFFA3992C4064F12666BA0F4740', 'naj bi bil bold wolf', NULL, '2021-09-15 13:21:44.490078', '2021-09-15 14:54:03.024459', true, '{"_location": {"lat": 46.122875947013, "lon": 14.300079345703, "_locations_table": "interventions", "spatial_request_result": {"oe_ime": "KRANJ", "lov_ime": "ŠKOFJA LOKA", "luo_ime": "Gorenjsko", "ob_uime": "Škofja Loka"}}}');
INSERT INTO mb2data.interventions VALUES (8, 1404, NULL, 1594, NULL, NULL, '0101000020E610000077000040F5332E40EFF087D353304740', 'utopljen', NULL, '2021-09-16 09:07:44.531347', '2021-09-16 09:46:50.750893', false, '{"_location": {"lat": 46.377558175447, "lon": 15.101480484009, "_locations_table": "interventions", "spatial_request_result": {"oe_ime": "NAZARJE", "lov_ime": "ŠKALE", "luo_ime": "Savinjsko Kozjansko", "ob_uime": "Velenje"}}}');
INSERT INTO mb2data.interventions VALUES (6, 1407, NULL, 1411, NULL, NULL, '0101000020E61000001901000070092D40C312695ADBF44640', 'test2', NULL, '2021-09-07 14:10:04.754844', '2021-10-24 15:22:18.815365', false, '{"_location": {"lat": 45.912944127374, "lon": 14.518432617188, "_locations_table": "interventions", "spatial_request_result": {"oe_ime": "LJUBLJANA", "lov_ime": "MOKRC", "luo_ime": "Notranjsko", "ob_uime": "Ig"}}}');


--
-- Data for Name: interventions_events; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.interventions_events VALUES (8, 5, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2021-09-07 14:09:46.303756', '2021-09-07 14:09:46.303756', 1411);
INSERT INTO mb2data.interventions_events VALUES (10, 7, 12980, '["12996"]', 12983, 13006, 2748, '["1594", "782"]', 'ni ga bilo tam', 'jih bilo strah za psa', '2021-09-07 04:34:00', '2021-09-07 03:34:00', '2021-09-07 04:34:00', '{"intervention_caller": "klical kmet"}', '[["2748", "12996", "2021-09-08", null, null, null], ["778", "12997", "2021-09-07", "56", "5", "66"]]', '2021-09-15 14:31:12.873935', '2021-09-15 14:39:19.325843', 1594);
INSERT INTO mb2data.interventions_events VALUES (11, 7, 12981, '["13004"]', 12984, 13017, 1594, '["782", "789"]', 'nikoli več videli', 'videl tečt proti njemu', '2021-10-08 00:00:00', '2021-10-08 23:00:00', '2021-10-15 00:00:00', '{"intervention_caller": "sprehajalec", "intervention_outcome": "opazovali", "intervention_measures": "fotografirali"}', '[]', '2021-09-15 14:47:25.798987', '2021-09-15 14:47:25.798987', 1594);
INSERT INTO mb2data.interventions_events VALUES (9, 7, 12980, '["12997", "13000"]', 12991, 13010, 782, '["1594", "1411", "2748"]', 'počasi odšel', 'ni zbežal stran', '2021-10-12 05:06:00', '2021-10-12 05:06:00', '2021-10-13 23:54:00', '{"intervention_caller": "poklical je prestrašen", "intervention_outcome": ""}', '[["1594", "12997", "2021-09-09", "5", "6", "6"]]', '2021-09-15 14:31:12.790551', '2021-09-15 14:53:52.630948', 1594);
INSERT INTO mb2data.interventions_events VALUES (12, 8, 12980, '["12995"]', 12986, 13008, 1411, '["1594", "782", "2748"]', 'našli mrtvo', 'opišem stvar', '2021-09-01 12:54:00', '2021-09-01 12:54:00', '2021-09-01 12:54:00', '{"intervention_caller": "zato ker "}', '[]', '2021-09-16 09:07:44.6911', '2021-09-16 09:09:10.970665', 1594);
INSERT INTO mb2data.interventions_events VALUES (14, 8, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2021-09-16 09:30:59.767839', '2021-09-16 09:30:59.767839', 1594);
INSERT INTO mb2data.interventions_events VALUES (15, 8, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2021-09-16 09:30:59.856976', '2021-09-16 09:30:59.856976', 1594);
INSERT INTO mb2data.interventions_events VALUES (16, 8, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2021-09-16 09:30:59.939699', '2021-09-16 09:30:59.939699', 1594);
INSERT INTO mb2data.interventions_events VALUES (17, 6, 12979, '[null]', 12986, NULL, NULL, NULL, NULL, 'sdfgtgsg', '2021-10-26 00:00:00', NULL, NULL, NULL, '[]', '2021-10-24 15:22:18.934997', '2021-10-24 15:22:18.934997', 1411);


--
-- Data for Name: interventions_interventors; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.interventions_interventors VALUES (1, 1594);
INSERT INTO mb2data.interventions_interventors VALUES (2, 1411);
INSERT INTO mb2data.interventions_interventors VALUES (3, 782);
INSERT INTO mb2data.interventions_interventors VALUES (4, 778);
INSERT INTO mb2data.interventions_interventors VALUES (5, 789);
INSERT INTO mb2data.interventions_interventors VALUES (6, 780);
INSERT INTO mb2data.interventions_interventors VALUES (7, 2748);
INSERT INTO mb2data.interventions_interventors VALUES (8, 199);
INSERT INTO mb2data.interventions_interventors VALUES (9, 354);
INSERT INTO mb2data.interventions_interventors VALUES (10, 716);
INSERT INTO mb2data.interventions_interventors VALUES (11, 718);
INSERT INTO mb2data.interventions_interventors VALUES (12, 750);
INSERT INTO mb2data.interventions_interventors VALUES (13, 776);
INSERT INTO mb2data.interventions_interventors VALUES (17, 798);
INSERT INTO mb2data.interventions_interventors VALUES (18, 822);
INSERT INTO mb2data.interventions_interventors VALUES (19, 836);
INSERT INTO mb2data.interventions_interventors VALUES (20, 1455);
INSERT INTO mb2data.interventions_interventors VALUES (21, 1476);
INSERT INTO mb2data.interventions_interventors VALUES (22, 2358);
INSERT INTO mb2data.interventions_interventors VALUES (23, 2359);
INSERT INTO mb2data.interventions_interventors VALUES (24, 2777);
INSERT INTO mb2data.interventions_interventors VALUES (25, 2778);


--
-- Data for Name: signs_of_presence_module; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--



--
-- Data for Name: sop; Type: TABLE DATA; Schema: mb2data; Owner: gozdovi
--

INSERT INTO mb2data.sop VALUES (7449, 1046, 11, 2748, '2015-01-01', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12599, NULL, NULL, NULL, NULL, '0101000020E6100000E470258E5B8D2C40FB085C4F81F04640', '{"crs": "3912", "lat": 81896, "lon": 444179, "_locations_table": null}');
INSERT INTO mb2data.sop VALUES (7450, 1046, 11, 2748, '2015-01-02', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12599, NULL, NULL, NULL, NULL, '0101000020E610000011DB0573A5532D40F43446D366D74640', '{"crs": "3912", "lat": 59900, "lon": 474150, "_locations_table": null}');
INSERT INTO mb2data.sop VALUES (7451, 1046, 11, 2748, '2015-01-03', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12599, NULL, NULL, NULL, NULL, '0101000020E61000004D2338DB409E2D403ED62DB290C34640', '{"crs": "3912", "lat": 42640, "lon": 485460, "_locations_table": null}');

--
-- Name: _locations_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data._locations_id_seq', 1, false);


--
-- Name: camelot_sources_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.camelot_sources_id_seq', 4, true);


--
-- Name: cameras_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.cameras_id_seq', 740, true);


--
-- Name: cnt_contacts_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.cnt_contacts_id_seq', 1, false);


--
-- Name: cnt_estimations_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.cnt_estimations_id_seq', 1269, true);


--
-- Name: cnt_monitoring_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.cnt_monitoring_id_seq', 16, true);


--
-- Name: cnt_observation_reports_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.cnt_observation_reports_id_seq', 334, true);


--
-- Name: cnt_observations_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.cnt_observations_id_seq', 1, false);


--
-- Name: cnt_permanent_spots_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.cnt_permanent_spots_id_seq', 167, true);


--
-- Name: ct_locations_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.ct_locations_id_seq', 1612, true);


--
-- Name: dmg_affectees_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.dmg_affectees_id_seq', 1716, true);


--
-- Name: dmg_agreements_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.dmg_agreements_id_seq', 1764, true);


--
-- Name: dmg_batches_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.dmg_batches_id_seq', 1, false);


--
-- Name: dmg_cenik_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.dmg_cenik_id_seq', 548, true);


--
-- Name: dmg_claims_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.dmg_claims_id_seq', 1867, true);


--
-- Name: dmg_culprits_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.dmg_culprits_id_seq', 444, true);


--
-- Name: dmg_deputies_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.dmg_deputies_id_seq', 162, true);


--
-- Name: dmg_nacini_varovanja_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.dmg_nacini_varovanja_id_seq', 267, true);


--
-- Name: dmg_others_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.dmg_others_id_seq', 3, true);


--
-- Name: dmg_skodni_objekti_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.dmg_skodni_objekti_id_seq', 6396, true);


--
-- Name: dmg_uac_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.dmg_uac_id_seq', 1, false);


--
-- Name: dmg_urne_postavke_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.dmg_urne_postavke_id_seq', 7, true);


--
-- Name: dmg_znaki_povzrocitelja_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.dmg_znaki_povzrocitelja_id_seq', 42, true);


--
-- Name: genetic_samples_table_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.genetic_samples_table_id_seq', 1, false);


--
-- Name: gensam_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.gensam_id_seq', 2514, true);


--
-- Name: gps_colars_table_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.gps_colars_table_id_seq', 1, false);


--
-- Name: individuals_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.individuals_id_seq', 1015, true);


--
-- Name: interventions_events_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.interventions_events_id_seq', 17, true);


--
-- Name: interventions_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.interventions_id_seq', 8, true);


--
-- Name: interventions_interventors_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.interventions_interventors_id_seq', 25, true);


--
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.sessions_id_seq', 1, false);


--
-- Name: signs_of_presence_module_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.signs_of_presence_module_id_seq', 1, false);


--
-- Name: sites_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.sites_id_seq', 172, true);


--
-- Name: sop_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.sop_id_seq', 20628, true);


--
-- Name: spm_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.spm_id_seq', 11279, true);


--
-- Name: surveys_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.surveys_id_seq', 20, true);


--
-- Name: trap_stations_id_seq; Type: SEQUENCE SET; Schema: mb2data; Owner: gozdovi
--

SELECT pg_catalog.setval('mb2data.trap_stations_id_seq', 1578, true);


--
-- Name: _locations _locations_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data._locations
    ADD CONSTRAINT _locations_pkey PRIMARY KEY (id);


--
-- Name: camelot_sources camelot_sources_camelot_source_name_key; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.camelot_sources
    ADD CONSTRAINT camelot_sources_camelot_source_name_key UNIQUE (camelot_source_name);


--
-- Name: camelot_sources camelot_sources_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.camelot_sources
    ADD CONSTRAINT camelot_sources_pkey PRIMARY KEY (id);


--
-- Name: ct_cameras cameras_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_cameras
    ADD CONSTRAINT cameras_pkey PRIMARY KEY (id);


--
-- Name: cnt_contacts cnt_contacts__full_name_unique_constraint; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.cnt_contacts
    ADD CONSTRAINT cnt_contacts__full_name_unique_constraint UNIQUE (_full_name);


--
-- Name: cnt_contacts cnt_contacts_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.cnt_contacts
    ADD CONSTRAINT cnt_contacts_pkey PRIMARY KEY (id);


--
-- Name: cnt_estimations cnt_estimations_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.cnt_estimations
    ADD CONSTRAINT cnt_estimations_pkey PRIMARY KEY (id);


--
-- Name: cnt_monitoring cnt_monitoring_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.cnt_monitoring
    ADD CONSTRAINT cnt_monitoring_pkey PRIMARY KEY (id);


--
-- Name: cnt_observation_reports cnt_observation_reports_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.cnt_observation_reports
    ADD CONSTRAINT cnt_observation_reports_pkey PRIMARY KEY (id);


--
-- Name: cnt_observations cnt_observations_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.cnt_observations
    ADD CONSTRAINT cnt_observations_pkey PRIMARY KEY (id);


--
-- Name: cnt_permanent_spots cnt_permanent_spots_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.cnt_permanent_spots
    ADD CONSTRAINT cnt_permanent_spots_pkey PRIMARY KEY (id);


--
-- Name: ct_locations ct_locations_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_locations
    ADD CONSTRAINT ct_locations_pkey PRIMARY KEY (id);


--
-- Name: dmg_affectees dmg_affectees__tax_id_key; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__tax_id_key UNIQUE (_tax_id);


--
-- Name: dmg_affectees dmg_affectees__tax_id_key1; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__tax_id_key1 UNIQUE (_tax_id);


--
-- Name: dmg_affectees dmg_affectees__tax_id_key10; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__tax_id_key10 UNIQUE (_tax_id);


--
-- Name: dmg_affectees dmg_affectees__tax_id_key11; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__tax_id_key11 UNIQUE (_tax_id);


--
-- Name: dmg_affectees dmg_affectees__tax_id_key12; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__tax_id_key12 UNIQUE (_tax_id);


--
-- Name: dmg_affectees dmg_affectees__tax_id_key13; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__tax_id_key13 UNIQUE (_tax_id);


--
-- Name: dmg_affectees dmg_affectees__tax_id_key14; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__tax_id_key14 UNIQUE (_tax_id);


--
-- Name: dmg_affectees dmg_affectees__tax_id_key15; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__tax_id_key15 UNIQUE (_tax_id);


--
-- Name: dmg_affectees dmg_affectees__tax_id_key16; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__tax_id_key16 UNIQUE (_tax_id);


--
-- Name: dmg_affectees dmg_affectees__tax_id_key17; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__tax_id_key17 UNIQUE (_tax_id);


--
-- Name: dmg_affectees dmg_affectees__tax_id_key18; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__tax_id_key18 UNIQUE (_tax_id);


--
-- Name: dmg_affectees dmg_affectees__tax_id_key19; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__tax_id_key19 UNIQUE (_tax_id);


--
-- Name: dmg_affectees dmg_affectees__tax_id_key2; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__tax_id_key2 UNIQUE (_tax_id);


--
-- Name: dmg_affectees dmg_affectees__tax_id_key20; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__tax_id_key20 UNIQUE (_tax_id);


--
-- Name: dmg_affectees dmg_affectees__tax_id_key21; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__tax_id_key21 UNIQUE (_tax_id);


--
-- Name: dmg_affectees dmg_affectees__tax_id_key22; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__tax_id_key22 UNIQUE (_tax_id);


--
-- Name: dmg_affectees dmg_affectees__tax_id_key23; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__tax_id_key23 UNIQUE (_tax_id);


--
-- Name: dmg_affectees dmg_affectees__tax_id_key24; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__tax_id_key24 UNIQUE (_tax_id);


--
-- Name: dmg_affectees dmg_affectees__tax_id_key25; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__tax_id_key25 UNIQUE (_tax_id);


--
-- Name: dmg_affectees dmg_affectees__tax_id_key3; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__tax_id_key3 UNIQUE (_tax_id);


--
-- Name: dmg_affectees dmg_affectees__tax_id_key4; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__tax_id_key4 UNIQUE (_tax_id);


--
-- Name: dmg_affectees dmg_affectees__tax_id_key5; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__tax_id_key5 UNIQUE (_tax_id);


--
-- Name: dmg_affectees dmg_affectees__tax_id_key6; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__tax_id_key6 UNIQUE (_tax_id);


--
-- Name: dmg_affectees dmg_affectees__tax_id_key7; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__tax_id_key7 UNIQUE (_tax_id);


--
-- Name: dmg_affectees dmg_affectees__tax_id_key8; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__tax_id_key8 UNIQUE (_tax_id);


--
-- Name: dmg_affectees dmg_affectees__tax_id_key9; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__tax_id_key9 UNIQUE (_tax_id);


--
-- Name: dmg_affectees dmg_affectees_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees_pkey PRIMARY KEY (id);


--
-- Name: dmg_agreements dmg_agreements__claim_id__affectee_key; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_agreements
    ADD CONSTRAINT dmg_agreements__claim_id__affectee_key UNIQUE (_claim_id, _affectee);


--
-- Name: dmg_agreements dmg_agreements_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_agreements
    ADD CONSTRAINT dmg_agreements_pkey PRIMARY KEY (id);


--
-- Name: dmg_batches dmg_batches_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_batches
    ADD CONSTRAINT dmg_batches_pkey PRIMARY KEY (id);


--
-- Name: dmg_cenik dmg_cenik_key_kategorija_key_podkategorija_key_objekt_key; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_cenik
    ADD CONSTRAINT dmg_cenik_key_kategorija_key_podkategorija_key_objekt_key UNIQUE (key_kategorija, key_podkategorija, key_objekt);


--
-- Name: dmg_cenik dmg_cenik_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_cenik
    ADD CONSTRAINT dmg_cenik_pkey PRIMARY KEY (id);


--
-- Name: dmg dmg_claims__claim_id_key; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg
    ADD CONSTRAINT dmg_claims__claim_id_key UNIQUE (_claim_id);


--
-- Name: dmg dmg_claims__claim_id_key1; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg
    ADD CONSTRAINT dmg_claims__claim_id_key1 UNIQUE (_claim_id);


--
-- Name: dmg dmg_claims__claim_id_key10; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg
    ADD CONSTRAINT dmg_claims__claim_id_key10 UNIQUE (_claim_id);


--
-- Name: dmg dmg_claims__claim_id_key11; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg
    ADD CONSTRAINT dmg_claims__claim_id_key11 UNIQUE (_claim_id);


--
-- Name: dmg dmg_claims__claim_id_key12; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg
    ADD CONSTRAINT dmg_claims__claim_id_key12 UNIQUE (_claim_id);


--
-- Name: dmg dmg_claims__claim_id_key2; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg
    ADD CONSTRAINT dmg_claims__claim_id_key2 UNIQUE (_claim_id);


--
-- Name: dmg dmg_claims__claim_id_key3; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg
    ADD CONSTRAINT dmg_claims__claim_id_key3 UNIQUE (_claim_id);


--
-- Name: dmg dmg_claims__claim_id_key4; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg
    ADD CONSTRAINT dmg_claims__claim_id_key4 UNIQUE (_claim_id);


--
-- Name: dmg dmg_claims__claim_id_key5; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg
    ADD CONSTRAINT dmg_claims__claim_id_key5 UNIQUE (_claim_id);


--
-- Name: dmg dmg_claims__claim_id_key6; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg
    ADD CONSTRAINT dmg_claims__claim_id_key6 UNIQUE (_claim_id);


--
-- Name: dmg dmg_claims__claim_id_key7; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg
    ADD CONSTRAINT dmg_claims__claim_id_key7 UNIQUE (_claim_id);


--
-- Name: dmg dmg_claims__claim_id_key8; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg
    ADD CONSTRAINT dmg_claims__claim_id_key8 UNIQUE (_claim_id);


--
-- Name: dmg dmg_claims__claim_id_key9; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg
    ADD CONSTRAINT dmg_claims__claim_id_key9 UNIQUE (_claim_id);


--
-- Name: dmg dmg_claims_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg
    ADD CONSTRAINT dmg_claims_pkey PRIMARY KEY (id);


--
-- Name: dmg_culprits dmg_culprits_key_item_key_parent_key; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_culprits
    ADD CONSTRAINT dmg_culprits_key_item_key_parent_key UNIQUE (key_item, key_parent);


--
-- Name: dmg_culprits dmg_culprits_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_culprits
    ADD CONSTRAINT dmg_culprits_pkey PRIMARY KEY (id);


--
-- Name: dmg_deputies dmg_deputies__kadrovska_koda__oe_id_key; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies
    ADD CONSTRAINT dmg_deputies__kadrovska_koda__oe_id_key UNIQUE (_kadrovska_koda, _oe_id);


--
-- Name: dmg_deputies dmg_deputies__kadrovska_koda__oe_id_key1; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies
    ADD CONSTRAINT dmg_deputies__kadrovska_koda__oe_id_key1 UNIQUE (_kadrovska_koda, _oe_id);


--
-- Name: dmg_deputies dmg_deputies__kadrovska_koda__oe_id_key10; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies
    ADD CONSTRAINT dmg_deputies__kadrovska_koda__oe_id_key10 UNIQUE (_kadrovska_koda, _oe_id);


--
-- Name: dmg_deputies dmg_deputies__kadrovska_koda__oe_id_key11; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies
    ADD CONSTRAINT dmg_deputies__kadrovska_koda__oe_id_key11 UNIQUE (_kadrovska_koda, _oe_id);


--
-- Name: dmg_deputies dmg_deputies__kadrovska_koda__oe_id_key2; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies
    ADD CONSTRAINT dmg_deputies__kadrovska_koda__oe_id_key2 UNIQUE (_kadrovska_koda, _oe_id);


--
-- Name: dmg_deputies dmg_deputies__kadrovska_koda__oe_id_key3; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies
    ADD CONSTRAINT dmg_deputies__kadrovska_koda__oe_id_key3 UNIQUE (_kadrovska_koda, _oe_id);


--
-- Name: dmg_deputies dmg_deputies__kadrovska_koda__oe_id_key4; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies
    ADD CONSTRAINT dmg_deputies__kadrovska_koda__oe_id_key4 UNIQUE (_kadrovska_koda, _oe_id);


--
-- Name: dmg_deputies dmg_deputies__kadrovska_koda__oe_id_key5; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies
    ADD CONSTRAINT dmg_deputies__kadrovska_koda__oe_id_key5 UNIQUE (_kadrovska_koda, _oe_id);


--
-- Name: dmg_deputies dmg_deputies__kadrovska_koda__oe_id_key6; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies
    ADD CONSTRAINT dmg_deputies__kadrovska_koda__oe_id_key6 UNIQUE (_kadrovska_koda, _oe_id);


--
-- Name: dmg_deputies dmg_deputies__kadrovska_koda__oe_id_key7; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies
    ADD CONSTRAINT dmg_deputies__kadrovska_koda__oe_id_key7 UNIQUE (_kadrovska_koda, _oe_id);


--
-- Name: dmg_deputies dmg_deputies__kadrovska_koda__oe_id_key8; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies
    ADD CONSTRAINT dmg_deputies__kadrovska_koda__oe_id_key8 UNIQUE (_kadrovska_koda, _oe_id);


--
-- Name: dmg_deputies dmg_deputies__kadrovska_koda__oe_id_key9; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies
    ADD CONSTRAINT dmg_deputies__kadrovska_koda__oe_id_key9 UNIQUE (_kadrovska_koda, _oe_id);


--
-- Name: dmg_deputies dmg_deputies__uname_key; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies
    ADD CONSTRAINT dmg_deputies__uname_key UNIQUE (_uname);


--
-- Name: dmg_deputies dmg_deputies__uname_key1; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies
    ADD CONSTRAINT dmg_deputies__uname_key1 UNIQUE (_uname);


--
-- Name: dmg_deputies dmg_deputies__uname_key10; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies
    ADD CONSTRAINT dmg_deputies__uname_key10 UNIQUE (_uname);


--
-- Name: dmg_deputies dmg_deputies__uname_key11; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies
    ADD CONSTRAINT dmg_deputies__uname_key11 UNIQUE (_uname);


--
-- Name: dmg_deputies dmg_deputies__uname_key12; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies
    ADD CONSTRAINT dmg_deputies__uname_key12 UNIQUE (_uname);


--
-- Name: dmg_deputies dmg_deputies__uname_key2; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies
    ADD CONSTRAINT dmg_deputies__uname_key2 UNIQUE (_uname);


--
-- Name: dmg_deputies dmg_deputies__uname_key3; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies
    ADD CONSTRAINT dmg_deputies__uname_key3 UNIQUE (_uname);


--
-- Name: dmg_deputies dmg_deputies__uname_key4; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies
    ADD CONSTRAINT dmg_deputies__uname_key4 UNIQUE (_uname);


--
-- Name: dmg_deputies dmg_deputies__uname_key5; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies
    ADD CONSTRAINT dmg_deputies__uname_key5 UNIQUE (_uname);


--
-- Name: dmg_deputies dmg_deputies__uname_key6; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies
    ADD CONSTRAINT dmg_deputies__uname_key6 UNIQUE (_uname);


--
-- Name: dmg_deputies dmg_deputies__uname_key7; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies
    ADD CONSTRAINT dmg_deputies__uname_key7 UNIQUE (_uname);


--
-- Name: dmg_deputies dmg_deputies__uname_key8; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies
    ADD CONSTRAINT dmg_deputies__uname_key8 UNIQUE (_uname);


--
-- Name: dmg_deputies dmg_deputies__uname_key9; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies
    ADD CONSTRAINT dmg_deputies__uname_key9 UNIQUE (_uname);


--
-- Name: dmg_deputies dmg_deputies_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies
    ADD CONSTRAINT dmg_deputies_pkey PRIMARY KEY (id);


--
-- Name: dmg_nacini_varovanja dmg_nacini_varovanja__nacin_varovanja__culprit_key_key; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_nacini_varovanja
    ADD CONSTRAINT dmg_nacini_varovanja__nacin_varovanja__culprit_key_key UNIQUE (_nacin_varovanja, _culprit_key);


--
-- Name: dmg_nacini_varovanja dmg_nacini_varovanja_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_nacini_varovanja
    ADD CONSTRAINT dmg_nacini_varovanja_pkey PRIMARY KEY (id);


--
-- Name: dmg_others dmg_others_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_others
    ADD CONSTRAINT dmg_others_pkey PRIMARY KEY (id);


--
-- Name: dmg_skodni_objekti dmg_skodni_objekti_key_item_key_parent_key; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_skodni_objekti
    ADD CONSTRAINT dmg_skodni_objekti_key_item_key_parent_key UNIQUE (key_item, key_parent);


--
-- Name: dmg_skodni_objekti dmg_skodni_objekti_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_skodni_objekti
    ADD CONSTRAINT dmg_skodni_objekti_pkey PRIMARY KEY (id);


--
-- Name: dmg_uac dmg_uac__uname_key; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_uac
    ADD CONSTRAINT dmg_uac__uname_key UNIQUE (_uname);


--
-- Name: dmg_uac dmg_uac__uname_key1; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_uac
    ADD CONSTRAINT dmg_uac__uname_key1 UNIQUE (_uname);


--
-- Name: dmg_uac dmg_uac__uname_key2; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_uac
    ADD CONSTRAINT dmg_uac__uname_key2 UNIQUE (_uname);


--
-- Name: dmg_uac dmg_uac__uname_key3; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_uac
    ADD CONSTRAINT dmg_uac__uname_key3 UNIQUE (_uname);


--
-- Name: dmg_uac dmg_uac__uname_key4; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_uac
    ADD CONSTRAINT dmg_uac__uname_key4 UNIQUE (_uname);


--
-- Name: dmg_uac dmg_uac__uname_key5; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_uac
    ADD CONSTRAINT dmg_uac__uname_key5 UNIQUE (_uname);


--
-- Name: dmg_uac dmg_uac__uname_key6; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_uac
    ADD CONSTRAINT dmg_uac__uname_key6 UNIQUE (_uname);


--
-- Name: dmg_uac dmg_uac__uname_key7; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_uac
    ADD CONSTRAINT dmg_uac__uname_key7 UNIQUE (_uname);


--
-- Name: dmg_uac dmg_uac__uname_key8; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_uac
    ADD CONSTRAINT dmg_uac__uname_key8 UNIQUE (_uname);


--
-- Name: dmg_uac dmg_uac__uname_key9; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_uac
    ADD CONSTRAINT dmg_uac__uname_key9 UNIQUE (_uname);


--
-- Name: dmg_uac dmg_uac_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_uac
    ADD CONSTRAINT dmg_uac_pkey PRIMARY KEY (id);


--
-- Name: dmg_urne_postavke dmg_urne_postavke_label_key; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_urne_postavke
    ADD CONSTRAINT dmg_urne_postavke_label_key UNIQUE (label);


--
-- Name: dmg_urne_postavke dmg_urne_postavke_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_urne_postavke
    ADD CONSTRAINT dmg_urne_postavke_pkey PRIMARY KEY (id);


--
-- Name: dmg_znaki_povzrocitelja dmg_znaki_povzrocitelja__dmg_znak_opis_key; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_znaki_povzrocitelja
    ADD CONSTRAINT dmg_znaki_povzrocitelja__dmg_znak_opis_key UNIQUE (_dmg_znak_opis);


--
-- Name: dmg_znaki_povzrocitelja dmg_znaki_povzrocitelja__dmg_znak_opis_key1; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_znaki_povzrocitelja
    ADD CONSTRAINT dmg_znaki_povzrocitelja__dmg_znak_opis_key1 UNIQUE (_dmg_znak_opis);


--
-- Name: dmg_znaki_povzrocitelja dmg_znaki_povzrocitelja__dmg_znak_opis_key10; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_znaki_povzrocitelja
    ADD CONSTRAINT dmg_znaki_povzrocitelja__dmg_znak_opis_key10 UNIQUE (_dmg_znak_opis);


--
-- Name: dmg_znaki_povzrocitelja dmg_znaki_povzrocitelja__dmg_znak_opis_key11; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_znaki_povzrocitelja
    ADD CONSTRAINT dmg_znaki_povzrocitelja__dmg_znak_opis_key11 UNIQUE (_dmg_znak_opis);


--
-- Name: dmg_znaki_povzrocitelja dmg_znaki_povzrocitelja__dmg_znak_opis_key2; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_znaki_povzrocitelja
    ADD CONSTRAINT dmg_znaki_povzrocitelja__dmg_znak_opis_key2 UNIQUE (_dmg_znak_opis);


--
-- Name: dmg_znaki_povzrocitelja dmg_znaki_povzrocitelja__dmg_znak_opis_key3; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_znaki_povzrocitelja
    ADD CONSTRAINT dmg_znaki_povzrocitelja__dmg_znak_opis_key3 UNIQUE (_dmg_znak_opis);


--
-- Name: dmg_znaki_povzrocitelja dmg_znaki_povzrocitelja__dmg_znak_opis_key4; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_znaki_povzrocitelja
    ADD CONSTRAINT dmg_znaki_povzrocitelja__dmg_znak_opis_key4 UNIQUE (_dmg_znak_opis);


--
-- Name: dmg_znaki_povzrocitelja dmg_znaki_povzrocitelja__dmg_znak_opis_key5; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_znaki_povzrocitelja
    ADD CONSTRAINT dmg_znaki_povzrocitelja__dmg_znak_opis_key5 UNIQUE (_dmg_znak_opis);


--
-- Name: dmg_znaki_povzrocitelja dmg_znaki_povzrocitelja__dmg_znak_opis_key6; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_znaki_povzrocitelja
    ADD CONSTRAINT dmg_znaki_povzrocitelja__dmg_znak_opis_key6 UNIQUE (_dmg_znak_opis);


--
-- Name: dmg_znaki_povzrocitelja dmg_znaki_povzrocitelja__dmg_znak_opis_key7; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_znaki_povzrocitelja
    ADD CONSTRAINT dmg_znaki_povzrocitelja__dmg_znak_opis_key7 UNIQUE (_dmg_znak_opis);


--
-- Name: dmg_znaki_povzrocitelja dmg_znaki_povzrocitelja__dmg_znak_opis_key8; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_znaki_povzrocitelja
    ADD CONSTRAINT dmg_znaki_povzrocitelja__dmg_znak_opis_key8 UNIQUE (_dmg_znak_opis);


--
-- Name: dmg_znaki_povzrocitelja dmg_znaki_povzrocitelja__dmg_znak_opis_key9; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_znaki_povzrocitelja
    ADD CONSTRAINT dmg_znaki_povzrocitelja__dmg_znak_opis_key9 UNIQUE (_dmg_znak_opis);


--
-- Name: dmg_znaki_povzrocitelja dmg_znaki_povzrocitelja_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_znaki_povzrocitelja
    ADD CONSTRAINT dmg_znaki_povzrocitelja_pkey PRIMARY KEY (id);


--
-- Name: genetic_samples_table genetic_samples_table_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.genetic_samples_table
    ADD CONSTRAINT genetic_samples_table_pkey PRIMARY KEY (id);


--
-- Name: gensam gensam_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.gensam
    ADD CONSTRAINT gensam_pkey PRIMARY KEY (id);


--
-- Name: gensam gensam_sample_code_unique_constraint; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.gensam
    ADD CONSTRAINT gensam_sample_code_unique_constraint UNIQUE (sample_code);


--
-- Name: gps_colars_table gps_colars_table_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.gps_colars_table
    ADD CONSTRAINT gps_colars_table_pkey PRIMARY KEY (id);


--
-- Name: individuals individuals_individual_name_unique_constraint; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.individuals
    ADD CONSTRAINT individuals_individual_name_unique_constraint UNIQUE (individual_name);


--
-- Name: individuals individuals_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.individuals
    ADD CONSTRAINT individuals_pkey PRIMARY KEY (id);


--
-- Name: interventions_events interventions_events_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.interventions_events
    ADD CONSTRAINT interventions_events_pkey PRIMARY KEY (id);


--
-- Name: interventions_interventors interventions_interventors__uname__uid_key; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.interventions_interventors
    ADD CONSTRAINT interventions_interventors__uname__uid_key UNIQUE (_uname__uid);


--
-- Name: interventions_interventors interventions_interventors__uname__uid_unique_constraint; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.interventions_interventors
    ADD CONSTRAINT interventions_interventors__uname__uid_unique_constraint UNIQUE (_uname__uid);


--
-- Name: interventions_interventors interventions_interventors_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.interventions_interventors
    ADD CONSTRAINT interventions_interventors_pkey PRIMARY KEY (id);


--
-- Name: interventions interventions_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.interventions
    ADD CONSTRAINT interventions_pkey PRIMARY KEY (id);


--
-- Name: ct_sessions sessions_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: signs_of_presence_module signs_of_presence_module_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.signs_of_presence_module
    ADD CONSTRAINT signs_of_presence_module_pkey PRIMARY KEY (id);


--
-- Name: ct_sites sites_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_sites
    ADD CONSTRAINT sites_pkey PRIMARY KEY (id);


--
-- Name: sop sop_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop_pkey PRIMARY KEY (id);


--
-- Name: ct spm_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT spm_pkey PRIMARY KEY (id);


--
-- Name: ct_surveys surveys_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_surveys
    ADD CONSTRAINT surveys_pkey PRIMARY KEY (id);


--
-- Name: ct_trap_stations trap_stations_pkey; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_trap_stations
    ADD CONSTRAINT trap_stations_pkey PRIMARY KEY (id);


--
-- Name: ct_cameras unique_camera_name__licence_name; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_cameras
    ADD CONSTRAINT unique_camera_name__licence_name UNIQUE (camera_name, _licence_name);


--
-- Name: ct_sites unique_site_name__licence_name; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_sites
    ADD CONSTRAINT unique_site_name__licence_name UNIQUE (site_name, _licence_name);


--
-- Name: ct_surveys unique_survey_name__licence_name; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_surveys
    ADD CONSTRAINT unique_survey_name__licence_name UNIQUE (survey_name, _licence_name);


--
-- Name: ct_trap_stations unique_trap_station_name_survey_name__licence_name_location_ref; Type: CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_trap_stations
    ADD CONSTRAINT unique_trap_station_name_survey_name__licence_name_location_ref UNIQUE (trap_station_name, survey_name, _licence_name, _location_reference);


--
-- Name: attachments_dmg_claims_gin_idx; Type: INDEX; Schema: mb2data; Owner: gozdovi
--

CREATE INDEX attachments_dmg_claims_gin_idx ON mb2data.dmg USING gin (_attachments jsonb_path_ops);


--
-- Name: idx_gensam__location; Type: INDEX; Schema: mb2data; Owner: gozdovi
--

CREATE INDEX idx_gensam__location ON mb2data.gensam USING gist (_location);


--
-- Name: _dmg _RETURN; Type: RULE; Schema: mb2data; Owner: gozdovi
--

CREATE OR REPLACE VIEW mb2data._dmg AS
 SELECT dmg.id,
    dmg._licence_name,
    dmg._uid AS _uname,
    dmg._dmg_noticed_date AS event_date,
    dmg._culprit,
    jsonb_agg((j.value ->> 'zgsKey'::text)) AS _zgs_damage_objects
   FROM (mb2data.dmg
     LEFT JOIN LATERAL jsonb_array_elements(dmg._skodni_objekti) j(value) ON (true))
  WHERE (dmg._claim_status = 1)
  GROUP BY dmg.id;


--
-- Name: interventions_view _RETURN; Type: RULE; Schema: mb2data; Owner: gozdovi
--

CREATE OR REPLACE VIEW mb2data.interventions_view AS
 SELECT i.id,
    public.st_asgeojson(i._location) AS geom,
    i.notes,
    i.date_record_created,
    i.date_record_modified,
    i._species_name,
    i._uname,
    min(ie.intervention_call_timestamp) AS intervention_call_timestamp_min,
    max(ie.intervention_call_timestamp) AS intervention_call_timestamp_max,
    min(ie.intervention_start_timestamp) AS intervention_start_timestamp_min,
    count(*) FILTER (WHERE (ie.intervention_end_timestamp IS NULL)) AS uncompleted_interventions,
    count(*) FILTER (WHERE (ie.intervention_id IS NOT NULL)) AS intervention_events_count,
    json_agg(DISTINCT ie.intervention_caller) AS intervention_caller,
    json_agg(DISTINCT ie.intervention_reason) AS intervention_reason,
    json_agg(ie.intervention_measures) AS intervention_measures,
    json_agg(DISTINCT ie.intervention_outcome) AS intervention_outcome,
    json_agg(DISTINCT ie.chief_interventor) AS chief_interventor,
    i._data,
    i._completed,
    i._location_data
   FROM (mb2data.interventions i
     LEFT JOIN mb2data.interventions_events ie ON ((i.id = ie.intervention_id)))
  GROUP BY i.id, i._location, i.notes, i.date_record_created, i.date_record_modified, i._species_name, i._uname;


--
-- Name: cnt_observation_reports mb2data_cnt_observation_reports_created; Type: TRIGGER; Schema: mb2data; Owner: gozdovi
--

CREATE TRIGGER mb2data_cnt_observation_reports_created BEFORE INSERT ON mb2data.cnt_observation_reports FOR EACH ROW EXECUTE PROCEDURE public.sync_date_created();


--
-- Name: cnt_observation_reports mb2data_cnt_observation_reports_modified; Type: TRIGGER; Schema: mb2data; Owner: gozdovi
--

CREATE TRIGGER mb2data_cnt_observation_reports_modified BEFORE UPDATE ON mb2data.cnt_observation_reports FOR EACH ROW EXECUTE PROCEDURE public.sync_date_modified();


--
-- Name: dmg mb2data_dmg_claims_modified; Type: TRIGGER; Schema: mb2data; Owner: gozdovi
--

CREATE TRIGGER mb2data_dmg_claims_modified BEFORE UPDATE ON mb2data.dmg FOR EACH ROW EXECUTE PROCEDURE public.sync_date_modified();


--
-- Name: interventions mb2data_interventions_created; Type: TRIGGER; Schema: mb2data; Owner: gozdovi
--

CREATE TRIGGER mb2data_interventions_created BEFORE INSERT ON mb2data.interventions FOR EACH ROW EXECUTE PROCEDURE public.sync_date_created();


--
-- Name: interventions_events mb2data_interventions_events_created; Type: TRIGGER; Schema: mb2data; Owner: gozdovi
--

CREATE TRIGGER mb2data_interventions_events_created BEFORE INSERT ON mb2data.interventions_events FOR EACH ROW EXECUTE PROCEDURE public.sync_date_created();


--
-- Name: interventions_events mb2data_interventions_events_modified; Type: TRIGGER; Schema: mb2data; Owner: gozdovi
--

CREATE TRIGGER mb2data_interventions_events_modified BEFORE UPDATE ON mb2data.interventions_events FOR EACH ROW EXECUTE PROCEDURE public.sync_date_modified();


--
-- Name: interventions mb2data_interventions_modified; Type: TRIGGER; Schema: mb2data; Owner: gozdovi
--

CREATE TRIGGER mb2data_interventions_modified BEFORE UPDATE ON mb2data.interventions FOR EACH ROW EXECUTE PROCEDURE public.sync_date_modified();


--
-- Name: _locations _locations_location_accuracy_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data._locations
    ADD CONSTRAINT _locations_location_accuracy_fkey FOREIGN KEY (location_accuracy) REFERENCES mbase2.code_list_options(id);


--
-- Name: camelot_sources camelot_sources__licence_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.camelot_sources
    ADD CONSTRAINT camelot_sources__licence_name_fkey FOREIGN KEY (_licence_name) REFERENCES mbase2.licences(id);


--
-- Name: ct_cameras cameras_camera_make_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_cameras
    ADD CONSTRAINT cameras_camera_make_fkey FOREIGN KEY (camera_make) REFERENCES mbase2.code_list_options(id);


--
-- Name: ct_cameras cameras_camera_model_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_cameras
    ADD CONSTRAINT cameras_camera_model_fkey FOREIGN KEY (camera_model) REFERENCES mbase2.code_list_options(id);


--
-- Name: cnt_contacts cnt_contacts__cnt_vrsta_kontakta_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.cnt_contacts
    ADD CONSTRAINT cnt_contacts__cnt_vrsta_kontakta_fkey FOREIGN KEY (_cnt_vrsta_kontakta) REFERENCES mbase2.code_list_options(id);


--
-- Name: cnt_contacts cnt_contacts__post_number_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.cnt_contacts
    ADD CONSTRAINT cnt_contacts__post_number_fkey FOREIGN KEY (_post_number) REFERENCES mbase2.poste(_post_number);


--
-- Name: cnt_estimations cnt_estimations_monitoring_id_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.cnt_estimations
    ADD CONSTRAINT cnt_estimations_monitoring_id_fkey FOREIGN KEY (monitoring_id) REFERENCES mb2data.cnt_monitoring(id);


--
-- Name: cnt_monitoring cnt_monitoring__vrsta_opazovanja_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.cnt_monitoring
    ADD CONSTRAINT cnt_monitoring__vrsta_opazovanja_fkey FOREIGN KEY (_vrsta_opazovanja) REFERENCES mbase2.code_list_options(id);


--
-- Name: cnt_observation_reports cnt_observation_reports__cnt_location_id_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.cnt_observation_reports
    ADD CONSTRAINT cnt_observation_reports__cnt_location_id_fkey FOREIGN KEY (_cnt_location_id) REFERENCES mb2data.cnt_permanent_spots(id);


--
-- Name: cnt_observation_reports cnt_observation_reports_monitoring_id_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.cnt_observation_reports
    ADD CONSTRAINT cnt_observation_reports_monitoring_id_fkey FOREIGN KEY (monitoring_id) REFERENCES mb2data.cnt_monitoring(id);


--
-- Name: cnt_observations cnt_observations_observations_report_id_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.cnt_observations
    ADD CONSTRAINT cnt_observations_observations_report_id_fkey FOREIGN KEY (observations_report_id) REFERENCES mb2data.cnt_observation_reports(id);


--
-- Name: ct ct__batch_id_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey1; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey1 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey10; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey10 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey11; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey11 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey12; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey12 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey13; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey13 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey14; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey14 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey15; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey15 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey16; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey16 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey17; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey17 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey18; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey18 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey19; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey19 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey2; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey2 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey20; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey20 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey21; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey21 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey22; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey22 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey23; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey23 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey24; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey24 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey25; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey25 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey26; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey26 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey27; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey27 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey28; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey28 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey29; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey29 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey3; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey3 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey30; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey30 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey4; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey4 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey5; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey5 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey6; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey6 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey7; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey7 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey8; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey8 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__batch_id_fkey9; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__batch_id_fkey9 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct ct__licence_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct__licence_name_fkey FOREIGN KEY (_licence_name) REFERENCES mbase2.licences(id);


--
-- Name: ct ct_camera_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct_camera_name_fkey FOREIGN KEY (camera_name) REFERENCES mb2data.ct_cameras(id);


--
-- Name: ct_cameras ct_cameras__batch_id_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_cameras
    ADD CONSTRAINT ct_cameras__batch_id_fkey FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct_cameras ct_cameras__licence_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_cameras
    ADD CONSTRAINT ct_cameras__licence_name_fkey FOREIGN KEY (_licence_name) REFERENCES mbase2.licences(id);


--
-- Name: ct ct_individual_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct_individual_name_fkey FOREIGN KEY (individual_name) REFERENCES mb2data.individuals(id);


--
-- Name: ct_locations ct_locations_location_accuracy_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_locations
    ADD CONSTRAINT ct_locations_location_accuracy_fkey FOREIGN KEY (location_accuracy) REFERENCES mbase2.code_list_options(id);


--
-- Name: ct_sessions ct_sessions__batch_id_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_sessions
    ADD CONSTRAINT ct_sessions__batch_id_fkey FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct_sites ct_sites__batch_id_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_sites
    ADD CONSTRAINT ct_sites__batch_id_fkey FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct_sites ct_sites__licence_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_sites
    ADD CONSTRAINT ct_sites__licence_name_fkey FOREIGN KEY (_licence_name) REFERENCES mbase2.licences(id);


--
-- Name: ct ct_survey_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT ct_survey_name_fkey FOREIGN KEY (survey_name) REFERENCES mb2data.ct_surveys(id);


--
-- Name: ct_surveys ct_surveys__batch_id_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_surveys
    ADD CONSTRAINT ct_surveys__batch_id_fkey FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct_surveys ct_surveys__licence_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_surveys
    ADD CONSTRAINT ct_surveys__licence_name_fkey FOREIGN KEY (_licence_name) REFERENCES mbase2.licences(id);


--
-- Name: ct_trap_stations ct_trap_stations__batch_id_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_trap_stations
    ADD CONSTRAINT ct_trap_stations__batch_id_fkey FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: ct_trap_stations ct_trap_stations__licence_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_trap_stations
    ADD CONSTRAINT ct_trap_stations__licence_name_fkey FOREIGN KEY (_licence_name) REFERENCES mbase2.licences(id);


--
-- Name: ct_trap_stations ct_trap_stations_survey_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_trap_stations
    ADD CONSTRAINT ct_trap_stations_survey_name_fkey FOREIGN KEY (survey_name) REFERENCES mb2data.ct_surveys(id);


--
-- Name: dmg dmg__licence_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg
    ADD CONSTRAINT dmg__licence_name_fkey FOREIGN KEY (_licence_name) REFERENCES mbase2.licences(id);


--
-- Name: dmg_affectees dmg_affectees__citizenship_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__citizenship_fkey FOREIGN KEY (_citizenship) REFERENCES mbase2.countries(id);


--
-- Name: dmg_affectees dmg_affectees__country_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__country_fkey FOREIGN KEY (_country) REFERENCES mbase2.countries(id);


--
-- Name: dmg_affectees dmg_affectees__post_number_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_affectees
    ADD CONSTRAINT dmg_affectees__post_number_fkey FOREIGN KEY (_post_number) REFERENCES mbase2.poste(_post_number);


--
-- Name: dmg_agreements dmg_agreements__affectee_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_agreements
    ADD CONSTRAINT dmg_agreements__affectee_fkey FOREIGN KEY (_affectee) REFERENCES mb2data.dmg_affectees(id);


--
-- Name: dmg_agreements dmg_agreements__claim_id_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_agreements
    ADD CONSTRAINT dmg_agreements__claim_id_fkey FOREIGN KEY (_claim_id) REFERENCES mb2data.dmg(id);


--
-- Name: dmg_batches dmg_batches__culprit_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_batches
    ADD CONSTRAINT dmg_batches__culprit_fkey FOREIGN KEY (_culprit) REFERENCES mbase2.code_list_options(id);


--
-- Name: dmg_batches dmg_batches__dmg_object_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_batches
    ADD CONSTRAINT dmg_batches__dmg_object_fkey FOREIGN KEY (_dmg_object) REFERENCES mbase2.code_list_options(id);


--
-- Name: dmg_batches dmg_batches__dmg_object_unit_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_batches
    ADD CONSTRAINT dmg_batches__dmg_object_unit_fkey FOREIGN KEY (_dmg_object_unit) REFERENCES mbase2.code_list_options(id);


--
-- Name: dmg_batches dmg_batches__licence_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_batches
    ADD CONSTRAINT dmg_batches__licence_name_fkey FOREIGN KEY (_licence_name) REFERENCES mbase2.licences(id);


--
-- Name: dmg_batches dmg_batches__species_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_batches
    ADD CONSTRAINT dmg_batches__species_name_fkey FOREIGN KEY (_species_name) REFERENCES mbase2.code_list_options(id);


--
-- Name: dmg dmg_claims__culprit_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg
    ADD CONSTRAINT dmg_claims__culprit_fkey FOREIGN KEY (_culprit) REFERENCES mbase2.code_list_options(id);


--
-- Name: dmg_deputies dmg_deputies__oe_id_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_deputies
    ADD CONSTRAINT dmg_deputies__oe_id_fkey FOREIGN KEY (_oe_id) REFERENCES mbase2.obmocne_enote_zgs(id);


--
-- Name: dmg_nacini_varovanja dmg_nacini_varovanja__culprit_key_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_nacini_varovanja
    ADD CONSTRAINT dmg_nacini_varovanja__culprit_key_fkey FOREIGN KEY (_culprit_key) REFERENCES mbase2.code_list_options(key);


--
-- Name: dmg_nacini_varovanja dmg_nacini_varovanja__nacin_varovanja_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_nacini_varovanja
    ADD CONSTRAINT dmg_nacini_varovanja__nacin_varovanja_fkey FOREIGN KEY (_nacin_varovanja) REFERENCES mbase2.code_list_options(key);


--
-- Name: dmg_others dmg_others__country_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_others
    ADD CONSTRAINT dmg_others__country_fkey FOREIGN KEY (_country) REFERENCES mbase2.countries(id);


--
-- Name: dmg_others dmg_others__post_number_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_others
    ADD CONSTRAINT dmg_others__post_number_fkey FOREIGN KEY (_post_number) REFERENCES mbase2.poste(_post_number);


--
-- Name: dmg_uac dmg_uac__user_group_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.dmg_uac
    ADD CONSTRAINT dmg_uac__user_group_fkey FOREIGN KEY (_user_group) REFERENCES mbase2.code_list_options(id);


--
-- Name: gensam gensam__batch_id_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.gensam
    ADD CONSTRAINT gensam__batch_id_fkey FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: gensam gensam__batch_id_fkey1; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.gensam
    ADD CONSTRAINT gensam__batch_id_fkey1 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: gensam gensam__batch_id_fkey2; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.gensam
    ADD CONSTRAINT gensam__batch_id_fkey2 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: gensam gensam__batch_id_fkey3; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.gensam
    ADD CONSTRAINT gensam__batch_id_fkey3 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: gensam gensam__batch_id_fkey4; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.gensam
    ADD CONSTRAINT gensam__batch_id_fkey4 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: gensam gensam__batch_id_fkey5; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.gensam
    ADD CONSTRAINT gensam__batch_id_fkey5 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: gensam gensam__batch_id_fkey6; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.gensam
    ADD CONSTRAINT gensam__batch_id_fkey6 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: gensam gensam__batch_id_fkey7; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.gensam
    ADD CONSTRAINT gensam__batch_id_fkey7 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: gensam gensam__batch_id_fkey8; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.gensam
    ADD CONSTRAINT gensam__batch_id_fkey8 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: gensam gensam__data_quality_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.gensam
    ADD CONSTRAINT gensam__data_quality_fkey FOREIGN KEY (_data_quality) REFERENCES mbase2.code_list_options(id);


--
-- Name: gensam gensam__licence_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.gensam
    ADD CONSTRAINT gensam__licence_name_fkey FOREIGN KEY (_licence_name) REFERENCES mbase2.licences(id);


--
-- Name: gensam gensam__sample_collection_method_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.gensam
    ADD CONSTRAINT gensam__sample_collection_method_fkey FOREIGN KEY (_sample_collection_method) REFERENCES mbase2.code_list_options(id);


--
-- Name: gensam gensam__sample_type_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.gensam
    ADD CONSTRAINT gensam__sample_type_fkey FOREIGN KEY (_sample_type) REFERENCES mbase2.code_list_options(id);


--
-- Name: gensam gensam__species_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.gensam
    ADD CONSTRAINT gensam__species_name_fkey FOREIGN KEY (_species_name) REFERENCES mbase2.code_list_options(id);


--
-- Name: individuals individuals__species_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.individuals
    ADD CONSTRAINT individuals__species_name_fkey FOREIGN KEY (_species_name) REFERENCES mbase2.code_list_options(id);


--
-- Name: individuals individuals_sex_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.individuals
    ADD CONSTRAINT individuals_sex_fkey FOREIGN KEY (sex) REFERENCES mbase2.code_list_options(id);


--
-- Name: interventions interventions__licence_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.interventions
    ADD CONSTRAINT interventions__licence_name_fkey FOREIGN KEY (_licence_name) REFERENCES mbase2.licences(id);


--
-- Name: interventions interventions__species_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.interventions
    ADD CONSTRAINT interventions__species_name_fkey FOREIGN KEY (_species_name) REFERENCES mbase2.code_list_options(id);


--
-- Name: interventions_events interventions_events_intervention_caller_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.interventions_events
    ADD CONSTRAINT interventions_events_intervention_caller_fkey FOREIGN KEY (intervention_caller) REFERENCES mbase2.code_list_options(id);


--
-- Name: interventions_events interventions_events_intervention_id_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.interventions_events
    ADD CONSTRAINT interventions_events_intervention_id_fkey FOREIGN KEY (intervention_id) REFERENCES mb2data.interventions(id);


--
-- Name: interventions_events interventions_events_intervention_outcome_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.interventions_events
    ADD CONSTRAINT interventions_events_intervention_outcome_fkey FOREIGN KEY (intervention_outcome) REFERENCES mbase2.code_list_options(id);


--
-- Name: interventions_events interventions_events_intervention_reason_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.interventions_events
    ADD CONSTRAINT interventions_events_intervention_reason_fkey FOREIGN KEY (intervention_reason) REFERENCES mbase2.code_list_options(id);


--
-- Name: ct_sessions sessions_camera_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_sessions
    ADD CONSTRAINT sessions_camera_name_fkey FOREIGN KEY (camera_name) REFERENCES mb2data.ct_cameras(id);


--
-- Name: ct_sessions sessions_survey_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_sessions
    ADD CONSTRAINT sessions_survey_name_fkey FOREIGN KEY (survey_name) REFERENCES mb2data.ct_surveys(id);


--
-- Name: ct_sessions sessions_trap_station_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_sessions
    ADD CONSTRAINT sessions_trap_station_name_fkey FOREIGN KEY (trap_station_name) REFERENCES mb2data.ct_trap_stations(id);


--
-- Name: signs_of_presence_module signs_of_presence_module__licence_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.signs_of_presence_module
    ADD CONSTRAINT signs_of_presence_module__licence_name_fkey FOREIGN KEY (_licence_name) REFERENCES mbase2.licences(id);


--
-- Name: signs_of_presence_module signs_of_presence_module__location_reference_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.signs_of_presence_module
    ADD CONSTRAINT signs_of_presence_module__location_reference_fkey FOREIGN KEY (_location_reference) REFERENCES mb2data._locations(id);


--
-- Name: signs_of_presence_module signs_of_presence_module__species_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.signs_of_presence_module
    ADD CONSTRAINT signs_of_presence_module__species_name_fkey FOREIGN KEY (_species_name) REFERENCES mbase2.code_list_options(id);


--
-- Name: signs_of_presence_module signs_of_presence_module_data_quality_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.signs_of_presence_module
    ADD CONSTRAINT signs_of_presence_module_data_quality_fkey FOREIGN KEY (data_quality) REFERENCES mbase2.code_list_options(id);


--
-- Name: signs_of_presence_module signs_of_presence_module_genetic_analysis_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.signs_of_presence_module
    ADD CONSTRAINT signs_of_presence_module_genetic_analysis_fkey FOREIGN KEY (genetic_analysis) REFERENCES mbase2.code_list_options(id);


--
-- Name: signs_of_presence_module signs_of_presence_module_genetic_sample_id_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.signs_of_presence_module
    ADD CONSTRAINT signs_of_presence_module_genetic_sample_id_fkey FOREIGN KEY (genetic_sample_id) REFERENCES mb2data.genetic_samples_table(id);


--
-- Name: signs_of_presence_module signs_of_presence_module_individual_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.signs_of_presence_module
    ADD CONSTRAINT signs_of_presence_module_individual_name_fkey FOREIGN KEY (individual_name) REFERENCES mbase2.individuals(id);


--
-- Name: signs_of_presence_module signs_of_presence_module_media_quality_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.signs_of_presence_module
    ADD CONSTRAINT signs_of_presence_module_media_quality_fkey FOREIGN KEY (media_quality) REFERENCES mbase2.code_list_options(id);


--
-- Name: signs_of_presence_module signs_of_presence_module_sign_of_presence_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.signs_of_presence_module
    ADD CONSTRAINT signs_of_presence_module_sign_of_presence_fkey FOREIGN KEY (sign_of_presence) REFERENCES mbase2.code_list_options(id);


--
-- Name: sop sop__batch_id_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey1; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey1 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey10; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey10 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey11; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey11 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey12; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey12 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey13; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey13 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey14; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey14 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey15; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey15 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey16; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey16 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey17; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey17 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey18; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey18 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey19; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey19 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey2; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey2 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey20; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey20 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey21; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey21 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey22; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey22 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey23; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey23 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey24; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey24 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey25; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey25 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey26; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey26 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey27; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey27 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey28; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey28 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey29; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey29 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey3; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey3 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey30; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey30 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey31; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey31 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey32; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey32 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey33; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey33 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey34; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey34 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey35; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey35 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey36; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey36 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey37; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey37 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey38; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey38 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey39; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey39 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey4; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey4 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey40; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey40 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey41; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey41 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey42; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey42 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey43; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey43 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey44; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey44 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey45; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey45 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey46; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey46 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey47; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey47 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey48; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey48 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey49; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey49 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey5; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey5 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey50; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey50 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey51; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey51 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey52; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey52 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey53; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey53 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey54; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey54 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey55; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey55 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey56; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey56 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey57; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey57 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey58; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey58 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey59; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey59 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey6; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey6 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey60; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey60 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey61; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey61 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey62; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey62 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey63; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey63 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey64; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey64 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey65; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey65 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey66; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey66 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey67; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey67 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey68; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey68 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey69; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey69 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey7; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey7 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey70; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey70 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey71; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey71 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey72; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey72 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey73; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey73 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey74; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey74 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey75; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey75 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey76; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey76 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey77; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey77 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey78; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey78 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey79; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey79 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey8; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey8 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey80; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey80 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey81; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey81 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey82; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey82 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey83; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey83 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey84; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey84 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey85; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey85 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey86; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey86 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey87; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey87 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey88; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey88 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey89; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey89 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey9; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey9 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey90; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey90 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey91; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey91 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey92; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey92 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey93; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey93 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey94; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey94 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__batch_id_fkey95; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__batch_id_fkey95 FOREIGN KEY (_batch_id) REFERENCES mbase2.import_batches(id);


--
-- Name: sop sop__data_quality_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__data_quality_fkey FOREIGN KEY (_data_quality) REFERENCES mbase2.code_list_options(id);


--
-- Name: sop sop__licence_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__licence_name_fkey FOREIGN KEY (_licence_name) REFERENCES mbase2.licences(id);


--
-- Name: sop sop__marking_object_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__marking_object_fkey FOREIGN KEY (_marking_object) REFERENCES mbase2.code_list_options(id);


--
-- Name: sop sop__prey_species_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__prey_species_fkey FOREIGN KEY (_prey_species) REFERENCES mbase2.code_list_options(id);


--
-- Name: sop sop__sign_of_presence_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__sign_of_presence_fkey FOREIGN KEY (_sign_of_presence) REFERENCES mbase2.code_list_options(id);


--
-- Name: sop sop__species_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.sop
    ADD CONSTRAINT sop__species_name_fkey FOREIGN KEY (_species_name) REFERENCES mbase2.code_list_options(id);


--
-- Name: ct spm__species_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT spm__species_name_fkey FOREIGN KEY (_species_name) REFERENCES mbase2.code_list_options(id);


--
-- Name: ct spm_hair_trap_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT spm_hair_trap_fkey FOREIGN KEY (hair_trap) REFERENCES mbase2.code_list_options(id);


--
-- Name: ct spm_life_stage_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT spm_life_stage_fkey FOREIGN KEY (life_stage) REFERENCES mbase2.code_list_options(id);


--
-- Name: ct spm_position_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT spm_position_fkey FOREIGN KEY ("position") REFERENCES mbase2.code_list_options(id);


--
-- Name: ct spm_session_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT spm_session_name_fkey FOREIGN KEY (session_name) REFERENCES mb2data.ct_sessions(id);


--
-- Name: ct spm_sex_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT spm_sex_fkey FOREIGN KEY (sex) REFERENCES mbase2.code_list_options(id);


--
-- Name: ct spm_trap_station_name_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct
    ADD CONSTRAINT spm_trap_station_name_fkey FOREIGN KEY (trap_station_name) REFERENCES mb2data.ct_trap_stations(id);


--
-- Name: ct_surveys surveys_survey_description_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_surveys
    ADD CONSTRAINT surveys_survey_description_fkey FOREIGN KEY (survey_description) REFERENCES mbase2.code_list_options(id);


--
-- Name: ct_trap_stations trap_stations__location_reference_fkey; Type: FK CONSTRAINT; Schema: mb2data; Owner: gozdovi
--

ALTER TABLE ONLY mb2data.ct_trap_stations
    ADD CONSTRAINT trap_stations__location_reference_fkey FOREIGN KEY (_location_reference) REFERENCES mb2data.ct_locations(id);


--
-- PostgreSQL database dump complete
--

