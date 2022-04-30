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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    g_varchar character varying(60),
    name character varying,
    g_int integer NOT NULL,
    g_int2 integer,
    g_numeric numeric(5,2),
    g_bool boolean,
    g_bool2 boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_g_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_g_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_g_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_g_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_g_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    m_varchar character varying(60),
    name character varying,
    m_int integer NOT NULL,
    m_int2 integer,
    m_numeric numeric(5,2),
    m_bool boolean,
    m_bool2 boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_m_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_m_id_seq OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_m_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    p_varchar character varying(60),
    name character varying,
    p_int integer NOT NULL,
    p_int2 integer,
    p_numeric numeric(5,2),
    p_bool boolean,
    p_bool2 boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_p_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_p_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_p_id_seq OWNER TO freecodecamp;

--
-- Name: planet_p_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_p_id_seq OWNED BY public.planet.planet_id;


--
-- Name: rest; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rest (
    rest_id integer NOT NULL,
    name character varying,
    rest_int integer NOT NULL,
    text text
);


ALTER TABLE public.rest OWNER TO freecodecamp;

--
-- Name: rest_rest_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.rest_rest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rest_rest_id_seq OWNER TO freecodecamp;

--
-- Name: rest_rest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.rest_rest_id_seq OWNED BY public.rest.rest_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    s_varchar character varying(60),
    name character varying,
    s_int integer,
    s_int2 integer,
    s_numeric numeric(5,2),
    s_bool boolean,
    s_bool2 boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_s_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_s_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_s_id_seq OWNER TO freecodecamp;

--
-- Name: star_s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_s_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_g_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_m_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_p_id_seq'::regclass);


--
-- Name: rest rest_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rest ALTER COLUMN rest_id SET DEFAULT nextval('public.rest_rest_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_s_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy 1', 'galaxy name 1', 3, 4, 8.07, true, false);
INSERT INTO public.galaxy VALUES (2, 'galaxy 2', 'galaxy name 2', 3, 4, 20.37, true, false);
INSERT INTO public.galaxy VALUES (3, 'galaxy 3', 'galaxy name 3', 3, 4, 21.30, true, false);
INSERT INTO public.galaxy VALUES (4, 'galaxy 4', 'galaxy name 4', 3, 4, 24.48, true, false);
INSERT INTO public.galaxy VALUES (5, 'galaxy 5', 'galaxy name 5', 3, 4, 5.03, true, false);
INSERT INTO public.galaxy VALUES (6, 'galaxy 6', 'galaxy name 6', 3, 4, 15.01, true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 'moon name', 3, 4, 0.63, true, false, 2);
INSERT INTO public.moon VALUES (2, 'moon', 'moon name', 3, 4, 16.37, true, false, 2);
INSERT INTO public.moon VALUES (3, 'moon', 'moon name', 3, 4, 10.22, true, false, 2);
INSERT INTO public.moon VALUES (4, 'moon', 'moon name', 3, 4, 10.29, true, false, 3);
INSERT INTO public.moon VALUES (5, 'moon', 'moon name', 3, 4, 23.42, true, false, 3);
INSERT INTO public.moon VALUES (6, 'moon', 'moon name', 3, 4, 20.38, true, false, 3);
INSERT INTO public.moon VALUES (7, 'moon', 'moon name', 3, 4, 10.00, true, false, 3);
INSERT INTO public.moon VALUES (8, 'moon', 'moon name', 3, 4, 9.96, true, false, 4);
INSERT INTO public.moon VALUES (9, 'moon', 'moon name', 3, 4, 29.19, true, false, 4);
INSERT INTO public.moon VALUES (10, 'moon', 'moon name', 3, 4, 8.81, true, false, 4);
INSERT INTO public.moon VALUES (11, 'moon', 'moon name', 3, 4, 15.73, true, false, 5);
INSERT INTO public.moon VALUES (12, 'moon', 'moon name', 3, 4, 0.01, true, false, 5);
INSERT INTO public.moon VALUES (13, 'moon', 'moon name', 3, 4, 23.15, true, false, 5);
INSERT INTO public.moon VALUES (14, 'moon', 'moon name', 3, 4, 29.60, true, false, 5);
INSERT INTO public.moon VALUES (15, 'moon', 'moon name', 3, 4, 20.80, true, false, 9);
INSERT INTO public.moon VALUES (16, 'moon', 'moon name', 3, 4, 1.60, true, false, 9);
INSERT INTO public.moon VALUES (17, 'moon', 'moon name', 3, 4, 29.03, true, false, 9);
INSERT INTO public.moon VALUES (18, 'moon', 'moon name', 3, 4, 25.63, true, false, 9);
INSERT INTO public.moon VALUES (19, 'moon', 'moon name', 3, 4, 21.94, true, false, 9);
INSERT INTO public.moon VALUES (20, 'moon', 'moon name', 3, 4, 23.83, true, false, 13);
INSERT INTO public.moon VALUES (21, 'moon', 'moon name', 3, 4, 23.34, true, false, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'planet 1', 'planet name 1', 3, 4, 27.37, true, false, 2);
INSERT INTO public.planet VALUES (3, 'planet 2', 'planet name 2', 3, 4, 1.75, true, false, 2);
INSERT INTO public.planet VALUES (4, 'planet 3', 'planet name 3', 3, 4, 15.93, true, false, 3);
INSERT INTO public.planet VALUES (5, 'planet 4', 'planet name 4', 3, 4, 28.88, true, false, 3);
INSERT INTO public.planet VALUES (6, 'planet 5', 'planet name 5', 3, 4, 5.90, true, false, 4);
INSERT INTO public.planet VALUES (7, 'planet 6', 'planet name 6', 3, 4, 19.74, true, false, 4);
INSERT INTO public.planet VALUES (8, 'planet 7', 'planet name 7', 3, 4, 17.82, true, false, 5);
INSERT INTO public.planet VALUES (9, 'planet 8', 'planet name 8', 3, 4, 0.23, true, false, 5);
INSERT INTO public.planet VALUES (10, 'planet 9', 'planet name 9', 3, 4, 12.85, true, false, 6);
INSERT INTO public.planet VALUES (11, 'planet 10', 'planet name 10', 3, 4, 20.52, true, false, 6);
INSERT INTO public.planet VALUES (12, 'planet 11', 'planet name 11', 3, 4, 4.88, true, false, 7);
INSERT INTO public.planet VALUES (13, 'planet 12', 'planet name 12', 3, 4, 25.58, true, false, 7);


