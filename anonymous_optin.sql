--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.25
-- Dumped by pg_dump version 9.5.25

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: iftttuser
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO iftttuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: iftttuser
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO iftttuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iftttuser
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: iftttuser
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO iftttuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: iftttuser
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO iftttuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iftttuser
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: iftttuser
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO iftttuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: iftttuser
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO iftttuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iftttuser
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: iftttuser
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO iftttuser;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: iftttuser
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO iftttuser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: iftttuser
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO iftttuser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iftttuser
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: iftttuser
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO iftttuser;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iftttuser
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: iftttuser
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO iftttuser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: iftttuser
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO iftttuser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iftttuser
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: backend_binparam; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_binparam (
    parameter_ptr_id integer NOT NULL,
    tval text NOT NULL,
    fval text NOT NULL
);


ALTER TABLE public.backend_binparam OWNER TO postgres;

--
-- Name: backend_capability; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_capability (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    commandlabel text,
    eventlabel text,
    statelabel text,
    readable boolean NOT NULL,
    writeable boolean NOT NULL
);


ALTER TABLE public.backend_capability OWNER TO postgres;

--
-- Name: backend_capability_channels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_capability_channels (
    id integer NOT NULL,
    capability_id integer NOT NULL,
    channel_id integer NOT NULL
);


ALTER TABLE public.backend_capability_channels OWNER TO postgres;

--
-- Name: backend_capability_channels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.backend_capability_channels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backend_capability_channels_id_seq OWNER TO postgres;

--
-- Name: backend_capability_channels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.backend_capability_channels_id_seq OWNED BY public.backend_capability_channels.id;


--
-- Name: backend_capability_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.backend_capability_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backend_capability_id_seq OWNER TO postgres;

--
-- Name: backend_capability_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.backend_capability_id_seq OWNED BY public.backend_capability.id;


--
-- Name: backend_channel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_channel (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    icon text
);


ALTER TABLE public.backend_channel OWNER TO postgres;

--
-- Name: backend_channel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.backend_channel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backend_channel_id_seq OWNER TO postgres;

--
-- Name: backend_channel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.backend_channel_id_seq OWNED BY public.backend_channel.id;


--
-- Name: backend_colorparam; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_colorparam (
    parameter_ptr_id integer NOT NULL,
    mode text NOT NULL
);


ALTER TABLE public.backend_colorparam OWNER TO postgres;

--
-- Name: backend_condition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_condition (
    id integer NOT NULL,
    val text NOT NULL,
    comp text NOT NULL,
    par_id integer NOT NULL,
    trigger_id integer NOT NULL
);


ALTER TABLE public.backend_condition OWNER TO postgres;

--
-- Name: backend_condition_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.backend_condition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backend_condition_id_seq OWNER TO postgres;

--
-- Name: backend_condition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.backend_condition_id_seq OWNED BY public.backend_condition.id;


--
-- Name: backend_device; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_device (
    id integer NOT NULL,
    name character varying(32) NOT NULL,
    owner_id integer NOT NULL,
    public boolean NOT NULL,
    icon text
);


ALTER TABLE public.backend_device OWNER TO postgres;

--
-- Name: backend_device_caps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_device_caps (
    id integer NOT NULL,
    device_id integer NOT NULL,
    capability_id integer NOT NULL
);


ALTER TABLE public.backend_device_caps OWNER TO postgres;

--
-- Name: backend_device_capabilities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.backend_device_capabilities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backend_device_capabilities_id_seq OWNER TO postgres;

--
-- Name: backend_device_capabilities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.backend_device_capabilities_id_seq OWNED BY public.backend_device_caps.id;


--
-- Name: backend_device_chans; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_device_chans (
    id integer NOT NULL,
    device_id integer NOT NULL,
    channel_id integer NOT NULL
);


ALTER TABLE public.backend_device_chans OWNER TO postgres;

--
-- Name: backend_device_chans_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.backend_device_chans_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backend_device_chans_id_seq OWNER TO postgres;

--
-- Name: backend_device_chans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.backend_device_chans_id_seq OWNED BY public.backend_device_chans.id;


--
-- Name: backend_device_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.backend_device_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backend_device_id_seq OWNER TO postgres;

--
-- Name: backend_device_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.backend_device_id_seq OWNED BY public.backend_device.id;


--
-- Name: backend_durationparam; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_durationparam (
    parameter_ptr_id integer NOT NULL,
    maxhours integer,
    maxmins integer,
    maxsecs integer,
    comp boolean NOT NULL
);


ALTER TABLE public.backend_durationparam OWNER TO postgres;

--
-- Name: backend_esrule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_esrule (
    action_id integer NOT NULL,
    "Etrigger_id" integer NOT NULL,
    rule_ptr_id integer NOT NULL
);


ALTER TABLE public.backend_esrule OWNER TO postgres;

--
-- Name: backend_esrule_Striggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."backend_esrule_Striggers" (
    id integer NOT NULL,
    esrule_id integer NOT NULL,
    trigger_id integer NOT NULL
);


ALTER TABLE public."backend_esrule_Striggers" OWNER TO postgres;

--
-- Name: backend_esrule_triggersS_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."backend_esrule_triggersS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."backend_esrule_triggersS_id_seq" OWNER TO postgres;

--
-- Name: backend_esrule_triggersS_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."backend_esrule_triggersS_id_seq" OWNED BY public."backend_esrule_Striggers".id;


--
-- Name: backend_inputparam; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_inputparam (
    parameter_ptr_id integer NOT NULL,
    inputtype text NOT NULL
);


ALTER TABLE public.backend_inputparam OWNER TO postgres;

--
-- Name: backend_metaparam; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_metaparam (
    parameter_ptr_id integer NOT NULL,
    is_event boolean NOT NULL
);


ALTER TABLE public.backend_metaparam OWNER TO postgres;

--
-- Name: backend_parameter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_parameter (
    id integer NOT NULL,
    name text NOT NULL,
    type text NOT NULL,
    cap_id integer NOT NULL
);


ALTER TABLE public.backend_parameter OWNER TO postgres;

--
-- Name: backend_parameter_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.backend_parameter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backend_parameter_id_seq OWNER TO postgres;

--
-- Name: backend_parameter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.backend_parameter_id_seq OWNED BY public.backend_parameter.id;


--
-- Name: backend_parval; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_parval (
    id integer NOT NULL,
    val text NOT NULL,
    par_id integer NOT NULL,
    state_id integer NOT NULL
);


ALTER TABLE public.backend_parval OWNER TO postgres;

--
-- Name: backend_parval_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.backend_parval_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backend_parval_id_seq OWNER TO postgres;

--
-- Name: backend_parval_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.backend_parval_id_seq OWNED BY public.backend_parval.id;


--
-- Name: backend_rangeparam; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_rangeparam (
    parameter_ptr_id integer NOT NULL,
    min integer NOT NULL,
    max integer NOT NULL,
    "interval" double precision NOT NULL
);


ALTER TABLE public.backend_rangeparam OWNER TO postgres;

--
-- Name: backend_rule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_rule (
    id integer NOT NULL,
    owner_id integer NOT NULL,
    type character varying(3) NOT NULL,
    task integer NOT NULL,
    lastedit timestamp with time zone NOT NULL
);


ALTER TABLE public.backend_rule OWNER TO postgres;

--
-- Name: backend_rule_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.backend_rule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backend_rule_id_seq OWNER TO postgres;

--
-- Name: backend_rule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.backend_rule_id_seq OWNED BY public.backend_rule.id;


--
-- Name: backend_safetyprop; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_safetyprop (
    id integer NOT NULL,
    type integer NOT NULL,
    owner_id integer NOT NULL,
    always boolean NOT NULL,
    task integer NOT NULL,
    lastedit timestamp with time zone NOT NULL
);


ALTER TABLE public.backend_safetyprop OWNER TO postgres;

--
-- Name: backend_safetyprop_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.backend_safetyprop_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backend_safetyprop_id_seq OWNER TO postgres;

--
-- Name: backend_safetyprop_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.backend_safetyprop_id_seq OWNED BY public.backend_safetyprop.id;


--
-- Name: backend_setparam; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_setparam (
    parameter_ptr_id integer NOT NULL,
    numopts integer NOT NULL
);


ALTER TABLE public.backend_setparam OWNER TO postgres;

--
-- Name: backend_setparamopt; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_setparamopt (
    id integer NOT NULL,
    value text NOT NULL,
    param_id integer NOT NULL
);


ALTER TABLE public.backend_setparamopt OWNER TO postgres;

--
-- Name: backend_setparamopt_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.backend_setparamopt_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backend_setparamopt_id_seq OWNER TO postgres;

--
-- Name: backend_setparamopt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.backend_setparamopt_id_seq OWNED BY public.backend_setparamopt.id;


--
-- Name: backend_sp1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_sp1 (
    safetyprop_ptr_id integer NOT NULL
);


ALTER TABLE public.backend_sp1 OWNER TO postgres;

--
-- Name: backend_sp1_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_sp1_triggers (
    id integer NOT NULL,
    sp1_id integer NOT NULL,
    trigger_id integer NOT NULL
);


ALTER TABLE public.backend_sp1_triggers OWNER TO postgres;

--
-- Name: backend_sp1_triggers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.backend_sp1_triggers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backend_sp1_triggers_id_seq OWNER TO postgres;

--
-- Name: backend_sp1_triggers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.backend_sp1_triggers_id_seq OWNED BY public.backend_sp1_triggers.id;


--
-- Name: backend_sp2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_sp2 (
    safetyprop_ptr_id integer NOT NULL,
    comp text,
    "time" integer,
    state_id integer NOT NULL
);


ALTER TABLE public.backend_sp2 OWNER TO postgres;

--
-- Name: backend_sp2_conds; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_sp2_conds (
    id integer NOT NULL,
    sp2_id integer NOT NULL,
    trigger_id integer NOT NULL
);


ALTER TABLE public.backend_sp2_conds OWNER TO postgres;

--
-- Name: backend_sp2_conds_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.backend_sp2_conds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backend_sp2_conds_id_seq OWNER TO postgres;

--
-- Name: backend_sp2_conds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.backend_sp2_conds_id_seq OWNED BY public.backend_sp2_conds.id;


--
-- Name: backend_sp3; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_sp3 (
    safetyprop_ptr_id integer NOT NULL,
    comp text,
    occurrences integer,
    "time" integer,
    event_id integer NOT NULL,
    timecomp text
);


ALTER TABLE public.backend_sp3 OWNER TO postgres;

--
-- Name: backend_sp3_conds; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_sp3_conds (
    id integer NOT NULL,
    sp3_id integer NOT NULL,
    trigger_id integer NOT NULL
);


ALTER TABLE public.backend_sp3_conds OWNER TO postgres;

--
-- Name: backend_sp3_conds_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.backend_sp3_conds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backend_sp3_conds_id_seq OWNER TO postgres;

--
-- Name: backend_sp3_conds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.backend_sp3_conds_id_seq OWNED BY public.backend_sp3_conds.id;


--
-- Name: backend_ssrule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_ssrule (
    priority integer NOT NULL,
    action_id integer NOT NULL,
    rule_ptr_id integer NOT NULL
);


ALTER TABLE public.backend_ssrule OWNER TO postgres;

--
-- Name: backend_ssrule_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_ssrule_triggers (
    id integer NOT NULL,
    ssrule_id integer NOT NULL,
    trigger_id integer NOT NULL
);


ALTER TABLE public.backend_ssrule_triggers OWNER TO postgres;

--
-- Name: backend_ssrule_triggers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.backend_ssrule_triggers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backend_ssrule_triggers_id_seq OWNER TO postgres;

--
-- Name: backend_ssrule_triggers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.backend_ssrule_triggers_id_seq OWNED BY public.backend_ssrule_triggers.id;


--
-- Name: backend_state; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_state (
    id integer NOT NULL,
    cap_id integer NOT NULL,
    dev_id integer NOT NULL,
    action boolean NOT NULL,
    text text,
    chan_id integer
);


ALTER TABLE public.backend_state OWNER TO postgres;

--
-- Name: backend_state_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.backend_state_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backend_state_id_seq OWNER TO postgres;

--
-- Name: backend_state_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.backend_state_id_seq OWNED BY public.backend_state.id;


--
-- Name: backend_statelog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_statelog (
    id integer NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    is_current boolean NOT NULL,
    cap_id integer NOT NULL,
    dev_id integer NOT NULL,
    value text NOT NULL,
    param_id integer NOT NULL
);


ALTER TABLE public.backend_statelog OWNER TO postgres;

--
-- Name: backend_statelog_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.backend_statelog_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backend_statelog_id_seq OWNER TO postgres;

--
-- Name: backend_statelog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.backend_statelog_id_seq OWNED BY public.backend_statelog.id;


--
-- Name: backend_timeparam; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_timeparam (
    parameter_ptr_id integer NOT NULL,
    mode text NOT NULL
);


ALTER TABLE public.backend_timeparam OWNER TO postgres;

--
-- Name: backend_trigger; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_trigger (
    id integer NOT NULL,
    cap_id integer NOT NULL,
    dev_id integer NOT NULL,
    chan_id integer,
    pos integer,
    text text
);


ALTER TABLE public.backend_trigger OWNER TO postgres;

--
-- Name: backend_trigger_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.backend_trigger_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backend_trigger_id_seq OWNER TO postgres;

--
-- Name: backend_trigger_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.backend_trigger_id_seq OWNED BY public.backend_trigger.id;


