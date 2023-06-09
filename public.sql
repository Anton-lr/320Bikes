--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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

--
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: baqme_1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.baqme_1 (
    station_id text NOT NULL,
    is_installed integer NOT NULL,
    is_renting integer NOT NULL,
    is_returning integer NOT NULL,
    vehicle_types_available character varying(73) NOT NULL,
    num_bikes_available integer NOT NULL,
    last_reported integer NOT NULL,
    name character varying(30) NOT NULL,
    geopunt character varying(19) NOT NULL,
    "time" character varying(25) NOT NULL,
    company character varying,
    lat double precision,
    lon double precision,
    vehicle_type character varying(30)
);


ALTER TABLE public.baqme_1 OWNER TO postgres;

--
-- Name: baqme_2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.baqme_2 (
    station_id text NOT NULL,
    name character varying(30) NOT NULL,
    is_virtual_station integer NOT NULL,
    capacity integer NOT NULL,
    lat double precision NOT NULL,
    lon double precision NOT NULL,
    geopunt character varying(19) NOT NULL,
    station_area character varying(1388),
    company character varying(30),
    vehicle_type character varying(30)
);


ALTER TABLE public.baqme_2 OWNER TO postgres;

--
-- Name: baqme_bikes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.baqme_bikes (
    bike_id text NOT NULL,
    lat double precision NOT NULL,
    lon double precision NOT NULL,
    is_reserved integer NOT NULL,
    is_disabled integer NOT NULL,
    vehicle_type_id character varying(36) NOT NULL,
    geopoint character varying(19) NOT NULL,
    company character varying(30),
    vehicle_type character varying(30)
);


ALTER TABLE public.baqme_bikes OWNER TO postgres;

--
-- Name: blue_1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blue_1 (
    last_seen character varying(25) NOT NULL,
    id text NOT NULL,
    name character varying(21) NOT NULL,
    bikes_in_use integer NOT NULL,
    bikes_available integer NOT NULL,
    longitude double precision NOT NULL,
    latitude double precision NOT NULL,
    geopoint character varying(19) NOT NULL,
    type integer NOT NULL,
    company character varying(30),
    vehicle_type character varying(30)
);


ALTER TABLE public.blue_1 OWNER TO postgres;

--
-- Name: blue_2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blue_2 (
    last_seen character varying(25) NOT NULL,
    id text NOT NULL,
    name character varying(50) NOT NULL,
    bikes_in_use integer NOT NULL,
    bikes_available integer NOT NULL,
    longitude double precision NOT NULL,
    latitude double precision NOT NULL,
    geopoint character varying(19) NOT NULL,
    type integer NOT NULL,
    company character varying(30),
    vehicle_type character varying(30)
);


ALTER TABLE public.blue_2 OWNER TO postgres;

--
-- Name: blue_3; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blue_3 (
    last_seen character varying(25) NOT NULL,
    id text NOT NULL,
    name character varying(50) NOT NULL,
    bikes_in_use integer NOT NULL,
    bikes_available integer NOT NULL,
    longitude double precision NOT NULL,
    latitude double precision NOT NULL,
    geopoint character varying(19) NOT NULL,
    type integer NOT NULL,
    company character varying(30),
    vehicle_type character varying(30)
);


ALTER TABLE public.blue_3 OWNER TO postgres;

--
-- Name: blue_4; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blue_4 (
    last_seen character varying(25) NOT NULL,
    id text NOT NULL,
    name character varying(21) NOT NULL,
    bikes_in_use integer NOT NULL,
    bikes_available integer NOT NULL,
    longitude double precision NOT NULL,
    latitude double precision NOT NULL,
    geopoint character varying(19) NOT NULL,
    type integer NOT NULL,
    company character varying(30),
    vehicle_type character varying(30)
);


ALTER TABLE public.blue_4 OWNER TO postgres;

--
-- Name: donkey_1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.donkey_1 (
    name character varying(45) NOT NULL,
    station_id text NOT NULL,
    geopunt character varying(21) NOT NULL,
    lat double precision NOT NULL,
    lon double precision NOT NULL,
    company character varying(30),
    vehicle_type character varying(30)
);


ALTER TABLE public.donkey_1 OWNER TO postgres;

--
-- Name: donkey_2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.donkey_2 (
    station_id text NOT NULL,
    num_bikes_available integer NOT NULL,
    num_docks_available integer NOT NULL,
    is_renting integer NOT NULL,
    is_installed integer NOT NULL,
    is_returning integer NOT NULL,
    last_reported integer NOT NULL,
    geopunt character varying(21),
    name character varying(45),
    company text,
    lat double precision,
    lon double precision,
    vehicle_type character varying(30)
);


ALTER TABLE public.donkey_2 OWNER TO postgres;

--
-- Name: dott_1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dott_1 (
    is_virtual_station integer NOT NULL,
    lat double precision NOT NULL,
    lon double precision NOT NULL,
    name character varying(72) NOT NULL,
    region_id character varying(36) NOT NULL,
    station_id text NOT NULL,
    vehicle_capacity character varying(40) NOT NULL,
    loc character varying(24) NOT NULL,
    company character varying(30),
    vehicle_type character varying(30)
);


ALTER TABLE public.dott_1 OWNER TO postgres;

--
-- Name: dott_bikes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dott_bikes (
    bike_id text NOT NULL,
    current_range_meters character varying(18) NOT NULL,
    is_disabled integer NOT NULL,
    is_reserved integer NOT NULL,
    last_reported integer NOT NULL,
    lat double precision NOT NULL,
    lon double precision NOT NULL,
    pricing_plan_id character varying(36) NOT NULL,
    rental_uris character varying(134) NOT NULL,
    vehicle_type_id character varying(12) NOT NULL,
    loc character varying(19) NOT NULL,
    "time" character varying(25) NOT NULL,
    company character varying(30),
    vehicle_type character varying(30)
);


ALTER TABLE public.dott_bikes OWNER TO postgres;

--
-- Name: baqme_1 baqme_1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baqme_1
    ADD CONSTRAINT baqme_1_pkey PRIMARY KEY (station_id);


--
-- Name: baqme_2 baqme_2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baqme_2
    ADD CONSTRAINT baqme_2_pkey PRIMARY KEY (station_id);


--
-- Name: baqme_bikes baqme_bikes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baqme_bikes
    ADD CONSTRAINT baqme_bikes_pkey PRIMARY KEY (bike_id);


--
-- Name: donkey_2 donkey2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.donkey_2
    ADD CONSTRAINT donkey2_pkey PRIMARY KEY (station_id);


--
-- Name: donkey_1 donkey_1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.donkey_1
    ADD CONSTRAINT donkey_1_pkey PRIMARY KEY (station_id);


--
-- Name: dott_1 dott_1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dott_1
    ADD CONSTRAINT dott_1_pkey PRIMARY KEY (station_id);


--
-- Name: dott_bikes dott_bikes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dott_bikes
    ADD CONSTRAINT dott_bikes_pkey PRIMARY KEY (bike_id);


--
-- Name: blue_1 pk_blue1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blue_1
    ADD CONSTRAINT pk_blue1 PRIMARY KEY (id);


--
-- Name: blue_2 pk_blue2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blue_2
    ADD CONSTRAINT pk_blue2 PRIMARY KEY (id);


--
-- Name: blue_3 pk_blue3; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blue_3
    ADD CONSTRAINT pk_blue3 PRIMARY KEY (id);


--
-- Name: blue_4 pk_blue4; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blue_4
    ADD CONSTRAINT pk_blue4 PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

