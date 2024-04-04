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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    size numeric,
    code character varying(4)
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
    name character varying(30) NOT NULL,
    age integer,
    size numeric,
    code character varying(4),
    planet_id integer
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
    name character varying(30) NOT NULL,
    age integer,
    size numeric,
    code character varying(4),
    livable boolean,
    star_id integer
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
    name character varying(30) NOT NULL,
    age integer,
    size numeric,
    code character varying(4),
    color text,
    alive boolean,
    galaxy_id integer
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
-- Name: system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.system (
    system_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    size numeric,
    code character varying(4)
);


ALTER TABLE public.system OWNER TO freecodecamp;

--
-- Name: system_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.system_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.system_system_id_seq OWNER TO freecodecamp;

--
-- Name: system_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.system_system_id_seq OWNED BY public.system.system_id;


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
-- Name: system system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.system ALTER COLUMN system_id SET DEFAULT nextval('public.system_system_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky', 13743, 6546, 'gf23');
INSERT INTO public.galaxy VALUES (2, 'Ways', 1643, 6566, 'jr11');
INSERT INTO public.galaxy VALUES (3, 'Lollo', 13, 66, 'jr99');
INSERT INTO public.galaxy VALUES (4, 'Pauolao', 1543, 776, 'jr19');
INSERT INTO public.galaxy VALUES (5, 'Pauolao', 1543, 776, 'jr19');
INSERT INTO public.galaxy VALUES (6, 'Pauolao', 1543, 776, 'jr19');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 345, 543, 'gf12', 1);
INSERT INTO public.moon VALUES (2, 'moon', 345, 543, 'gf12', 2);
INSERT INTO public.moon VALUES (3, 'moon', 345, 543, 'gf12', 3);
INSERT INTO public.moon VALUES (4, 'mfgfn', 345, 543, 'gf12', 1);
INSERT INTO public.moon VALUES (5, 'mfgfn', 345, 543, 'gf12', 1);
INSERT INTO public.moon VALUES (6, 'mfgfn', 345, 543, 'gf12', 1);
INSERT INTO public.moon VALUES (7, 'mfgfn', 345, 543, 'gf12', 1);
INSERT INTO public.moon VALUES (8, 'mfgfn', 345, 543, 'gf12', 1);
INSERT INTO public.moon VALUES (9, 'mfgfn', 345, 543, 'gf12', 1);
INSERT INTO public.moon VALUES (10, 'mfgfn', 345, 543, 'gf12', 1);
INSERT INTO public.moon VALUES (11, 'mfgfn', 345, 543, 'gf12', 1);
INSERT INTO public.moon VALUES (12, 'mfgfn', 345, 543, 'gf12', 1);
INSERT INTO public.moon VALUES (13, 'mfgfn', 345, 543, 'gf12', 1);
INSERT INTO public.moon VALUES (14, 'mfgfn', 345, 543, 'gf12', 1);
INSERT INTO public.moon VALUES (15, 'mfgfn', 345, 543, 'gf12', 1);
INSERT INTO public.moon VALUES (16, 'mfgfn', 345, 543, 'gf12', 1);
INSERT INTO public.moon VALUES (17, 'mfgfn', 345, 543, 'gf12', 1);
INSERT INTO public.moon VALUES (18, 'mfgfn', 345, 543, 'gf12', 1);
INSERT INTO public.moon VALUES (19, 'mfgfn', 345, 543, 'gf12', 1);
INSERT INTO public.moon VALUES (20, 'mfgfn', 345, 543, 'gf12', 1);
INSERT INTO public.moon VALUES (21, 'mfgfn', 345, 543, 'gf12', 1);
INSERT INTO public.moon VALUES (22, 'mfgfn', 345, 543, 'gf12', 1);
INSERT INTO public.moon VALUES (23, 'mfgfn', 345, 543, 'gf12', 1);
INSERT INTO public.moon VALUES (24, 'mfgfn', 345, 543, 'gf12', 1);
INSERT INTO public.moon VALUES (25, 'mfgfn', 345, 543, 'gf12', 1);
INSERT INTO public.moon VALUES (26, 'mfgfn', 345, 543, 'gf12', 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 3234525, 24544, 'fg43', true, 1);
INSERT INTO public.planet VALUES (2, 'veeegs', 3234525, 24544, 'fg43', true, 2);
INSERT INTO public.planet VALUES (3, 'veegfs', 3234525, 24544, 'fg43', true, 2);
INSERT INTO public.planet VALUES (4, 'veegfs', 3234525, 24544, 'fg43', true, 3);
INSERT INTO public.planet VALUES (5, 'veegfs', 3234525, 24544, 'fg43', true, 3);
INSERT INTO public.planet VALUES (6, 'vefsdgs', 32325, 24544, 'fg43', true, 4);
INSERT INTO public.planet VALUES (7, 'vefsdgs', 32325, 24544, 'fg43', true, 4);
INSERT INTO public.planet VALUES (8, 'vefsdgs', 32325, 24544, 'fg43', true, 4);
INSERT INTO public.planet VALUES (9, 'vefsdgs', 32325, 24544, 'fg43', true, 4);
INSERT INTO public.planet VALUES (10, 'vefsdgs', 32325, 24544, 'fg43', true, 4);
INSERT INTO public.planet VALUES (11, 'vefsdgs', 32325, 24544, 'fg43', true, 4);
INSERT INTO public.planet VALUES (12, 'vefsdgs', 32325, 24544, 'fg43', true, 4);
INSERT INTO public.planet VALUES (13, 'vefsdgs', 32325, 24544, 'fg43', true, 4);
INSERT INTO public.planet VALUES (14, 'vefsdgs', 32325, 24544, 'fg43', true, 4);
INSERT INTO public.planet VALUES (15, 'vefsdgs', 32325, 24544, 'fg43', true, 4);
INSERT INTO public.planet VALUES (16, 'vefsdgs', 32325, 24544, 'fg43', true, 4);
INSERT INTO public.planet VALUES (17, 'vefsdgs', 32325, 24544, 'fg43', true, 4);
INSERT INTO public.planet VALUES (18, 'vefsdgs', 32325, 24544, 'fg43', true, 4);
INSERT INTO public.planet VALUES (19, 'vefsdgs', 32325, 24544, 'fg43', true, 4);
INSERT INTO public.planet VALUES (20, 'vefsdgs', 32325, 24544, 'fg43', true, 4);
INSERT INTO public.planet VALUES (21, 'vefsdgs', 32325, 24544, 'fg43', true, 4);
INSERT INTO public.planet VALUES (22, 'vefsdgs', 32325, 24544, 'fg43', true, 4);
INSERT INTO public.planet VALUES (23, 'vefsdgs', 32325, 24544, 'fg43', true, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 12, 32, 'fr34', 'red', true, 1);
INSERT INTO public.star VALUES (2, 'sd', 12, 32, 'fr34', 'red', true, 1);
INSERT INTO public.star VALUES (3, 'sd', 12, 32, 'fr34', 'red', true, 1);
INSERT INTO public.star VALUES (4, 'sd', 12, 32, 'fr34', 'red', true, 1);
INSERT INTO public.star VALUES (5, 'sd', 12, 32, 'fr34', 'red', true, 1);
INSERT INTO public.star VALUES (6, 'sd', 12, 32, 'fr34', 'red', true, 1);
INSERT INTO public.star VALUES (7, 'sd', 12, 32, 'fr34', 'red', true, 1);


--
-- Data for Name: system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.system VALUES (1, 'solar', 343, 345, 'gf23');
INSERT INTO public.system VALUES (2, 'solar', 343, 345, 'gf23');
INSERT INTO public.system VALUES (3, 'solar', 343, 345, 'gf23');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 23, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: system_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.system_system_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: system system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.system
    ADD CONSTRAINT system_pkey PRIMARY KEY (system_id);


--
-- Name: galaxy u_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT u_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon u_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT u_moon_id UNIQUE (moon_id);


--
-- Name: planet u_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT u_planet_id UNIQUE (planet_id);


--
-- Name: star u_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT u_star_id UNIQUE (star_id);


--
-- Name: system u_system_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.system
    ADD CONSTRAINT u_system_id UNIQUE (system_id);


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

