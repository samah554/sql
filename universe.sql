--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(20),
    distance integer NOT NULL,
    have_water boolean,
    new character varying(10)
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    distance integer NOT NULL,
    length numeric NOT NULL,
    kms_away integer
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
    name character varying(20),
    distance integer NOT NULL,
    have_water boolean,
    planet_id integer NOT NULL,
    new character varying(10)
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
    name character varying(20),
    distance integer NOT NULL,
    note text,
    star_id integer NOT NULL,
    new character varying(10)
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
    name character varying(20),
    distance integer NOT NULL,
    note text,
    galaxy_id integer NOT NULL,
    new character varying(10)
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
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_id_seq'::regclass);


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
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'abc', 1000, true, '5552');
INSERT INTO public.earth VALUES (4, 'abc', 100, true, '55');
INSERT INTO public.earth VALUES (6, 'abc', 10000, true, '555');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'abc', 100, 10000.1, 100000);
INSERT INTO public.galaxy VALUES (2, 'abc', 100, 10000.1, 10000);
INSERT INTO public.galaxy VALUES (3, 'abc', 100, 10000.1, 1000);
INSERT INTO public.galaxy VALUES (4, 'abc', 100, 10000.1, 100);
INSERT INTO public.galaxy VALUES (5, 'abc', 100, 10000.1, 1009);
INSERT INTO public.galaxy VALUES (6, 'abc', 100, 10000.1, 1099);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'abc', 1000, true, 1, '3390');
INSERT INTO public.moon VALUES (2, 'abc', 1000, true, 1, '33190');
INSERT INTO public.moon VALUES (5, 'abc', 1000, true, 3, '33490');
INSERT INTO public.moon VALUES (6, 'abc', 1000, true, 4, '3490');
INSERT INTO public.moon VALUES (7, 'abc', 1000, true, 4, '340');
INSERT INTO public.moon VALUES (8, 'abc', 1000, true, 5, '3140');
INSERT INTO public.moon VALUES (11, 'abc', 1000, true, 7, '23140');
INSERT INTO public.moon VALUES (12, 'abc', 1000, true, 7, '2740');
INSERT INTO public.moon VALUES (13, 'abc', 1000, true, 8, '24740');
INSERT INTO public.moon VALUES (14, 'abc', 1000, true, 9, '240');
INSERT INTO public.moon VALUES (15, 'abc', 1000, true, 10, '21140');
INSERT INTO public.moon VALUES (16, 'abc', 1000, true, 11, '140');
INSERT INTO public.moon VALUES (17, 'abc', 1000, true, 12, '12240');
INSERT INTO public.moon VALUES (18, 'abc', 1000, true, 13, '152240');
INSERT INTO public.moon VALUES (20, 'abc', 1000, true, 13, '2420');
INSERT INTO public.moon VALUES (21, 'abc', 1000, true, 11, '20');
INSERT INTO public.moon VALUES (22, 'abc', 1000, true, 10, '220');
INSERT INTO public.moon VALUES (23, 'abc', 1000, true, 9, '5220');
INSERT INTO public.moon VALUES (24, 'abc', 1000, true, 8, '52');
INSERT INTO public.moon VALUES (25, 'abc', 1000, true, 7, '5552');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'abc', 1000, 'New Cols', 1, '900000');
INSERT INTO public.planet VALUES (3, 'abc', 1000, 'New Cols', 1, '90000');
INSERT INTO public.planet VALUES (4, 'abc', 1000, 'New Cols', 2, '9000');
INSERT INTO public.planet VALUES (5, 'abc', 1000, 'New Cols', 2, '900');
INSERT INTO public.planet VALUES (6, 'abc', 1000, 'New Cols', 3, '9100');
INSERT INTO public.planet VALUES (7, 'abc', 1000, 'New Cols', 3, '910');
INSERT INTO public.planet VALUES (8, 'abc', 1000, 'New Cols', 4, '9910');
INSERT INTO public.planet VALUES (9, 'abc', 1000, 'New Cols', 4, '90');
INSERT INTO public.planet VALUES (10, 'abc', 1000, 'New Cols', 5, '390');
INSERT INTO public.planet VALUES (11, 'abc', 1000, 'New Cols', 5, '3930');
INSERT INTO public.planet VALUES (12, 'abc', 1000, 'New Cols', 6, '33930');
INSERT INTO public.planet VALUES (13, 'abc', 1000, 'New Cols', 6, '3390');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'abc', 1000, 'New Cols', 1, '100');
INSERT INTO public.star VALUES (2, 'abc', 1000, 'New Cols', 2, '1000');
INSERT INTO public.star VALUES (3, 'abc', 1000, 'New Cols', 3, '10000');
INSERT INTO public.star VALUES (4, 'abc', 1000, 'New Cols', 4, '100000');
INSERT INTO public.star VALUES (5, 'abc', 1000, 'New Cols', 5, '1000000');
INSERT INTO public.star VALUES (6, 'abc', 1000, 'New Cols', 6, '900000');


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: earth earth_distance_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_distance_key UNIQUE (distance);


--
-- Name: earth earth_new_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_new_key UNIQUE (new);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_kms_away_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_kms_away_key UNIQUE (kms_away);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_new_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_new_key UNIQUE (new);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_new_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_new_key UNIQUE (new);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_new_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_new_key UNIQUE (new);


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

