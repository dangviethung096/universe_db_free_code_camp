--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(50) NOT NULL,
    type integer,
    category integer,
    radius numeric,
    description text,
    cold boolean,
    solar_system boolean,
    size integer NOT NULL,
    square integer NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_moon_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_moon_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    type integer,
    category integer,
    radius numeric,
    description text,
    cold boolean,
    solar_system boolean,
    size integer NOT NULL,
    square integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    type integer,
    category integer,
    radius numeric,
    description text,
    cold boolean,
    solar_system boolean,
    planet_id integer,
    size integer NOT NULL,
    square integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    type integer,
    category integer,
    radius numeric,
    description text,
    cold boolean,
    solar_system boolean,
    star_id integer,
    size integer NOT NULL,
    square integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    type integer,
    category integer,
    radius numeric,
    description text,
    cold boolean,
    solar_system boolean,
    galaxy_id integer,
    size integer NOT NULL,
    square integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_moon_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'bl_01', 1, 1, 1000, 'black_hole_01', true, true, 1, 1);
INSERT INTO public.black_hole VALUES (2, 'bl_02', 2, 2, 2000, 'black_hole_02', true, true, 2, 2);
INSERT INTO public.black_hole VALUES (3, 'bl_03', 3, 3, 3000, 'black_hole_03', true, true, 3, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'g_01', 1, 1, 1000, 'galaxy_01', true, true, 1, 1);
INSERT INTO public.galaxy VALUES (2, 'g_02', 2, 2, 2000, 'galaxy_02', true, true, 2, 2);
INSERT INTO public.galaxy VALUES (3, 'g_03', 3, 3, 3000, 'galaxy_03', true, true, 3, 3);
INSERT INTO public.galaxy VALUES (4, 'g_04', 4, 4, 4000, 'galaxy_04', true, true, 4, 4);
INSERT INTO public.galaxy VALUES (5, 'g_05', 5, 5, 5000, 'galaxy_05', true, true, 5, 5);
INSERT INTO public.galaxy VALUES (6, 'g_06', 6, 6, 6000, 'galaxy_06', true, true, 6, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'm_01', 1, 1, 1000, 'moon_01', true, true, 1, 1, 1);
INSERT INTO public.moon VALUES (2, 'm_02', 2, 2, 2000, 'moon_02', true, true, 2, 2, 2);
INSERT INTO public.moon VALUES (3, 'm_03', 3, 3, 3000, 'moon_03', true, true, 3, 3, 3);
INSERT INTO public.moon VALUES (4, 'm_04', 4, 4, 4000, 'moon_04', true, true, 4, 4, 4);
INSERT INTO public.moon VALUES (5, 'm_05', 5, 5, 5000, 'moon_05', true, true, 5, 5, 5);
INSERT INTO public.moon VALUES (6, 'm_06', 6, 6, 6000, 'moon_06', true, true, 6, 6, 6);
INSERT INTO public.moon VALUES (7, 'm_07', 7, 7, 7000, 'moon_07', true, true, 7, 7, 7);
INSERT INTO public.moon VALUES (8, 'm_08', 8, 8, 8000, 'moon_08', true, true, 8, 8, 8);
INSERT INTO public.moon VALUES (9, 'm_09', 9, 9, 9000, 'moon_09', true, true, 9, 9, 9);
INSERT INTO public.moon VALUES (10, 'm_010', 10, 10, 10000, 'moon_010', true, true, 1, 10, 10);
INSERT INTO public.moon VALUES (11, 'm_011', 11, 11, 11000, 'moon_011', true, true, 2, 11, 11);
INSERT INTO public.moon VALUES (12, 'm_012', 12, 12, 12000, 'moon_012', true, true, 3, 12, 12);
INSERT INTO public.moon VALUES (13, 'm_013', 13, 13, 13000, 'moon_013', true, true, 4, 13, 13);
INSERT INTO public.moon VALUES (14, 'm_014', 14, 14, 14000, 'moon_014', true, true, 5, 14, 14);
INSERT INTO public.moon VALUES (15, 'm_015', 15, 15, 15000, 'moon_015', true, true, 6, 15, 15);
INSERT INTO public.moon VALUES (16, 'm_016', 16, 16, 16000, 'moon_016', true, true, 7, 16, 16);
INSERT INTO public.moon VALUES (17, 'm_017', 17, 17, 17000, 'moon_017', true, true, 8, 17, 17);
INSERT INTO public.moon VALUES (18, 'm_018', 18, 18, 18000, 'moon_018', true, true, 9, 18, 18);
INSERT INTO public.moon VALUES (19, 'm_019', 19, 19, 19000, 'moon_019', true, true, 10, 19, 19);
INSERT INTO public.moon VALUES (20, 'm_020', 20, 20, 20000, 'moon_020', true, true, 11, 20, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'p_01', 1, 1, 1000, 'planet_01', true, true, 1, 1, 1);
INSERT INTO public.planet VALUES (2, 'p_02', 2, 2, 2000, 'planet_02', true, true, 2, 2, 2);
INSERT INTO public.planet VALUES (3, 'p_03', 3, 3, 3000, 'planet_03', true, true, 3, 3, 3);
INSERT INTO public.planet VALUES (4, 'p_04', 4, 4, 4000, 'planet_04', true, true, 4, 4, 4);
INSERT INTO public.planet VALUES (5, 'p_05', 5, 5, 5000, 'planet_05', true, true, 5, 5, 5);
INSERT INTO public.planet VALUES (6, 'p_06', 6, 6, 6000, 'planet_06', true, true, 6, 6, 6);
INSERT INTO public.planet VALUES (7, 'p_07', 7, 7, 7000, 'planet_07', true, true, 1, 7, 7);
INSERT INTO public.planet VALUES (8, 'p_08', 8, 8, 8000, 'planet_08', true, true, 2, 8, 8);
INSERT INTO public.planet VALUES (9, 'p_09', 9, 9, 9000, 'planet_09', true, true, 3, 9, 9);
INSERT INTO public.planet VALUES (10, 'p_010', 10, 10, 10000, 'planet_010', true, true, 4, 10, 10);
INSERT INTO public.planet VALUES (11, 'p_011', 11, 11, 11000, 'planet_011', true, true, 5, 11, 11);
INSERT INTO public.planet VALUES (12, 'p_012', 12, 12, 12000, 'planet_012', true, true, 6, 12, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 's_01', 1, 1, 1000, 'star_01', true, true, 1, 1, 1);
INSERT INTO public.star VALUES (2, 's_02', 2, 2, 2000, 'star_02', true, true, 2, 2, 2);
INSERT INTO public.star VALUES (3, 's_03', 3, 3, 3000, 'star_03', true, true, 3, 3, 3);
INSERT INTO public.star VALUES (4, 's_04', 4, 4, 4000, 'star_04', true, true, 4, 4, 4);
INSERT INTO public.star VALUES (5, 's_05', 5, 5, 5000, 'star_05', true, true, 5, 5, 5);
INSERT INTO public.star VALUES (6, 's_06', 6, 6, 6000, 'star_06', true, true, 6, 6, 6);


--
-- Name: black_hole_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_moon_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