--
-- Name: backend_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_user (
    id integer NOT NULL,
    name character varying(30),
    mode character varying(5) NOT NULL,
    code text NOT NULL
);


ALTER TABLE public.backend_user OWNER TO postgres;

--
-- Name: backend_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.backend_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backend_user_id_seq OWNER TO postgres;

--
-- Name: backend_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.backend_user_id_seq OWNED BY public.backend_user.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: iftttuser
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO iftttuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: iftttuser
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO iftttuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iftttuser
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: iftttuser
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO iftttuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: iftttuser
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO iftttuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iftttuser
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: iftttuser
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO iftttuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: iftttuser
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO iftttuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iftttuser
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: iftttuser
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO iftttuser;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_capability ALTER COLUMN id SET DEFAULT nextval('public.backend_capability_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_capability_channels ALTER COLUMN id SET DEFAULT nextval('public.backend_capability_channels_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_channel ALTER COLUMN id SET DEFAULT nextval('public.backend_channel_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_condition ALTER COLUMN id SET DEFAULT nextval('public.backend_condition_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_device ALTER COLUMN id SET DEFAULT nextval('public.backend_device_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_device_caps ALTER COLUMN id SET DEFAULT nextval('public.backend_device_capabilities_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_device_chans ALTER COLUMN id SET DEFAULT nextval('public.backend_device_chans_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."backend_esrule_Striggers" ALTER COLUMN id SET DEFAULT nextval('public."backend_esrule_triggersS_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_parameter ALTER COLUMN id SET DEFAULT nextval('public.backend_parameter_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_parval ALTER COLUMN id SET DEFAULT nextval('public.backend_parval_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_rule ALTER COLUMN id SET DEFAULT nextval('public.backend_rule_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_safetyprop ALTER COLUMN id SET DEFAULT nextval('public.backend_safetyprop_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_setparamopt ALTER COLUMN id SET DEFAULT nextval('public.backend_setparamopt_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_sp1_triggers ALTER COLUMN id SET DEFAULT nextval('public.backend_sp1_triggers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_sp2_conds ALTER COLUMN id SET DEFAULT nextval('public.backend_sp2_conds_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_sp3_conds ALTER COLUMN id SET DEFAULT nextval('public.backend_sp3_conds_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_ssrule_triggers ALTER COLUMN id SET DEFAULT nextval('public.backend_ssrule_triggers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_state ALTER COLUMN id SET DEFAULT nextval('public.backend_state_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_statelog ALTER COLUMN id SET DEFAULT nextval('public.backend_statelog_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_trigger ALTER COLUMN id SET DEFAULT nextval('public.backend_trigger_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_user ALTER COLUMN id SET DEFAULT nextval('public.backend_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: iftttuser
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iftttuser
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: iftttuser
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iftttuser
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: iftttuser
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add user metadata	7	add_usermetadata
20	Can change user metadata	7	change_usermetadata
21	Can delete user metadata	7	delete_usermetadata
22	Can add rule	8	add_rule
23	Can change rule	8	change_rule
24	Can delete rule	8	delete_rule
25	Can add device	9	add_device
26	Can change device	9	change_device
27	Can delete device	9	delete_device
28	Can add abstract charecteristic	10	add_abstractcharecteristic
29	Can change abstract charecteristic	10	change_abstractcharecteristic
30	Can delete abstract charecteristic	10	delete_abstractcharecteristic
31	Can add device charecteristic	11	add_devicecharecteristic
32	Can change device charecteristic	11	change_devicecharecteristic
33	Can delete device charecteristic	11	delete_devicecharecteristic
34	Can add user	12	add_user
35	Can change user	12	change_user
36	Can delete user	12	delete_user
37	Can add channel	13	add_channel
38	Can change channel	13	change_channel
39	Can delete channel	13	delete_channel
40	Can add capability	14	add_capability
41	Can change capability	14	change_capability
42	Can delete capability	14	delete_capability
43	Can add parameter	15	add_parameter
44	Can change parameter	15	change_parameter
45	Can delete parameter	15	delete_parameter
46	Can add set param	16	add_setparam
47	Can change set param	16	change_setparam
48	Can delete set param	16	delete_setparam
49	Can add set param opt	17	add_setparamopt
50	Can change set param opt	17	change_setparamopt
51	Can delete set param opt	17	delete_setparamopt
52	Can add range param	18	add_rangeparam
53	Can change range param	18	change_rangeparam
54	Can delete range param	18	delete_rangeparam
55	Can add bin param	19	add_binparam
56	Can change bin param	19	change_binparam
57	Can delete bin param	19	delete_binparam
58	Can add color param	20	add_colorparam
59	Can change color param	20	change_colorparam
60	Can delete color param	20	delete_colorparam
61	Can add time param	21	add_timeparam
62	Can change time param	21	change_timeparam
63	Can delete time param	21	delete_timeparam
64	Can add duration param	22	add_durationparam
65	Can change duration param	22	change_durationparam
66	Can delete duration param	22	delete_durationparam
67	Can add input param	23	add_inputparam
68	Can change input param	23	change_inputparam
69	Can delete input param	23	delete_inputparam
70	Can add meta param	24	add_metaparam
71	Can change meta param	24	change_metaparam
72	Can delete meta param	24	delete_metaparam
73	Can add par val	25	add_parval
74	Can change par val	25	change_parval
75	Can delete par val	25	delete_parval
76	Can add condition	26	add_condition
77	Can change condition	26	change_condition
78	Can delete condition	26	delete_condition
79	Can add device	27	add_device
80	Can change device	27	change_device
81	Can delete device	27	delete_device
82	Can add state	28	add_state
83	Can change state	28	change_state
84	Can delete state	28	delete_state
85	Can add trigger	29	add_trigger
86	Can change trigger	29	change_trigger
87	Can delete trigger	29	delete_trigger
88	Can add rule	30	add_rule
89	Can change rule	30	change_rule
90	Can delete rule	30	delete_rule
91	Can add es rule	31	add_esrule
92	Can change es rule	31	change_esrule
93	Can delete es rule	31	delete_esrule
94	Can add ss rule	32	add_ssrule
95	Can change ss rule	32	change_ssrule
96	Can delete ss rule	32	delete_ssrule
97	Can add safety prop	33	add_safetyprop
98	Can change safety prop	33	change_safetyprop
99	Can delete safety prop	33	delete_safetyprop
100	Can add s p1	34	add_sp1
101	Can change s p1	34	change_sp1
102	Can delete s p1	34	delete_sp1
103	Can add s p2	35	add_sp2
104	Can change s p2	35	change_sp2
105	Can delete s p2	35	delete_sp2
106	Can add s p3	36	add_sp3
107	Can change s p3	36	change_sp3
108	Can delete s p3	36	delete_sp3
109	Can add state log	37	add_statelog
110	Can change state log	37	change_statelog
111	Can delete state log	37	delete_statelog
112	Can add st app	38	add_stapp
113	Can change st app	38	change_stapp
114	Can delete st app	38	delete_stapp
115	Can add device	39	add_device
116	Can change device	39	change_device
117	Can delete device	39	delete_device
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iftttuser
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 117, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: iftttuser
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$100000$cfVwkoaEA0qZ$ifBessa4q1JayTw0Y0w8837IDgDnmGd0jZUz3N3oFa8=	2021-11-04 05:39:06.350406+00	t	admin			admin@example.com	t	t	2021-10-21 20:02:28.180873+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: iftttuser
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iftttuser
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iftttuser
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: iftttuser
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iftttuser
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: backend_binparam; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_binparam (parameter_ptr_id, tval, fval) FROM stdin;
1	On	Off
12	Locked	Unlocked
13	Open	Closed
14	Motion	No Motion
20	Raining	Not Raining
25	Yes	No
26	On	Off
40	On	Off
62	Day	Night
64	On	Off
65	Open	Closed
66	Smoke Detected	No Smoke Detected
67	Open	Closed
68	Awake	Asleep
72	On	Off
\.


--
-- Data for Name: backend_capability; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_capability (id, name, commandlabel, eventlabel, statelabel, readable, writeable) FROM stdin;
28	Record	({DEVICE}) {value/T|start}{value/F|stop} recording	{DEVICE} {value/T|starts}{value/F|stops} recording	{DEVICE} is{value/F| not} recording	t	t
27	Alarm Ringing	{value/T|Set off}{value/F|Turn off} {DEVICE}'s alarm	{DEVICE}'s Alarm {value/T|Starts}{value/F|Stops} going off	{DEVICE}'s Alarm is{value/F| not} going off	t	t
38	How Much Coffee Is There?	\N	({DEVICE}) The number of cups of coffee {cups/=|becomes}{cups/!=|changes from}{cups/>|becomes larger than}{cups/<|falls below} {cups}	({DEVICE}) There are {cups/=|exactly}{cups/!=|not exactly}{cups/>|more than}{cups/<|fewer than} {cups} cups of coffee brewed	t	f
18	Weather Sensor	\N	({DEVICE}) The weather {weather/=|becomes}{weather/!=|stops being} {weather}	({DEVICE}) The weather is{weather/!=| not} {weather}	t	f
62	Heart Rate Sensor	\N	({DEVICE}) My heart rate {BPM/=|becomes}{BPM/!=|changes from}{BPM/>|goes above}{BPM/<|falls below} {BPM}BPM	({DEVICE}) My heart rate is {BPM/=|exactly}{BPM/!=|not}{BPM/>|above}{BPM/<|below} {BPM}BPM	t	f
32	Track Package	\N	({DEVICE}) Package #{trackingid} {distance/=|becomes}{distance/!=|stops being}{distance/>|becomes farther than}{distance/<|becomes closer than} {distance} miles away	({DEVICE}) Package #{trackingid} is{distance/!=| not} {distance/<|<}{distance/>|>}{distance} miles away	t	f
12	FM Tuner	Tune {DEVICE} to {frequency}FM	{DEVICE} {frequency/=|becomes tuned to}{frequency/!=|stops being tuned to}{frequency/>|becomes tuned above}{frequency/<|becomes tuned below} {frequency}FM	{DEVICE} {frequency/=|is tuned to}{frequency/!=|is not tuned to}{frequency/>|is tuned above}{frequency/<|is tuned below} {frequency}FM	t	t
33	What's On My Shopping List?	\N	({DEVICE}) {item} {item/=|gets added to}{item/!=|gets removed from} my Shopping List	({DEVICE}) {item} is{item/!=| not} on my Shopping List	t	f
37	What Show is On?	\N	{name} {name/=|starts}{name/!=|stops} playing on {DEVICE}	{name} is{name/!=| not} playing on {DEVICE}	t	f
29	Take Photo	({DEVICE}) Take a photo		\N	f	t
30	Order (Amazon)	({DEVICE}) Order {quantity} {item} on Amazon		\N	f	t
31	Order Pizza	({DEVICE}) Order {quantity} {size} Pizza(s) with {topping}		\N	f	t
40	Siren	Turn {DEVICE}'s Siren {value}	{DEVICE}'s Siren turns {value}	{DEVICE}'s Siren is {value}	t	t
39	Brew Coffee	({DEVICE}) Brew {cups} cup(s) of coffee		\N	f	t
64	Water On/Off	Turn {setting} {DEVICE}'s water	{DEVICE}'s water {setting/T|Turns On}{setting/F|Turns Off}	{DEVICE}'s water is {setting/F|not }running	t	t
6	Light Color	Set {DEVICE}'s Color to {color}	{DEVICE}'s color {color/=|becomes}{color/!=|changes from} {color}	{DEVICE}'s Color {color/=|is}{color/!=|is not} {color}	t	t
26	Set Alarm	({DEVICE}) Set an Alarm for {time}	{DEVICE}'s Alarm {time/=|gets set for}{time/!=|gets set for something other than}{time/>|gets set for later than}{time/<|gets set for earlier than} {time}	{DEVICE}'s Alarm is {time/=|set for}{time/!=|not set for}{time/>|set for later than}{time/<|set for earlier than} {time}	t	t
19	Current Temperature	\N	({DEVICE}) The temperature {temperature/=|becomes}{temperature/!=|changes from}{temperature/>|goes above}{temperature/<|falls below} {temperature} degrees	({DEVICE}) The temperature {temperature/=|is}{temperature/!=|is not}{temperature/>|is above}{temperature/<|is below} {temperature} degrees	t	f
50	Event Frequency	\N	It becomes true that "{$trigger$}" has {occurrences/!=|not occurred}{occurrences/=|occurred}{occurrences/>|occurred more than}{occurrences/<|occurred fewer than} {occurrences} times in the last {time}	"{$trigger$}" has {occurrences/=|occurred exactly}{occurrences/!=|not occurred exactly}{occurrences/>|occurred more than}{occurrences/<|occurred fewer than} {occurrences} times in the last {time}	t	f
9	Genre	Start playing {genre} on {DEVICE}	{DEVICE} {genre/=|starts}{genre/!=|stops} playing {genre}	{DEVICE} is{genre/!=| not} playing {genre}	t	t
13	Lock/Unlock	{setting/T|Lock}{setting/F|Unlock} {DEVICE}	{DEVICE} {setting/T|Locks}{setting/F|Unlocks}	{DEVICE} is {setting}	t	t
14	Open/Close Window	{position/T|Open}{position/F|Close} {DEVICE}	{DEVICE} {position/T|Opens}{position/F|Closes}	{DEVICE} is {position}	t	t
15	Detect Motion	\N	{DEVICE} {status/T|Starts}{status/F|Stops} Detecting Motion	{DEVICE} {status/T|detects}{status/F|does not detect} motion	t	f
20	Is it Raining?	\N	It {condition/T|starts}{condition/F|stops} raining	It is {condition}	t	f
35	Play Music	Start playing {name} on {DEVICE}	{name} {name/=|starts}{name/!=|stops} playing on {DEVICE}	{name} is {name/!=|not }playing on {DEVICE}	t	t
49	Previous State	\N	It becomes true that "{$trigger$}" was active {time} ago	"{$trigger$}" was active {time} ago	t	f
51	Time Since State	\N	It becomes true that "{$trigger$}" was last in effect {time/>|more than}{time/<|less than}{time/=|exactly} {time} ago	"{$trigger$}" was last in effect {time/>|more than}{time/<|less than}{time/=|exactly} {time} ago	t	f
52	Time Since Event	\N	It becomes true that "{$trigger$}" last happened {time/>|more than}{time/<|less than}{time/=|exactly} {time} ago	"{$trigger$}" last happened {time/>|more than}{time/<|less than}{time/=|exactly} {time} ago	t	f
55	Is it Daytime?	\N	It becomes {time}time	It is {time}time	t	f
56	Stop Music	Stop playing music on {DEVICE}		\N	f	t
57	AC On/Off	Turn {setting} the AC	The AC turns {setting}	The AC is {setting}	t	t
58	Open/Close Curtains	{position/T|Open}{position/F|Close} {DEVICE}'s Curtains	{DEVICE}'s curtains {position/T|Open}{position/F|Close}	{DEVICE}'s curtains are {position}	t	t
59	Smoke Detection	\N	{DEVICE} {condition/T|Starts}{condition/F|Stops} detecting smoke	({DEVICE}) {condition/F|No }Smoke is Detected	t	f
60	Open/Close Door	{position/T|Open}{position/F|Close} {DEVICE}'s Door	{DEVICE}'s door {position/T|Opens}{position/F|Closes}	{DEVICE}'s door is {position}	t	t
61	Sleep Sensor	\N	({DEVICE}) I {status/T|Wake Up}{status/F|Fall Asleep}	({DEVICE}) I am {status}	t	f
63	Detect Presence	\N	{who/=|}{who/!=|Someone other than }{who} {location/=|Enters}{location/!=|Exits} {location}	{who/!=|Someone other than }{who} is {location/!=|not }in {location}	t	f
65	Oven Temperature	Set {DEVICE}'s temperature to {temperature}	{DEVICE}'s temperature {temperature/=|becomes}{temperature/!=|changes from}{temperature/>|goes above}{temperature/<|falls below} {temperature} degrees	{DEVICE}'s temperature {temperature/=|is}{temperature/!=|is not}{temperature/>|is above}{temperature/<|is below} {temperature} degrees	t	t
21	Thermostat	Set {DEVICE} to {temperature}	{DEVICE}'s temperature {temperature/=|becomes set to}{temperature/!=|changes from being set to}{temperature/>|becomes set above}{temperature/<|becomes set below} {temperature} degrees	{DEVICE} is {temperature/!=|not set to}{temperature/=|set to}{temperature/>|set above}{temperature/<|set below} {temperature} degrees	t	t
3	Brightness	Set {DEVICE}'s Brightness to {level}	{DEVICE}'s brightness {level/=|becomes}{level/!=|stops being}{level/>|goes above}{level/<|falls below} {level}	{DEVICE}'s Brightness {level/=|is}{level/!=|is not}{level/>|is above}{level/<|is below} {level}	t	t
8	Volume	Set {DEVICE}'s Volume to {level}	{DEVICE}'s Volume {level/=|becomes}{level/!=|changes from}{level/>|goes above}{level/<|falls below} {level}	{DEVICE}'s Volume {level/=|is}{level/!=|is not}{level/>|is above}{level/<|is below} {level}	t	t
25	Clock	\N	({DEVICE}) The time {time/=|becomes}{time/!=|changes from}{time/>|becomes later than}{time/<|becomes earlier than} {time}	({DEVICE}) The time {time/=|is}{time/!=|is not}{time/>|is after}{time/<|is before} {time}	t	f
2	Power On/Off	Turn {DEVICE} {setting}	{DEVICE} turns {setting}	{DEVICE} is {setting}	t	t
66	Temperature Control	Set {DEVICE}'s temperature to {temperature}	{DEVICE}'s temperature {temperature/=|becomes set to}{temperature/!=|becomes set to something other than}{temperature/>|becomes set above}{temperature/<|becomes set below} {temperature} degrees	{DEVICE}'s temperature is {temperature/=|set to}{temperature/!=|not set to}{temperature/>|set above}{temperature/<|set below} {temperature} degrees	t	t
68	asd	hq	qsd	h	t	t
36	Channel	Tune {DEVICE} to Channel {channel}	{DEVICE} {channel/=|becomes tuned to}{channel/!=|becomes tuned to something other than}{channel/>|becomes tuned above}{channel/<|becomes tuned below} {channel}	{DEVICE} is {channel/=|tuned to}{channel/!=|not tuned to}{channel/>|tuned above}{channel/<|tuned below} Channel {channel}	t	t
70	Move in a direction	Go through a door to the {directions}	Go through a door to the {directions}	Go through a door to the {directions}	f	t
107	Pick up colored block	Pick up the {block color} block	Pick up the {block color} block	Pick up the {block color} block	f	t
116	Current Room?	I am in the {room}?	I am in the {room}?	I am in the {room}?	t	f
115	Block in room?	There is a {color} block in the {room}?	There is a {color} block in the {room}?	There is a {color} block in the {room}?	t	f
114	Holding block?	Holding a {color} block?	Holding a {color} block?	Holding a {color} block?	t	f
108	Put down held block	Put down held block	Put down held bock	Put down held block	f	t
73	Goal	It is your goal that:	It is your goal that:	It is your goal that:	f	f
72	Action	Consider doing:	Consider doing:	Consider doing:	f	f
71	Sensing	Pay attention to:	Pay attention to:	Pay attention to:	f	f
\.


--
-- Data for Name: backend_capability_channels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_capability_channels (id, capability_id, channel_id) FROM stdin;
85	36	20
86	70	20
87	65	20
88	71	20
89	72	20
90	73	20
124	107	20
125	108	20
131	114	20
132	115	20
133	116	20
\.


--
-- Name: backend_capability_channels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.backend_capability_channels_id_seq', 133, true);


--
-- Name: backend_capability_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.backend_capability_id_seq', 116, true);


--
-- Data for Name: backend_channel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_channel (id, name, icon) FROM stdin;
20	Robot	android
21	Blocks	check_box_outline_blank
\.


--
-- Name: backend_channel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.backend_channel_id_seq', 21, true);


--
-- Data for Name: backend_colorparam; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_colorparam (parameter_ptr_id, mode) FROM stdin;
\.


--
-- Data for Name: backend_condition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_condition (id, val, comp, par_id, trigger_id) FROM stdin;
4860	Blue	=	87	4205
\.


--
-- Name: backend_condition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.backend_condition_id_seq', 4860, true);


--
-- Data for Name: backend_device; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_device (id, name, owner_id, public, icon) FROM stdin;
28	Logic	1	t	help_outline
27	Movement	1	t	assignment
30	Held Blocks	1	t	arrow_upward
29	Location	1	t	room
\.


--
-- Name: backend_device_capabilities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.backend_device_capabilities_id_seq', 141, true);


--
-- Data for Name: backend_device_caps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_device_caps (id, device_id, capability_id) FROM stdin;
94	27	70
97	28	71
98	28	72
99	28	73
133	30	107
134	30	108
139	30	114
140	30	115
141	29	116
\.


--
-- Data for Name: backend_device_chans; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_device_chans (id, device_id, channel_id) FROM stdin;
49	27	20
50	28	20
51	29	20
52	30	20
\.


--
-- Name: backend_device_chans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.backend_device_chans_id_seq', 52, true);


--
-- Name: backend_device_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.backend_device_id_seq', 30, true);


--
-- Data for Name: backend_durationparam; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_durationparam (parameter_ptr_id, maxhours, maxmins, maxsecs, comp) FROM stdin;
51	23	59	59	f
53	23	59	59	f
56	23	59	59	t
58	23	59	59	t
\.


--
-- Data for Name: backend_esrule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_esrule (action_id, "Etrigger_id", rule_ptr_id) FROM stdin;
\.


--
-- Data for Name: backend_esrule_Striggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."backend_esrule_Striggers" (id, esrule_id, trigger_id) FROM stdin;
\.


--
-- Name: backend_esrule_triggersS_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."backend_esrule_triggersS_id_seq"', 841, true);


--
-- Data for Name: backend_inputparam; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_inputparam (parameter_ptr_id, inputtype) FROM stdin;
27	stxt
28	int
31	int
32	stxt
34	stxt
35	stxt
37	stxt
\.


--
-- Data for Name: backend_metaparam; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_metaparam (parameter_ptr_id, is_event) FROM stdin;
50	f
52	t
55	f
57	t
\.


--
-- Data for Name: backend_parameter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_parameter (id, name, type, cap_id) FROM stdin;
3	color	set	6
17	weather	set	18
11	frequency	range	12
24	time	time	26
25	value	bin	27
26	value	bin	28
28	quantity	input	30
30	topping	set	31
31	quantity	input	31
33	distance	range	32
34	item	input	33
35	name	input	35
36	channel	range	36
37	name	input	37
39	cups	range	39
40	value	bin	40
50	trigger	meta	49
51	time	duration	49
52	trigger	meta	50
53	time	duration	50
54	occurrences	range	50
55	trigger	meta	51
56	time	duration	51
57	trigger	meta	52
58	time	duration	52
69	BPM	range	62
71	who	set	63
27	item	input	30
73	cups	range	38
74	temperature	range	65
18	temperature	range	19
21	temperature	range	21
29	size	set	31
75	temperature	range	66
70	location	set	63
32	trackingid	input	32
1	setting	bin	2
2	level	range	3
7	level	range	8
8	genre	set	9
12	setting	bin	13
13	position	bin	14
20	condition	bin	20
23	time	time	25
14	status	bin	15
62	time	bin	55
64	setting	bin	57
65	position	bin	58
66	condition	bin	59
67	position	bin	60
68	status	bin	61
72	setting	bin	64
86	directions	set	70
80	block color	set	107
87	color	set	114
88	color	set	115
89	room	set	115
90	room	set	116
\.


--
-- Name: backend_parameter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.backend_parameter_id_seq', 90, true);


--
-- Data for Name: backend_parval; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_parval (id, val, par_id, state_id) FROM stdin;
\.


--
-- Name: backend_parval_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.backend_parval_id_seq', 1, false);


--
-- Data for Name: backend_rangeparam; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_rangeparam (parameter_ptr_id, min, max, "interval") FROM stdin;
2	1	5	1
7	0	100	1
11	88	108	0.100000000000000006
18	-50	120	1
21	60	90	1
33	1	250	1
36	0	2000	1
39	1	5	1
54	0	25	1
69	40	220	5
73	0	5	1
74	0	600	5
75	20	60	1
\.


--
-- Data for Name: backend_rule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_rule (id, owner_id, type, task, lastedit) FROM stdin;
\.


--
-- Name: backend_rule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.backend_rule_id_seq', 1194, true);


--
-- Data for Name: backend_safetyprop; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_safetyprop (id, type, owner_id, always, task, lastedit) FROM stdin;
48	1	1	f	1	2018-08-09 17:33:58.730979+00
51	1	1	f	1	2018-08-09 17:33:58.730979+00
72	1	1	f	1	2018-08-10 16:17:32.325939+00
709	1	162	f	3	2018-08-20 23:52:56.349141+00
728	1	166	f	14	2018-08-21 00:23:11.064542+00
735	1	160	f	15	2018-08-21 00:31:27.002586+00
743	1	160	f	12	2018-08-21 00:40:04.976906+00
746	1	160	f	8	2018-08-21 00:44:36.295453+00
748	1	162	f	17	2018-08-21 00:47:13.782817+00
759	1	168	f	15	2018-08-21 01:13:35.963294+00
766	1	168	t	2	2018-08-21 01:25:52.12672+00
770	1	168	f	8	2018-08-21 01:36:00.104998+00
774	1	173	t	16	2018-08-21 01:47:59.560762+00
777	1	173	t	9	2018-08-21 01:52:50.708692+00
780	1	173	t	3	2018-08-21 01:59:32.7424+00
782	1	174	f	16	2018-08-21 02:02:20.480529+00
786	1	173	t	14	2018-08-21 02:05:02.596946+00
803	1	175	f	12	2018-08-21 02:20:44.658935+00
806	1	174	f	7	2018-08-21 02:22:28.97425+00
809	1	174	t	9	2018-08-21 02:24:21.267309+00
817	1	182	t	6	2018-08-21 02:28:54.980779+00
834	1	182	f	16	2018-08-21 02:36:33.526801+00
836	1	193	f	15	2018-08-21 02:38:50.449656+00
847	1	193	f	12	2018-08-21 02:43:26.787977+00
852	1	189	t	3	2018-08-21 02:47:06.908226+00
853	1	197	f	15	2018-08-21 02:47:50.882078+00
860	1	187	f	15	2018-08-21 02:51:38.578372+00
862	1	194	t	15	2018-08-21 02:52:18.430257+00
863	1	189	t	8	2018-08-21 02:53:19.756407+00
877	1	197	t	14	2018-08-21 02:57:39.200233+00
886	1	194	f	12	2018-08-21 03:02:28.648769+00
888	1	194	f	12	2018-08-21 03:02:57.724973+00
889	1	194	f	12	2018-08-21 03:03:17.71705+00
891	1	182	t	9	2018-08-21 03:09:04.664414+00
894	1	195	f	3	2018-08-21 03:18:25.682821+00
906	1	196	f	2	2018-08-21 03:45:51.311919+00
924	1	201	f	14	2018-08-21 04:06:40.205558+00
928	1	211	f	8	2018-08-21 04:49:22.117749+00
932	1	211	f	3	2018-08-21 05:02:32.395564+00
958	1	200	f	14	2019-01-23 19:43:05.581712+00
861	1	197	t	9	2019-01-24 05:04:48.26939+00
959	1	221	f	1	2019-01-26 05:01:28.292168+00
960	1	221	f	2	2019-01-26 05:03:15.857888+00
961	1	221	f	3	2019-01-26 05:04:54.671594+00
962	1	221	f	4	2019-01-26 05:06:17.615516+00
963	1	221	f	5	2019-01-26 05:07:43.241444+00
964	1	221	f	6	2019-01-26 05:14:00.235323+00
965	1	221	f	7	2019-01-26 05:16:46.826735+00
966	1	221	f	8	2019-01-26 05:18:54.816613+00
967	1	221	f	9	2019-01-26 05:21:01.590858+00
990	1	238	f	2	2019-01-26 21:37:56.259134+00
993	1	238	f	3	2019-01-26 21:41:04.925088+00
\.


--
-- Name: backend_safetyprop_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.backend_safetyprop_id_seq', 1002, true);


--
-- Data for Name: backend_setparam; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_setparam (parameter_ptr_id, numopts) FROM stdin;
3	6
8	7
17	8
29	3
30	8
70	5
71	3
86	4
80	2
87	2
88	2
89	9
90	9
\.


--
-- Data for Name: backend_setparamopt; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_setparamopt (id, value, param_id) FROM stdin;
1	Red	3
2	Orange	3
3	Yellow	3
4	Green	3
5	Blue	3
6	Violet	3
7	Pop	8
8	Jazz	8
9	R&B	8
10	Hip-Hop	8
11	Rap	8
12	Country	8
13	News	8
14	Sunny	17
15	Cloudy	17
16	Partly Cloudy	17
17	Raining	17
18	Thunderstorms	17
19	Snowing	17
20	Hailing	17
21	Clear	17
24	Small	29
25	Medium	29
26	Large	29
27	No Toppings	30
28	Pepperoni	30
29	Vegetables	30
30	Sausage	30
31	Mushrooms	30
32	Ham & Pineapple	30
33	Extra Cheese	30
34	Anchovies	30
35	Home	70
36	Kitchen	70
37	Bedroom	70
38	Bathroom	70
39	Living Room	70
40	Anyone	71
41	Alice	71
42	Bobbie	71
44	A Family Member	71
43	A Guest	71
45	Nobody	71
54	Red	80
56	Blue	80
74	North	86
75	East	86
76	South	86
77	West	86
87	Red	87
88	Blue	87
89	Red	88
90	Blue	88
91	Patio	89
92	Guest Bedroom	89
93	Dining Room	89
94	Master Bedroom	89
95	Master Bathroom	89
96	Kitchen	89
97	Hall	89
98	Guest Bathroom	89
99	Entry	89
128	Patio	90
129	Guest Bedroom	90
130	Dining Room	90
131	Master Bedroom	90
132	Master Bathroom	90
133	Kitchen	90
134	Hall	90
135	Guest Bathroom	90
136	Entry	90
\.


--
-- Name: backend_setparamopt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.backend_setparamopt_id_seq', 136, true);


--
-- Data for Name: backend_sp1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_sp1 (safetyprop_ptr_id) FROM stdin;
48
51
72
709
728
735
743
746
748
759
766
770
774
777
780
782
786
803
806
809
817
834
836
847
852
853
860
861
862
863
877
886
888
889
891
894
906
924
928
932
958
959
960
961
962
963
964
965
966
967
990
993
\.


--
-- Data for Name: backend_sp1_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_sp1_triggers (id, sp1_id, trigger_id) FROM stdin;
\.


--
-- Name: backend_sp1_triggers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.backend_sp1_triggers_id_seq', 553, true);


--
-- Data for Name: backend_sp2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_sp2 (safetyprop_ptr_id, comp, "time", state_id) FROM stdin;
\.


--
-- Data for Name: backend_sp2_conds; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_sp2_conds (id, sp2_id, trigger_id) FROM stdin;
\.


--
-- Name: backend_sp2_conds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.backend_sp2_conds_id_seq', 298, true);


--
-- Data for Name: backend_sp3; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_sp3 (safetyprop_ptr_id, comp, occurrences, "time", event_id, timecomp) FROM stdin;
\.


--
-- Data for Name: backend_sp3_conds; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_sp3_conds (id, sp3_id, trigger_id) FROM stdin;
\.


--
-- Name: backend_sp3_conds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.backend_sp3_conds_id_seq', 315, true);


--
-- Data for Name: backend_ssrule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_ssrule (priority, action_id, rule_ptr_id) FROM stdin;
\.


--
-- Data for Name: backend_ssrule_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_ssrule_triggers (id, ssrule_id, trigger_id) FROM stdin;
\.


--
-- Name: backend_ssrule_triggers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.backend_ssrule_triggers_id_seq', 1, false);


--
-- Data for Name: backend_state; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_state (id, cap_id, dev_id, action, text, chan_id) FROM stdin;
\.


--
-- Name: backend_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.backend_state_id_seq', 1326, true);


--
-- Data for Name: backend_statelog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_statelog (id, "timestamp", is_current, cap_id, dev_id, value, param_id) FROM stdin;
\.


--
-- Name: backend_statelog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.backend_statelog_id_seq', 1, false);


--
-- Data for Name: backend_timeparam; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_timeparam (parameter_ptr_id, mode) FROM stdin;
23	12
24	24
\.


--
-- Data for Name: backend_trigger; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_trigger (id, cap_id, dev_id, chan_id, pos, text) FROM stdin;
4170	72	28	20	0	Consider doing:
4205	114	30	20	1	Holding a Blue block?
\.


--
-- Name: backend_trigger_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.backend_trigger_id_seq', 4238, true);


--
-- Data for Name: backend_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_user (id, name, mode, code) FROM stdin;
1	jesse	rules	jesse
178	\N	rules	p1
208	\N	rules	p2
206	\N	rules	p3
193	\N	sp	p4
196	\N	sp	p5
171	\N	rules	p6
195	\N	sp	p7
201	\N	sp	p8
192	\N	sp	p9
199	\N	rules	p10
163	\N	sp	p11
174	\N	sp	p12
180	\N	rules	p13
186	\N	rules	p14
175	\N	sp	p15
215	\N	sp	p16
189	\N	sp	p17
216	\N	rules	p18
188	\N	rules	p19
159	\N	sp	p20
209	\N	rules	p21
207	\N	rules	p22
204	\N	rules	p23
200	\N	sp	p24
158	\N	rules	p25
217	\N	sp	p26
210	\N	rules	p27
176	\N	rules	p28
179	\N	rules	p29
156	\N	rules	p30
205	\N	sp	p31
202	\N	sp	p32
165	\N	rules	p33
214	\N	rules	p34
187	\N	sp	p35
166	\N	sp	p36
164	\N	rules	p37
218	\N	rules	p38
162	\N	sp	p39
167	\N	rules	p40
184	\N	sp	p41
211	\N	sp	p42
194	\N	sp	p43
185	\N	rules	p44
173	\N	sp	p45
182	\N	sp	p46
197	\N	sp	p47
160	\N	sp	p48
168	\N	sp	p49
213	\N	rules	p50
170	\N	sp	p51
220	\N	rules	p5
221	\N	sp	mutate
222	\N	rules	mutate
223	\N	rules	p51
224	\N	rules	p49
225	\N	rules	p48
226	\N	rules	p47
227	\N	rules	p46
228	\N	rules	p45
229	\N	rules	p41
230	\N	rules	p39
231	\N	rules	p36
232	\N	rules	p26
233	\N	rules	p20
234	\N	rules	p35
235	\N	rules	p4
236	\N	rules	p7
237	\N	rules	p8
238	\N	sp	multiple
239	\N	rules	multiple
240	\N	sp	user
241	\N	rules	user
242	\N	rules	undefined
\.


--
-- Name: backend_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.backend_user_id_seq', 242, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: iftttuser
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-11-03 18:31:32.074619+00	24	Device object (24)	3		27	1
2	2021-11-03 18:32:19.356624+00	25	Device object (25)	3		27	1
3	2021-11-03 18:32:19.360033+00	23	Device object (23)	3		27	1
4	2021-11-03 18:32:19.363751+00	22	Device object (22)	3		27	1
5	2021-11-03 18:32:19.366126+00	21	Device object (21)	3		27	1
6	2021-11-03 18:32:19.368563+00	20	Device object (20)	3		27	1
7	2021-11-03 18:32:19.370801+00	19	Device object (19)	3		27	1
8	2021-11-03 18:32:19.373242+00	18	Device object (18)	3		27	1
9	2021-11-03 18:32:19.375761+00	17	Device object (17)	3		27	1
10	2021-11-03 18:32:19.378082+00	14	Device object (14)	3		27	1
11	2021-11-03 18:32:19.380293+00	13	Device object (13)	3		27	1
12	2021-11-03 18:32:19.382502+00	12	Device object (12)	3		27	1
13	2021-11-03 18:32:19.384797+00	11	Device object (11)	3		27	1
14	2021-11-03 18:32:19.387242+00	10	Device object (10)	3		27	1
15	2021-11-03 18:32:19.389596+00	9	Device object (9)	3		27	1
16	2021-11-03 18:32:19.391727+00	8	Device object (8)	3		27	1
17	2021-11-03 18:32:19.393998+00	7	Device object (7)	3		27	1
18	2021-11-03 18:32:19.396418+00	6	Device object (6)	3		27	1
19	2021-11-03 18:32:19.398862+00	5	Device object (5)	3		27	1
20	2021-11-03 18:32:19.401042+00	4	Device object (4)	3		27	1
21	2021-11-03 18:32:19.403494+00	3	Device object (3)	3		27	1
22	2021-11-03 18:32:19.406016+00	2	Device object (2)	3		27	1
23	2021-11-03 18:32:19.408472+00	1	Device object (1)	3		27	1
24	2021-11-03 18:32:58.428357+00	19	Channel object (19)	1	[{"added": {}}]	13	1
25	2021-11-03 18:33:15.907324+00	68	Capability object (68)	1	[{"added": {}}]	14	1
26	2021-11-03 18:33:22.29398+00	26	Device object (26)	1	[{"added": {}}]	27	1
27	2021-11-03 18:33:42.413412+00	26	Device object (26)	3		27	1
28	2021-11-03 18:34:36.808564+00	27	Device object (27)	1	[{"added": {}}]	27	1
29	2021-11-03 18:35:12.108805+00	20	Channel object (20)	1	[{"added": {}}]	13	1
30	2021-11-03 18:35:37.020674+00	69	Capability object (69)	1	[{"added": {}}]	14	1
31	2021-11-03 18:35:38.761947+00	27	Device object (27)	2	[{"changed": {"fields": ["chans", "caps"]}}]	27	1
32	2021-11-03 18:36:24.890983+00	19	Channel object (19)	3		13	1
33	2021-11-03 18:36:58.064543+00	18	Channel object (18)	3		13	1
34	2021-11-03 18:36:58.068743+00	17	Channel object (17)	3		13	1
35	2021-11-03 18:36:58.071705+00	16	Channel object (16)	3		13	1
36	2021-11-03 18:36:58.074305+00	15	Channel object (15)	3		13	1
37	2021-11-03 18:36:58.076917+00	14	Channel object (14)	3		13	1
38	2021-11-03 18:36:58.079374+00	13	Channel object (13)	3		13	1
39	2021-11-03 18:36:58.081896+00	12	Channel object (12)	3		13	1
40	2021-11-03 18:36:58.08435+00	11	Channel object (11)	3		13	1
41	2021-11-03 18:36:58.086779+00	10	Channel object (10)	3		13	1
42	2021-11-03 18:36:58.089427+00	9	Channel object (9)	3		13	1
43	2021-11-03 18:36:58.092172+00	8	Channel object (8)	3		13	1
44	2021-11-03 18:36:58.095021+00	7	Channel object (7)	3		13	1
45	2021-11-03 18:36:58.097797+00	6	Channel object (6)	3		13	1
46	2021-11-03 18:36:58.100155+00	5	Channel object (5)	3		13	1
47	2021-11-03 18:36:58.102532+00	4	Channel object (4)	3		13	1
48	2021-11-03 18:36:58.104917+00	3	Channel object (3)	3		13	1
49	2021-11-03 18:36:58.107291+00	2	Channel object (2)	3		13	1
50	2021-11-03 18:36:58.109639+00	1	Channel object (1)	3		13	1
51	2021-11-03 18:37:15.603944+00	20	Channel object (20)	2	[{"changed": {"fields": ["name", "icon"]}}]	13	1
52	2021-11-03 18:38:22.792997+00	27	Device object (27)	2	[{"changed": {"fields": ["caps"]}}]	27	1
53	2021-11-03 18:39:19.470359+00	27	Device object (27)	2	[]	27	1
54	2021-11-03 18:39:23.088915+00	36	Capability object (36)	2	[{"changed": {"fields": ["channels"]}}]	14	1
55	2021-11-03 18:40:07.444609+00	20	Channel object (20)	2	[]	13	1
56	2021-11-03 18:41:17.272935+00	70	Capability object (70)	1	[{"added": {}}]	14	1
57	2021-11-03 18:41:27.42859+00	27	Device object (27)	2	[{"changed": {"fields": ["name", "caps"]}}]	27	1
58	2021-11-03 18:42:35.870958+00	27	Device object (27)	2	[{"changed": {"fields": ["caps"]}}]	27	1
59	2021-11-03 18:43:33.286299+00	27	Device object (27)	2	[{"changed": {"fields": ["caps"]}}]	27	1
60	2021-11-03 18:43:49.856843+00	65	Capability object (65)	2	[{"changed": {"fields": ["channels"]}}]	14	1
61	2021-11-03 19:03:43.083091+00	70	Capability object (70)	2	[{"changed": {"fields": ["writeable"]}}]	14	1
62	2021-11-03 19:04:17.2839+00	70	Capability object (70)	2	[{"changed": {"fields": ["statelabel", "commandlabel"]}}]	14	1
63	2021-11-03 19:04:49.512957+00	70	Capability object (70)	2	[{"changed": {"fields": ["writeable"]}}]	14	1
64	2021-11-03 19:07:56.341503+00	27	Device object (27)	2	[]	27	1
65	2021-11-03 19:10:27.452027+00	71	Capability object (71)	1	[{"added": {}}]	14	1
66	2021-11-03 19:10:52.661023+00	28	Device object (28)	1	[{"added": {}}]	27	1
67	2021-11-03 19:15:10.885019+00	72	Capability object (72)	1	[{"added": {}}]	14	1
68	2021-11-03 19:15:30.790665+00	73	Capability object (73)	1	[{"added": {}}]	14	1
69	2021-11-03 19:15:39.340989+00	28	Device object (28)	2	[{"changed": {"fields": ["caps"]}}]	27	1
100	2021-11-03 19:27:24.294984+00	69	Capability object (69)	3		14	1
101	2021-11-03 19:28:13.833687+00	70	Capability object (70)	2	[{"changed": {"fields": ["name", "readable", "statelabel", "commandlabel", "eventlabel"]}}]	14	1
102	2021-11-03 19:28:21.326359+00	27	Device object (27)	2	[{"changed": {"fields": ["caps"]}}]	27	1
103	2021-11-03 19:29:09.513865+00	70	Capability object (70)	2	[{"changed": {"fields": ["name", "statelabel", "commandlabel", "eventlabel"]}}]	14	1
104	2021-11-03 19:36:25.673494+00	20	Channel object (20)	2	[]	13	1
105	2021-11-03 19:36:31.409467+00	21	Channel object (21)	1	[{"added": {}}]	13	1
106	2021-11-03 19:41:42.871158+00	105	Capability object (105)	1	[{"added": {}}]	14	1
107	2021-11-03 19:44:08.841168+00	77	BinParam object (77)	1	[{"added": {}}]	19	1
108	2021-11-03 19:44:43.521598+00	29	Device object (29)	1	[{"added": {}}]	27	1
109	2021-11-03 19:44:50.945378+00	105	Capability object (105)	2	[]	14	1
110	2021-11-03 19:45:29.078076+00	77	BinParam object (77)	2	[{"changed": {"fields": ["type", "tval", "fval"]}}]	19	1
111	2021-11-03 19:46:02.298018+00	29	Device object (29)	2	[{"changed": {"fields": ["name"]}}]	27	1
112	2021-11-03 19:47:19.211587+00	105	Capability object (105)	2	[{"changed": {"fields": ["statelabel", "commandlabel", "eventlabel"]}}]	14	1
113	2021-11-03 19:47:27.608302+00	77	BinParam object (77)	2	[{"changed": {"fields": ["name"]}}]	19	1
114	2021-11-03 19:48:04.656821+00	105	Capability object (105)	2	[{"changed": {"fields": ["statelabel", "commandlabel", "eventlabel"]}}]	14	1
115	2021-11-03 19:48:24.230624+00	77	BinParam object (77)	2	[{"changed": {"fields": ["type", "tval", "fval"]}}]	19	1
116	2021-11-03 19:49:09.14435+00	77	BinParam object (77)	2	[{"changed": {"fields": ["tval", "fval"]}}]	19	1
117	2021-11-03 19:52:03.393624+00	77	BinParam object (77)	3		19	1
118	2021-11-03 19:53:12.43452+00	78	SetParam object (78)	1	[{"added": {}}]	16	1
119	2021-11-03 19:53:15.731989+00	46	SetParamOpt object (46)	1	[{"added": {}}]	17	1
120	2021-11-03 19:53:24.010205+00	47	SetParamOpt object (47)	1	[{"added": {}}]	17	1
121	2021-11-03 19:53:30.823744+00	48	SetParamOpt object (48)	1	[{"added": {}}]	17	1
122	2021-11-03 19:53:38.163974+00	49	SetParamOpt object (49)	1	[{"added": {}}]	17	1
123	2021-11-03 19:53:49.538409+00	78	SetParam object (78)	2	[]	16	1
124	2021-11-03 19:55:24.035201+00	71	Capability object (71)	2	[{"changed": {"fields": ["statelabel", "commandlabel", "eventlabel"]}}]	14	1
125	2021-11-03 19:55:37.90295+00	70	Capability object (70)	2	[{"changed": {"fields": ["statelabel", "commandlabel", "eventlabel"]}}]	14	1
126	2021-11-03 19:56:31.552633+00	78	SetParam object (78)	2	[]	16	1
127	2021-11-03 19:56:46.225452+00	79	SetParam object (79)	1	[{"added": {}}]	16	1
128	2021-11-03 19:56:58.980369+00	50	SetParamOpt object (50)	1	[{"added": {}}]	17	1
129	2021-11-03 19:57:04.620312+00	51	SetParamOpt object (51)	1	[{"added": {}}]	17	1
130	2021-11-03 19:57:10.037393+00	52	SetParamOpt object (52)	1	[{"added": {}}]	17	1
131	2021-11-03 19:57:14.826937+00	53	SetParamOpt object (53)	1	[{"added": {}}]	17	1
132	2021-11-03 19:57:45.296689+00	70	Capability object (70)	2	[{"changed": {"fields": ["name"]}}]	14	1
133	2021-11-03 20:08:51.018498+00	106	Capability object (106)	1	[{"added": {}}]	14	1
134	2021-11-03 20:09:28.176858+00	107	Capability object (107)	1	[{"added": {}}]	14	1
135	2021-11-03 20:09:51.459812+00	108	Capability object (108)	1	[{"added": {}}]	14	1
136	2021-11-03 20:10:55.477559+00	109	Capability object (109)	1	[{"added": {}}]	14	1
137	2021-11-03 20:11:00.186437+00	30	Device object (30)	1	[{"added": {}}]	27	1
138	2021-11-03 20:11:31.54862+00	109	Capability object (109)	3		14	1
139	2021-11-03 20:11:44.471605+00	80	SetParam object (80)	1	[{"added": {}}]	16	1
140	2021-11-03 20:11:59.363453+00	54	SetParamOpt object (54)	1	[{"added": {}}]	17	1
141	2021-11-03 20:12:06.760296+00	55	SetParamOpt object (55)	1	[{"added": {}}]	17	1
142	2021-11-03 20:12:12.909561+00	56	SetParamOpt object (56)	1	[{"added": {}}]	17	1
143	2021-11-03 20:12:56.821033+00	80	SetParam object (80)	2	[{"changed": {"fields": ["cap"]}}]	16	1
144	2021-11-03 20:13:30.016517+00	107	Capability object (107)	2	[{"changed": {"fields": ["name"]}}]	14	1
145	2021-11-03 20:13:54.668525+00	21	Channel object (21)	2	[{"changed": {"fields": ["name"]}}]	13	1
146	2021-11-03 20:17:01.728924+00	108	Capability object (108)	2	[{"changed": {"fields": ["name", "statelabel", "commandlabel", "eventlabel"]}}]	14	1
147	2021-11-03 20:18:28.244816+00	110	Capability object (110)	1	[{"added": {}}]	14	1
148	2021-11-03 20:18:53.182468+00	111	Capability object (111)	1	[{"added": {}}]	14	1
149	2021-11-03 20:19:14.775915+00	27	Device object (27)	2	[{"changed": {"fields": ["caps"]}}]	27	1
150	2021-11-03 20:19:32.485744+00	111	Capability object (111)	2	[{"changed": {"fields": ["statelabel", "commandlabel", "eventlabel"]}}]	14	1
151	2021-11-03 20:20:01.504952+00	81	SetParam object (81)	1	[{"added": {}}]	16	1
152	2021-11-03 20:20:19.332065+00	57	SetParamOpt object (57)	1	[{"added": {}}]	17	1
153	2021-11-03 20:20:26.901713+00	58	SetParamOpt object (58)	1	[{"added": {}}]	17	1
154	2021-11-03 20:20:32.81714+00	59	SetParamOpt object (59)	1	[{"added": {}}]	17	1
155	2021-11-03 20:22:46.162635+00	112	Capability object (112)	1	[{"added": {}}]	14	1
156	2021-11-03 20:22:49.011186+00	27	Device object (27)	2	[{"changed": {"fields": ["caps"]}}]	27	1
157	2021-11-03 20:23:34.95224+00	111	Capability object (111)	2	[]	14	1
158	2021-11-03 20:24:03.071221+00	82	SetParam object (82)	1	[{"added": {}}]	16	1
159	2021-11-03 20:24:18.693141+00	83	SetParam object (83)	1	[{"added": {}}]	16	1
160	2021-11-03 20:24:36.286795+00	60	SetParamOpt object (60)	1	[{"added": {}}]	17	1
161	2021-11-03 20:24:41.110212+00	61	SetParamOpt object (61)	1	[{"added": {}}]	17	1
162	2021-11-03 20:24:46.612286+00	62	SetParamOpt object (62)	1	[{"added": {}}]	17	1
163	2021-11-03 20:24:52.16022+00	63	SetParamOpt object (63)	1	[{"added": {}}]	17	1
164	2021-11-03 20:24:58.280503+00	64	SetParamOpt object (64)	1	[{"added": {}}]	17	1
165	2021-11-03 20:25:04.071887+00	65	SetParamOpt object (65)	1	[{"added": {}}]	17	1
166	2021-11-03 20:25:09.984992+00	66	SetParamOpt object (66)	1	[{"added": {}}]	17	1
167	2021-11-03 20:26:06.133024+00	112	Capability object (112)	2	[]	14	1
168	2021-11-03 20:26:44.542265+00	113	Capability object (113)	1	[{"added": {}}]	14	1
169	2021-11-03 20:27:06.35515+00	84	SetParam object (84)	1	[{"added": {}}]	16	1
170	2021-11-03 20:27:19.743403+00	85	SetParam object (85)	1	[{"added": {}}]	16	1
171	2021-11-03 20:27:36.749139+00	67	SetParamOpt object (67)	1	[{"added": {}}]	17	1
172	2021-11-03 20:27:45.32213+00	68	SetParamOpt object (68)	1	[{"added": {}}]	17	1
173	2021-11-03 20:27:51.212171+00	69	SetParamOpt object (69)	1	[{"added": {}}]	17	1
174	2021-11-03 20:27:56.778127+00	70	SetParamOpt object (70)	1	[{"added": {}}]	17	1
175	2021-11-03 20:28:03.749862+00	71	SetParamOpt object (71)	1	[{"added": {}}]	17	1
176	2021-11-03 20:28:10.564607+00	72	SetParamOpt object (72)	1	[{"added": {}}]	17	1
177	2021-11-03 20:28:18.36913+00	73	SetParamOpt object (73)	1	[{"added": {}}]	17	1
178	2021-11-03 20:29:07.740406+00	30	Device object (30)	2	[{"changed": {"fields": ["caps"]}}]	27	1
179	2021-11-03 20:29:39.639738+00	112	Capability object (112)	2	[{"changed": {"fields": ["readable"]}}]	14	1
180	2021-11-03 22:57:11.411643+00	86	SetParam object (86)	1	[{"added": {}}]	16	1
181	2021-11-03 22:57:30.10989+00	74	SetParamOpt object (74)	1	[{"added": {}}]	17	1
182	2021-11-03 22:57:37.735372+00	75	SetParamOpt object (75)	1	[{"added": {}}]	17	1
183	2021-11-03 22:57:47.090761+00	76	SetParamOpt object (76)	1	[{"added": {}}]	17	1
184	2021-11-03 22:57:54.432515+00	77	SetParamOpt object (77)	1	[{"added": {}}]	17	1
185	2021-11-03 22:58:09.990735+00	70	Capability object (70)	2	[{"changed": {"fields": ["name", "statelabel", "commandlabel", "eventlabel"]}}]	14	1
186	2021-11-03 22:59:23.245126+00	107	Capability object (107)	2	[{"changed": {"fields": ["name", "statelabel", "commandlabel", "eventlabel"]}}]	14	1
187	2021-11-03 22:59:42.029738+00	113	Capability object (113)	3		14	1
188	2021-11-03 22:59:42.032838+00	112	Capability object (112)	3		14	1
189	2021-11-03 22:59:42.035454+00	111	Capability object (111)	3		14	1
190	2021-11-03 22:59:42.038338+00	110	Capability object (110)	3		14	1
191	2021-11-03 23:00:15.677759+00	106	Capability object (106)	3		14	1
192	2021-11-03 23:01:24.931217+00	55	SetParamOpt object (55)	3		17	1
193	2021-11-03 23:01:33.522538+00	80	SetParam object (80)	2	[{"changed": {"fields": ["numopts"]}}]	16	1
194	2021-11-03 23:04:01.782038+00	79	SetParam object (79)	2	[{"changed": {"fields": ["cap", "numopts"]}}]	16	1
195	2021-11-03 23:04:41.64219+00	53	SetParamOpt object (53)	3		17	1
196	2021-11-03 23:04:41.645855+00	52	SetParamOpt object (52)	3		17	1
197	2021-11-03 23:04:41.648343+00	51	SetParamOpt object (51)	3		17	1
198	2021-11-03 23:04:41.650711+00	50	SetParamOpt object (50)	3		17	1
199	2021-11-03 23:05:12.96113+00	78	SetParamOpt object (78)	1	[{"added": {}}]	17	1
200	2021-11-03 23:05:23.174035+00	79	SetParamOpt object (79)	1	[{"added": {}}]	17	1
201	2021-11-03 23:05:32.737885+00	80	SetParamOpt object (80)	1	[{"added": {}}]	17	1
202	2021-11-03 23:05:42.020337+00	81	SetParamOpt object (81)	1	[{"added": {}}]	17	1
203	2021-11-03 23:05:50.60274+00	82	SetParamOpt object (82)	1	[{"added": {}}]	17	1
204	2021-11-03 23:06:01.064331+00	82	SetParamOpt object (82)	2	[]	17	1
205	2021-11-03 23:06:07.466457+00	83	SetParamOpt object (83)	1	[{"added": {}}]	17	1
206	2021-11-03 23:06:13.911811+00	84	SetParamOpt object (84)	1	[{"added": {}}]	17	1
207	2021-11-03 23:06:24.442051+00	85	SetParamOpt object (85)	1	[{"added": {}}]	17	1
208	2021-11-03 23:06:33.142477+00	86	SetParamOpt object (86)	1	[{"added": {}}]	17	1
209	2021-11-03 23:10:12.167721+00	114	Capability object (114)	1	[{"added": {}}]	14	1
210	2021-11-03 23:10:18.366687+00	79	SetParam object (79)	2	[]	16	1
211	2021-11-03 23:10:28.528618+00	87	SetParam object (87)	1	[{"added": {}}]	16	1
212	2021-11-03 23:10:44.97353+00	87	SetParamOpt object (87)	1	[{"added": {}}]	17	1
213	2021-11-03 23:10:49.533679+00	88	SetParamOpt object (88)	1	[{"added": {}}]	17	1
214	2021-11-03 23:12:10.716243+00	115	Capability object (115)	1	[{"added": {}}]	14	1
215	2021-11-03 23:12:25.257691+00	114	Capability object (114)	2	[{"changed": {"fields": ["readable"]}}]	14	1
216	2021-11-03 23:12:37.231844+00	30	Device object (30)	2	[{"changed": {"fields": ["caps"]}}]	27	1
217	2021-11-03 23:13:14.543146+00	88	SetParam object (88)	1	[{"added": {}}]	16	1
218	2021-11-03 23:13:25.331796+00	89	SetParamOpt object (89)	1	[{"added": {}}]	17	1
219	2021-11-03 23:13:31.775406+00	90	SetParamOpt object (90)	1	[{"added": {}}]	17	1
220	2021-11-03 23:13:47.375315+00	89	SetParam object (89)	1	[{"added": {}}]	16	1
221	2021-11-03 23:14:03.081216+00	91	SetParamOpt object (91)	1	[{"added": {}}]	17	1
222	2021-11-03 23:14:14.079691+00	92	SetParamOpt object (92)	1	[{"added": {}}]	17	1
223	2021-11-03 23:14:29.269726+00	93	SetParamOpt object (93)	1	[{"added": {}}]	17	1
224	2021-11-03 23:14:42.301723+00	94	SetParamOpt object (94)	1	[{"added": {}}]	17	1
225	2021-11-03 23:14:52.722465+00	95	SetParamOpt object (95)	1	[{"added": {}}]	17	1
226	2021-11-03 23:15:01.626347+00	96	SetParamOpt object (96)	1	[{"added": {}}]	17	1
227	2021-11-03 23:15:09.63438+00	97	SetParamOpt object (97)	1	[{"added": {}}]	17	1
228	2021-11-03 23:15:16.70431+00	98	SetParamOpt object (98)	1	[{"added": {}}]	17	1
229	2021-11-03 23:15:24.942746+00	99	SetParamOpt object (99)	1	[{"added": {}}]	17	1
230	2021-11-03 23:16:24.396009+00	115	Capability object (115)	2	[]	14	1
231	2021-11-03 23:17:03.236594+00	105	Capability object (105)	2	[{"changed": {"fields": ["statelabel", "commandlabel", "eventlabel"]}}]	14	1
232	2021-11-03 23:17:43.602778+00	107	Capability object (107)	2	[{"changed": {"fields": ["statelabel", "commandlabel", "eventlabel"]}}]	14	1
258	2021-11-03 23:28:45.079547+00	115	Capability object (115)	2	[{"changed": {"fields": ["statelabel"]}}]	14	1
291	2021-11-03 23:31:06.182935+00	115	Capability object (115)	2	[{"changed": {"fields": ["commandlabel", "eventlabel"]}}]	14	1
324	2021-11-03 23:37:07.738314+00	115	Capability object (115)	2	[{"changed": {"fields": ["statelabel", "commandlabel", "eventlabel"]}}]	14	1
357	2021-11-04 00:47:18.22598+00	115	Capability object (115)	2	[{"changed": {"fields": ["statelabel", "commandlabel", "eventlabel"]}}]	14	1
390	2021-11-04 02:20:48.438901+00	115	Capability object (115)	2	[{"changed": {"fields": ["statelabel", "commandlabel", "eventlabel"]}}]	14	1
423	2021-11-04 05:01:32.027653+00	115	Capability object (115)	2	[{"changed": {"fields": ["readable", "writeable"]}}]	14	1
424	2021-11-04 05:01:38.414763+00	114	Capability object (114)	2	[{"changed": {"fields": ["readable", "writeable"]}}]	14	1
425	2021-11-04 05:01:53.058814+00	105	Capability object (105)	2	[{"changed": {"fields": ["readable", "writeable"]}}]	14	1
426	2021-11-04 05:02:04.323988+00	72	Capability object (72)	2	[{"changed": {"fields": ["readable"]}}]	14	1
427	2021-11-04 05:02:09.182077+00	72	Capability object (72)	2	[]	14	1
428	2021-11-04 05:02:13.309991+00	71	Capability object (71)	2	[{"changed": {"fields": ["readable"]}}]	14	1
429	2021-11-04 05:02:21.453338+00	70	Capability object (70)	2	[]	14	1
430	2021-11-04 05:02:26.580102+00	73	Capability object (73)	2	[{"changed": {"fields": ["readable"]}}]	14	1
431	2021-11-04 05:05:33.082791+00	105	Capability object (105)	3		14	1
432	2021-11-04 05:05:50.060301+00	116	Capability object (116)	1	[{"added": {}}]	14	1
433	2021-11-04 05:07:02.240338+00	90	SetParam object (90)	1	[{"added": {}}]	16	1
434	2021-11-04 05:07:22.863301+00	128	SetParamOpt object (128)	1	[{"added": {}}]	17	1
435	2021-11-04 05:07:29.374713+00	129	SetParamOpt object (129)	1	[{"added": {}}]	17	1
436	2021-11-04 05:07:37.418775+00	130	SetParamOpt object (130)	1	[{"added": {}}]	17	1
437	2021-11-04 05:07:47.028109+00	131	SetParamOpt object (131)	1	[{"added": {}}]	17	1
438	2021-11-04 05:07:59.944817+00	132	SetParamOpt object (132)	1	[{"added": {}}]	17	1
439	2021-11-04 05:08:07.811193+00	133	SetParamOpt object (133)	1	[{"added": {}}]	17	1
440	2021-11-04 05:08:14.549678+00	134	SetParamOpt object (134)	1	[{"added": {}}]	17	1
441	2021-11-04 05:08:22.222819+00	135	SetParamOpt object (135)	1	[{"added": {}}]	17	1
442	2021-11-04 05:08:28.461566+00	136	SetParamOpt object (136)	1	[{"added": {}}]	17	1
443	2021-11-04 05:08:58.187894+00	29	Device object (29)	2	[{"changed": {"fields": ["caps"]}}]	27	1
444	2021-11-04 05:14:17.751264+00	116	Capability object (116)	2	[{"changed": {"fields": ["readable", "writeable"]}}]	14	1
445	2021-11-04 05:14:25.142923+00	115	Capability object (115)	2	[{"changed": {"fields": ["readable", "writeable"]}}]	14	1
446	2021-11-04 05:14:33.224541+00	114	Capability object (114)	2	[{"changed": {"fields": ["readable", "writeable"]}}]	14	1
447	2021-11-04 05:14:38.656283+00	114	Capability object (114)	2	[]	14	1
448	2021-11-04 05:14:43.28469+00	108	Capability object (108)	2	[]	14	1
449	2021-11-04 05:14:47.64443+00	107	Capability object (107)	2	[]	14	1
450	2021-11-04 05:14:52.774213+00	73	Capability object (73)	2	[{"changed": {"fields": ["readable"]}}]	14	1
451	2021-11-04 05:14:56.650905+00	72	Capability object (72)	2	[{"changed": {"fields": ["readable"]}}]	14	1
452	2021-11-04 05:15:01.974468+00	71	Capability object (71)	2	[{"changed": {"fields": ["readable"]}}]	14	1
477	2021-11-04 05:39:13.304954+00	116	Capability object (116)	2	[{"changed": {"fields": ["readable", "writeable"]}}]	14	1
478	2021-11-04 05:39:18.327517+00	115	Capability object (115)	2	[{"changed": {"fields": ["readable", "writeable"]}}]	14	1
479	2021-11-04 05:39:23.070446+00	114	Capability object (114)	2	[{"changed": {"fields": ["readable", "writeable"]}}]	14	1
480	2021-11-04 05:39:27.551767+00	108	Capability object (108)	2	[]	14	1
481	2021-11-04 05:39:33.579664+00	73	Capability object (73)	2	[{"changed": {"fields": ["readable"]}}]	14	1
482	2021-11-04 05:39:37.604263+00	72	Capability object (72)	2	[{"changed": {"fields": ["readable"]}}]	14	1
483	2021-11-04 05:39:41.76613+00	71	Capability object (71)	2	[{"changed": {"fields": ["readable"]}}]	14	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iftttuser
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 483, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: iftttuser
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	user_auth	usermetadata
8	rule_management	rule
9	rule_management	device
10	rule_management	abstractcharecteristic
11	rule_management	devicecharecteristic
12	backend	user
13	backend	channel
14	backend	capability
15	backend	parameter
16	backend	setparam
17	backend	setparamopt
18	backend	rangeparam
19	backend	binparam
20	backend	colorparam
21	backend	timeparam
22	backend	durationparam
23	backend	inputparam
24	backend	metaparam
25	backend	parval
26	backend	condition
27	backend	device
28	backend	state
29	backend	trigger
30	backend	rule
31	backend	esrule
32	backend	ssrule
33	backend	safetyprop
34	backend	sp1
35	backend	sp2
36	backend	sp3
37	backend	statelog
38	st_end	stapp
39	st_end	device
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iftttuser
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 39, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: iftttuser
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
14	contenttypes	0001_initial	2021-10-21 20:10:09.978537+00
15	auth	0001_initial	2021-10-21 20:10:09.981872+00
16	admin	0001_initial	2021-10-21 20:10:09.983641+00
17	admin	0002_logentry_remove_auto_add	2021-10-21 20:10:09.985425+00
18	contenttypes	0002_remove_content_type_name	2021-10-21 20:10:09.987131+00
19	auth	0002_alter_permission_name_max_length	2021-10-21 20:10:09.988661+00
20	auth	0003_alter_user_email_max_length	2021-10-21 20:10:09.990413+00
21	auth	0004_alter_user_username_opts	2021-10-21 20:10:09.99215+00
22	auth	0005_alter_user_last_login_null	2021-10-21 20:10:09.993738+00
23	auth	0006_require_contenttypes_0002	2021-10-21 20:10:09.995525+00
24	auth	0007_alter_validators_add_error_messages	2021-10-21 20:10:09.997348+00
25	auth	0008_alter_user_username_max_length	2021-10-21 20:10:09.999447+00
26	auth	0009_alter_user_last_name_max_length	2021-10-21 20:10:10.001147+00
28	sessions	0001_initial	2021-10-21 20:14:28.998527+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iftttuser
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 28, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: iftttuser
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
nkvz6kvrvlyyk67qfq1ce744xbm2ay8f	ZGU2NWQ5ZDRhZGRjYzlhMDZmZDQ4NjhlN2ZhNmRlOWY4NTk1NmFlMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjM4MWMxNDczYjc4ZDQ4YTQ5MWE2NjBiY2U4M2U0ZDZiNzNmZmViNmIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2021-11-04 20:15:06.660369+00
74wt2z5fw0hqurgmsyiv5tma025cmhgm	NGMxZDkwYzA1YzkzNzkxNWYzOWY5OGY3ZTE1ZjJlNDlkZmE4ZmQ3MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjM4MWMxNDczYjc4ZDQ4YTQ5MWE2NjBiY2U4M2U0ZDZiNzNmZmViNmIiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2021-11-17 18:29:48.362203+00
c3h20vz1lq7nduqsu1no1b3cmprz8f7j	OGY4NDhhYmNhNzIzMTA2MjdmNzc2NTMxYWJhNGI1MzliMjc1ODc3OTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzgxYzE0NzNiNzhkNDhhNDkxYTY2MGJjZTgzZTRkNmI3M2ZmZWI2YiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2021-11-18 05:39:06.354002+00
\.


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: backend_binparam_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_binparam
    ADD CONSTRAINT backend_binparam_pkey PRIMARY KEY (parameter_ptr_id);


--
-- Name: backend_capability_chann_capability_id_channel_id_131031e1_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_capability_channels
    ADD CONSTRAINT backend_capability_chann_capability_id_channel_id_131031e1_uniq UNIQUE (capability_id, channel_id);


--
-- Name: backend_capability_channels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_capability_channels
    ADD CONSTRAINT backend_capability_channels_pkey PRIMARY KEY (id);


--
-- Name: backend_capability_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_capability
    ADD CONSTRAINT backend_capability_pkey PRIMARY KEY (id);


--
-- Name: backend_channel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_channel
    ADD CONSTRAINT backend_channel_pkey PRIMARY KEY (id);


--
-- Name: backend_colorparam_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_colorparam
    ADD CONSTRAINT backend_colorparam_pkey PRIMARY KEY (parameter_ptr_id);


--
-- Name: backend_condition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_condition
    ADD CONSTRAINT backend_condition_pkey PRIMARY KEY (id);


--
-- Name: backend_device_capabilit_device_id_capability_id_690d9551_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_device_caps
    ADD CONSTRAINT backend_device_capabilit_device_id_capability_id_690d9551_uniq UNIQUE (device_id, capability_id);


--
-- Name: backend_device_capabilities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_device_caps
    ADD CONSTRAINT backend_device_capabilities_pkey PRIMARY KEY (id);


--
-- Name: backend_device_chans_device_id_channel_id_d581e087_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_device_chans
    ADD CONSTRAINT backend_device_chans_device_id_channel_id_d581e087_uniq UNIQUE (device_id, channel_id);


--
-- Name: backend_device_chans_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_device_chans
    ADD CONSTRAINT backend_device_chans_pkey PRIMARY KEY (id);


--
-- Name: backend_device_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_device
    ADD CONSTRAINT backend_device_pkey PRIMARY KEY (id);


--
-- Name: backend_durationparam_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_durationparam
    ADD CONSTRAINT backend_durationparam_pkey PRIMARY KEY (parameter_ptr_id);


--
-- Name: backend_esrule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_esrule
    ADD CONSTRAINT backend_esrule_pkey PRIMARY KEY (rule_ptr_id);


--
-- Name: backend_esrule_triggersS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."backend_esrule_Striggers"
    ADD CONSTRAINT "backend_esrule_triggersS_pkey" PRIMARY KEY (id);


--
-- Name: backend_esrule_triggerss_esrule_id_state_id_e2f7e575_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."backend_esrule_Striggers"
    ADD CONSTRAINT backend_esrule_triggerss_esrule_id_state_id_e2f7e575_uniq UNIQUE (esrule_id, trigger_id);


--
-- Name: backend_inputparam_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_inputparam
    ADD CONSTRAINT backend_inputparam_pkey PRIMARY KEY (parameter_ptr_id);


--
-- Name: backend_metaparam_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_metaparam
    ADD CONSTRAINT backend_metaparam_pkey PRIMARY KEY (parameter_ptr_id);


--
-- Name: backend_parameter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_parameter
    ADD CONSTRAINT backend_parameter_pkey PRIMARY KEY (id);


--
-- Name: backend_parval_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_parval
    ADD CONSTRAINT backend_parval_pkey PRIMARY KEY (id);


--
-- Name: backend_rangeparam_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_rangeparam
    ADD CONSTRAINT backend_rangeparam_pkey PRIMARY KEY (parameter_ptr_id);


--
-- Name: backend_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_rule
    ADD CONSTRAINT backend_rule_pkey PRIMARY KEY (id);


--
-- Name: backend_safetyprop_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_safetyprop
    ADD CONSTRAINT backend_safetyprop_pkey PRIMARY KEY (id);


--
-- Name: backend_setparam_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_setparam
    ADD CONSTRAINT backend_setparam_pkey PRIMARY KEY (parameter_ptr_id);


--
-- Name: backend_setparamopt_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_setparamopt
    ADD CONSTRAINT backend_setparamopt_pkey PRIMARY KEY (id);


--
-- Name: backend_sp1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_sp1
    ADD CONSTRAINT backend_sp1_pkey PRIMARY KEY (safetyprop_ptr_id);


--
-- Name: backend_sp1_triggers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_sp1_triggers
    ADD CONSTRAINT backend_sp1_triggers_pkey PRIMARY KEY (id);


--
-- Name: backend_sp1_triggers_sp1_id_trigger_id_8b45f99b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_sp1_triggers
    ADD CONSTRAINT backend_sp1_triggers_sp1_id_trigger_id_8b45f99b_uniq UNIQUE (sp1_id, trigger_id);


--
-- Name: backend_sp2_conds_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_sp2_conds
    ADD CONSTRAINT backend_sp2_conds_pkey PRIMARY KEY (id);


--
-- Name: backend_sp2_conds_sp2_id_trigger_id_8df7a647_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_sp2_conds
    ADD CONSTRAINT backend_sp2_conds_sp2_id_trigger_id_8df7a647_uniq UNIQUE (sp2_id, trigger_id);


--
-- Name: backend_sp2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_sp2
    ADD CONSTRAINT backend_sp2_pkey PRIMARY KEY (safetyprop_ptr_id);


--
-- Name: backend_sp3_conds_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_sp3_conds
    ADD CONSTRAINT backend_sp3_conds_pkey PRIMARY KEY (id);


--
-- Name: backend_sp3_conds_sp3_id_trigger_id_472a7be0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_sp3_conds
    ADD CONSTRAINT backend_sp3_conds_sp3_id_trigger_id_472a7be0_uniq UNIQUE (sp3_id, trigger_id);


--
-- Name: backend_sp3_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_sp3
    ADD CONSTRAINT backend_sp3_pkey PRIMARY KEY (safetyprop_ptr_id);


--
-- Name: backend_ssrule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_ssrule
    ADD CONSTRAINT backend_ssrule_pkey PRIMARY KEY (rule_ptr_id);


--
-- Name: backend_ssrule_triggers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_ssrule_triggers
    ADD CONSTRAINT backend_ssrule_triggers_pkey PRIMARY KEY (id);


--
-- Name: backend_ssrule_triggers_ssrule_id_state_id_9e03b8bc_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_ssrule_triggers
    ADD CONSTRAINT backend_ssrule_triggers_ssrule_id_state_id_9e03b8bc_uniq UNIQUE (ssrule_id, trigger_id);


--
-- Name: backend_state_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_state
    ADD CONSTRAINT backend_state_pkey PRIMARY KEY (id);


--
-- Name: backend_statelog_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_statelog
    ADD CONSTRAINT backend_statelog_pkey PRIMARY KEY (id);


--
-- Name: backend_timeparam_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_timeparam
    ADD CONSTRAINT backend_timeparam_pkey PRIMARY KEY (parameter_ptr_id);


--
-- Name: backend_trigger_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_trigger
    ADD CONSTRAINT backend_trigger_pkey PRIMARY KEY (id);


--
-- Name: backend_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_user
    ADD CONSTRAINT backend_user_pkey PRIMARY KEY (id);


--
-- Name: backend_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_user
    ADD CONSTRAINT backend_user_username_key UNIQUE (name);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: iftttuser
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: iftttuser
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: iftttuser
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: iftttuser
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: iftttuser
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: iftttuser
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: iftttuser
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: iftttuser
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: iftttuser
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: backend_capability_channels_capability_id_1bccd6c0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_capability_channels_capability_id_1bccd6c0 ON public.backend_capability_channels USING btree (capability_id);


--
-- Name: backend_capability_channels_channel_id_84c47a3a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_capability_channels_channel_id_84c47a3a ON public.backend_capability_channels USING btree (channel_id);


--
-- Name: backend_condition_par_id_bddbc67e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_condition_par_id_bddbc67e ON public.backend_condition USING btree (par_id);


--
-- Name: backend_condition_trigger_id_5a7be7ee; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_condition_trigger_id_5a7be7ee ON public.backend_condition USING btree (trigger_id);


--
-- Name: backend_device_capabilities_capability_id_b710e85c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_device_capabilities_capability_id_b710e85c ON public.backend_device_caps USING btree (capability_id);


--
-- Name: backend_device_capabilities_device_id_d1ec2214; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_device_capabilities_device_id_d1ec2214 ON public.backend_device_caps USING btree (device_id);


--
-- Name: backend_device_chans_channel_id_d5e05cbd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_device_chans_channel_id_d5e05cbd ON public.backend_device_chans USING btree (channel_id);


--
-- Name: backend_device_chans_device_id_7eaeaa06; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_device_chans_device_id_7eaeaa06 ON public.backend_device_chans USING btree (device_id);


--
-- Name: backend_device_owner_id_a248fd8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_device_owner_id_a248fd8b ON public.backend_device USING btree (owner_id);


--
-- Name: backend_esrule_actionstate_id_e2e66cac; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_esrule_actionstate_id_e2e66cac ON public.backend_esrule USING btree (action_id);


--
-- Name: backend_esrule_triggerE_id_91b6be8d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "backend_esrule_triggerE_id_91b6be8d" ON public.backend_esrule USING btree ("Etrigger_id");


--
-- Name: backend_esrule_triggersS_esrule_id_7ea33e3d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "backend_esrule_triggersS_esrule_id_7ea33e3d" ON public."backend_esrule_Striggers" USING btree (esrule_id);


--
-- Name: backend_esrule_triggersS_state_id_22f7e9e4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "backend_esrule_triggersS_state_id_22f7e9e4" ON public."backend_esrule_Striggers" USING btree (trigger_id);


--
-- Name: backend_parameter_cap_id_b4de2acb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_parameter_cap_id_b4de2acb ON public.backend_parameter USING btree (cap_id);


--
-- Name: backend_parval_par_id_049e0be4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_parval_par_id_049e0be4 ON public.backend_parval USING btree (par_id);


--
-- Name: backend_parval_state_id_cde26674; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_parval_state_id_cde26674 ON public.backend_parval USING btree (state_id);


--
-- Name: backend_rule_owner_id_32585cc6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_rule_owner_id_32585cc6 ON public.backend_rule USING btree (owner_id);


--
-- Name: backend_safetyprop_owner_id_0b165fad; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_safetyprop_owner_id_0b165fad ON public.backend_safetyprop USING btree (owner_id);


--
-- Name: backend_setparamopt_param_id_07e0f502; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_setparamopt_param_id_07e0f502 ON public.backend_setparamopt USING btree (param_id);


--
-- Name: backend_sp1_triggers_sp1_id_c4c1aca5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_sp1_triggers_sp1_id_c4c1aca5 ON public.backend_sp1_triggers USING btree (sp1_id);


--
-- Name: backend_sp1_triggers_trigger_id_83a751db; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_sp1_triggers_trigger_id_83a751db ON public.backend_sp1_triggers USING btree (trigger_id);


--
-- Name: backend_sp2_conds_sp2_id_1fb0191a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_sp2_conds_sp2_id_1fb0191a ON public.backend_sp2_conds USING btree (sp2_id);


--
-- Name: backend_sp2_conds_trigger_id_b90c6fa9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_sp2_conds_trigger_id_b90c6fa9 ON public.backend_sp2_conds USING btree (trigger_id);


--
-- Name: backend_sp2_state_id_01caf21d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_sp2_state_id_01caf21d ON public.backend_sp2 USING btree (state_id);


--
-- Name: backend_sp3_conds_sp3_id_f2c1fec5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_sp3_conds_sp3_id_f2c1fec5 ON public.backend_sp3_conds USING btree (sp3_id);


--
-- Name: backend_sp3_conds_trigger_id_4aa9489f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_sp3_conds_trigger_id_4aa9489f ON public.backend_sp3_conds USING btree (trigger_id);


--
-- Name: backend_sp3_event_id_b133fd92; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_sp3_event_id_b133fd92 ON public.backend_sp3 USING btree (event_id);


--
-- Name: backend_ssrule_actionstate_id_c9461e31; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_ssrule_actionstate_id_c9461e31 ON public.backend_ssrule USING btree (action_id);


--
-- Name: backend_ssrule_triggers_ssrule_id_c5913b93; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_ssrule_triggers_ssrule_id_c5913b93 ON public.backend_ssrule_triggers USING btree (ssrule_id);


--
-- Name: backend_ssrule_triggers_state_id_c7f0416f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_ssrule_triggers_state_id_c7f0416f ON public.backend_ssrule_triggers USING btree (trigger_id);


--
-- Name: backend_state_cap_id_25727ebe; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_state_cap_id_25727ebe ON public.backend_state USING btree (cap_id);


--
-- Name: backend_state_chan_id_b9d0a0d4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_state_chan_id_b9d0a0d4 ON public.backend_state USING btree (chan_id);


--
-- Name: backend_state_dev_id_a376fae0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_state_dev_id_a376fae0 ON public.backend_state USING btree (dev_id);


--
-- Name: backend_statelog_cap_id_a554767b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_statelog_cap_id_a554767b ON public.backend_statelog USING btree (cap_id);


--
-- Name: backend_statelog_dev_id_63f7e345; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_statelog_dev_id_63f7e345 ON public.backend_statelog USING btree (dev_id);


--
-- Name: backend_statelog_param_id_ab9f8aa5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_statelog_param_id_ab9f8aa5 ON public.backend_statelog USING btree (param_id);


--
-- Name: backend_trigger_cap2_id_b0a35770; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_trigger_cap2_id_b0a35770 ON public.backend_trigger USING btree (cap_id);


--
-- Name: backend_trigger_chan_id_bbc8de39; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_trigger_chan_id_bbc8de39 ON public.backend_trigger USING btree (chan_id);


--
-- Name: backend_trigger_dev2_id_f21c5876; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_trigger_dev2_id_f21c5876 ON public.backend_trigger USING btree (dev_id);


--
-- Name: backend_user_username_eb55703b_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX backend_user_username_eb55703b_like ON public.backend_user USING btree (name varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: iftttuser
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: iftttuser
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: iftttuser
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: iftttuser
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_binparam_parameter_ptr_id_4fc53892_fk_backend_p; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_binparam
    ADD CONSTRAINT backend_binparam_parameter_ptr_id_4fc53892_fk_backend_p FOREIGN KEY (parameter_ptr_id) REFERENCES public.backend_parameter(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_capability_c_capability_id_1bccd6c0_fk_backend_c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_capability_channels
    ADD CONSTRAINT backend_capability_c_capability_id_1bccd6c0_fk_backend_c FOREIGN KEY (capability_id) REFERENCES public.backend_capability(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_capability_c_channel_id_84c47a3a_fk_backend_c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_capability_channels
    ADD CONSTRAINT backend_capability_c_channel_id_84c47a3a_fk_backend_c FOREIGN KEY (channel_id) REFERENCES public.backend_channel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_colorparam_parameter_ptr_id_2a10b1b1_fk_backend_p; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_colorparam
    ADD CONSTRAINT backend_colorparam_parameter_ptr_id_2a10b1b1_fk_backend_p FOREIGN KEY (parameter_ptr_id) REFERENCES public.backend_parameter(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_condition_par_id_bddbc67e_fk_backend_parameter_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_condition
    ADD CONSTRAINT backend_condition_par_id_bddbc67e_fk_backend_parameter_id FOREIGN KEY (par_id) REFERENCES public.backend_parameter(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_condition_trigger_id_5a7be7ee_fk_backend_trigger_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_condition
    ADD CONSTRAINT backend_condition_trigger_id_5a7be7ee_fk_backend_trigger_id FOREIGN KEY (trigger_id) REFERENCES public.backend_trigger(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_device_caps_capability_id_6d681664_fk_backend_c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_device_caps
    ADD CONSTRAINT backend_device_caps_capability_id_6d681664_fk_backend_c FOREIGN KEY (capability_id) REFERENCES public.backend_capability(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_device_caps_device_id_582e64dc_fk_backend_device_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_device_caps
    ADD CONSTRAINT backend_device_caps_device_id_582e64dc_fk_backend_device_id FOREIGN KEY (device_id) REFERENCES public.backend_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_device_chans_channel_id_d5e05cbd_fk_backend_channel_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_device_chans
    ADD CONSTRAINT backend_device_chans_channel_id_d5e05cbd_fk_backend_channel_id FOREIGN KEY (channel_id) REFERENCES public.backend_channel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_device_chans_device_id_7eaeaa06_fk_backend_device_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_device_chans
    ADD CONSTRAINT backend_device_chans_device_id_7eaeaa06_fk_backend_device_id FOREIGN KEY (device_id) REFERENCES public.backend_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_device_owner_id_a248fd8b_fk_backend_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_device
    ADD CONSTRAINT backend_device_owner_id_a248fd8b_fk_backend_user_id FOREIGN KEY (owner_id) REFERENCES public.backend_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_durationpara_parameter_ptr_id_06b460c1_fk_backend_p; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_durationparam
    ADD CONSTRAINT backend_durationpara_parameter_ptr_id_06b460c1_fk_backend_p FOREIGN KEY (parameter_ptr_id) REFERENCES public.backend_parameter(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_esrule_action_id_722dc031_fk_backend_state_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_esrule
    ADD CONSTRAINT backend_esrule_action_id_722dc031_fk_backend_state_id FOREIGN KEY (action_id) REFERENCES public.backend_state(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_esrule_rule_ptr_id_f8f656ef_fk_backend_rule_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_esrule
    ADD CONSTRAINT backend_esrule_rule_ptr_id_f8f656ef_fk_backend_rule_id FOREIGN KEY (rule_ptr_id) REFERENCES public.backend_rule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_inputparam_parameter_ptr_id_7d2d6fe8_fk_backend_p; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_inputparam
    ADD CONSTRAINT backend_inputparam_parameter_ptr_id_7d2d6fe8_fk_backend_p FOREIGN KEY (parameter_ptr_id) REFERENCES public.backend_parameter(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_metaparam_parameter_ptr_id_56ce872d_fk_backend_p; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_metaparam
    ADD CONSTRAINT backend_metaparam_parameter_ptr_id_56ce872d_fk_backend_p FOREIGN KEY (parameter_ptr_id) REFERENCES public.backend_parameter(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_parameter_cap_id_b4de2acb_fk_backend_capability_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_parameter
    ADD CONSTRAINT backend_parameter_cap_id_b4de2acb_fk_backend_capability_id FOREIGN KEY (cap_id) REFERENCES public.backend_capability(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_parval_par_id_049e0be4_fk_backend_parameter_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_parval
    ADD CONSTRAINT backend_parval_par_id_049e0be4_fk_backend_parameter_id FOREIGN KEY (par_id) REFERENCES public.backend_parameter(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_parval_state_id_cde26674_fk_backend_state_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_parval
    ADD CONSTRAINT backend_parval_state_id_cde26674_fk_backend_state_id FOREIGN KEY (state_id) REFERENCES public.backend_state(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_rangeparam_parameter_ptr_id_9a607db7_fk_backend_p; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_rangeparam
    ADD CONSTRAINT backend_rangeparam_parameter_ptr_id_9a607db7_fk_backend_p FOREIGN KEY (parameter_ptr_id) REFERENCES public.backend_parameter(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_rule_owner_id_32585cc6_fk_backend_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_rule
    ADD CONSTRAINT backend_rule_owner_id_32585cc6_fk_backend_user_id FOREIGN KEY (owner_id) REFERENCES public.backend_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_safetyprop_owner_id_0b165fad_fk_backend_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_safetyprop
    ADD CONSTRAINT backend_safetyprop_owner_id_0b165fad_fk_backend_user_id FOREIGN KEY (owner_id) REFERENCES public.backend_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_setparam_parameter_ptr_id_18bfc60c_fk_backend_p; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_setparam
    ADD CONSTRAINT backend_setparam_parameter_ptr_id_18bfc60c_fk_backend_p FOREIGN KEY (parameter_ptr_id) REFERENCES public.backend_parameter(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_setparamopt_param_id_07e0f502_fk_backend_s; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_setparamopt
    ADD CONSTRAINT backend_setparamopt_param_id_07e0f502_fk_backend_s FOREIGN KEY (param_id) REFERENCES public.backend_setparam(parameter_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_sp1_safetyprop_ptr_id_d29a5f23_fk_backend_safetyprop_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_sp1
    ADD CONSTRAINT backend_sp1_safetyprop_ptr_id_d29a5f23_fk_backend_safetyprop_id FOREIGN KEY (safetyprop_ptr_id) REFERENCES public.backend_safetyprop(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_sp1_triggers_sp1_id_c4c1aca5_fk_backend_s; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_sp1_triggers
    ADD CONSTRAINT backend_sp1_triggers_sp1_id_c4c1aca5_fk_backend_s FOREIGN KEY (sp1_id) REFERENCES public.backend_sp1(safetyprop_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_sp1_triggers_trigger_id_83a751db_fk_backend_trigger_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_sp1_triggers
    ADD CONSTRAINT backend_sp1_triggers_trigger_id_83a751db_fk_backend_trigger_id FOREIGN KEY (trigger_id) REFERENCES public.backend_trigger(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_sp2_conds_sp2_id_1fb0191a_fk_backend_s; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_sp2_conds
    ADD CONSTRAINT backend_sp2_conds_sp2_id_1fb0191a_fk_backend_s FOREIGN KEY (sp2_id) REFERENCES public.backend_sp2(safetyprop_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_sp2_conds_trigger_id_b90c6fa9_fk_backend_trigger_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_sp2_conds
    ADD CONSTRAINT backend_sp2_conds_trigger_id_b90c6fa9_fk_backend_trigger_id FOREIGN KEY (trigger_id) REFERENCES public.backend_trigger(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_sp2_safetyprop_ptr_id_6057ecb9_fk_backend_safetyprop_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_sp2
    ADD CONSTRAINT backend_sp2_safetyprop_ptr_id_6057ecb9_fk_backend_safetyprop_id FOREIGN KEY (safetyprop_ptr_id) REFERENCES public.backend_safetyprop(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_sp2_state_id_01caf21d_fk_backend_trigger_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_sp2
    ADD CONSTRAINT backend_sp2_state_id_01caf21d_fk_backend_trigger_id FOREIGN KEY (state_id) REFERENCES public.backend_trigger(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_sp3_conds_sp3_id_f2c1fec5_fk_backend_s; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_sp3_conds
    ADD CONSTRAINT backend_sp3_conds_sp3_id_f2c1fec5_fk_backend_s FOREIGN KEY (sp3_id) REFERENCES public.backend_sp3(safetyprop_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_sp3_conds_trigger_id_4aa9489f_fk_backend_trigger_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_sp3_conds
    ADD CONSTRAINT backend_sp3_conds_trigger_id_4aa9489f_fk_backend_trigger_id FOREIGN KEY (trigger_id) REFERENCES public.backend_trigger(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_sp3_event_id_b133fd92_fk_backend_trigger_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_sp3
    ADD CONSTRAINT backend_sp3_event_id_b133fd92_fk_backend_trigger_id FOREIGN KEY (event_id) REFERENCES public.backend_trigger(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_sp3_safetyprop_ptr_id_ac7404ea_fk_backend_safetyprop_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_sp3
    ADD CONSTRAINT backend_sp3_safetyprop_ptr_id_ac7404ea_fk_backend_safetyprop_id FOREIGN KEY (safetyprop_ptr_id) REFERENCES public.backend_safetyprop(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_ssrule_action_id_6626b087_fk_backend_state_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_ssrule
    ADD CONSTRAINT backend_ssrule_action_id_6626b087_fk_backend_state_id FOREIGN KEY (action_id) REFERENCES public.backend_state(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_ssrule_rule_ptr_id_bb3cd0da_fk_backend_rule_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_ssrule
    ADD CONSTRAINT backend_ssrule_rule_ptr_id_bb3cd0da_fk_backend_rule_id FOREIGN KEY (rule_ptr_id) REFERENCES public.backend_rule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_state_cap_id_25727ebe_fk_backend_capability_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_state
    ADD CONSTRAINT backend_state_cap_id_25727ebe_fk_backend_capability_id FOREIGN KEY (cap_id) REFERENCES public.backend_capability(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_state_chan_id_b9d0a0d4_fk_backend_channel_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_state
    ADD CONSTRAINT backend_state_chan_id_b9d0a0d4_fk_backend_channel_id FOREIGN KEY (chan_id) REFERENCES public.backend_channel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_state_dev_id_a376fae0_fk_backend_device_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_state
    ADD CONSTRAINT backend_state_dev_id_a376fae0_fk_backend_device_id FOREIGN KEY (dev_id) REFERENCES public.backend_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_statelog_cap_id_a554767b_fk_backend_capability_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_statelog
    ADD CONSTRAINT backend_statelog_cap_id_a554767b_fk_backend_capability_id FOREIGN KEY (cap_id) REFERENCES public.backend_capability(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_statelog_dev_id_63f7e345_fk_backend_device_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_statelog
    ADD CONSTRAINT backend_statelog_dev_id_63f7e345_fk_backend_device_id FOREIGN KEY (dev_id) REFERENCES public.backend_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_statelog_param_id_ab9f8aa5_fk_backend_parameter_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_statelog
    ADD CONSTRAINT backend_statelog_param_id_ab9f8aa5_fk_backend_parameter_id FOREIGN KEY (param_id) REFERENCES public.backend_parameter(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_timeparam_parameter_ptr_id_fc36e993_fk_backend_p; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_timeparam
    ADD CONSTRAINT backend_timeparam_parameter_ptr_id_fc36e993_fk_backend_p FOREIGN KEY (parameter_ptr_id) REFERENCES public.backend_parameter(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_trigger_cap_id_c28ac690_fk_backend_capability_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_trigger
    ADD CONSTRAINT backend_trigger_cap_id_c28ac690_fk_backend_capability_id FOREIGN KEY (cap_id) REFERENCES public.backend_capability(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_trigger_chan_id_bbc8de39_fk_backend_channel_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_trigger
    ADD CONSTRAINT backend_trigger_chan_id_bbc8de39_fk_backend_channel_id FOREIGN KEY (chan_id) REFERENCES public.backend_channel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backend_trigger_dev_id_4a2e1853_fk_backend_device_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_trigger
    ADD CONSTRAINT backend_trigger_dev_id_4a2e1853_fk_backend_device_id FOREIGN KEY (dev_id) REFERENCES public.backend_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk; Type: FK CONSTRAINT; Schema: public; Owner: iftttuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