--
-- Data for Name: rest; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rest VALUES (1, 'rest', 1, NULL);
INSERT INTO public.rest VALUES (2, 'rest', 2, NULL);
INSERT INTO public.rest VALUES (3, 'rest', 3, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'star 1', 'star name 1', 3, 4, 20.38, true, false, 1);
INSERT INTO public.star VALUES (3, 'star 2', 'star name 2', 3, 4, 10.10, true, false, 1);
INSERT INTO public.star VALUES (4, 'star 3', 'star name 3', 3, 4, 16.58, true, false, 2);
INSERT INTO public.star VALUES (5, 'star 4', 'star name 4', 3, 4, 25.22, true, false, 2);
INSERT INTO public.star VALUES (6, 'star 5', 'star name 5', 3, 4, 19.57, true, false, 3);
INSERT INTO public.star VALUES (7, 'star 6', 'star name 6', 3, 4, 29.05, true, false, 3);


--
-- Name: galaxy_g_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_g_id_seq', 6, true);


--
-- Name: moon_m_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_m_id_seq', 21, true);


--
-- Name: planet_p_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_p_id_seq', 13, true);


--
-- Name: rest_rest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.rest_rest_id_seq', 3, true);


--
-- Name: star_s_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_s_id_seq', 7, true);


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
-- Name: rest rest_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rest
    ADD CONSTRAINT rest_pkey PRIMARY KEY (rest_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uniq UNIQUE (g_numeric);


--
-- Name: planet uniq2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uniq2 UNIQUE (p_numeric);


--
-- Name: star uniq3; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uniq3 UNIQUE (s_numeric);


--
-- Name: moon uniq4; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uniq4 UNIQUE (m_numeric);


--
-- Name: rest uniqu66; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rest
    ADD CONSTRAINT uniqu66 UNIQUE (rest_int);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

