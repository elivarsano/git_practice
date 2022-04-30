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
    name character varying(20) NOT NULL,
    size_in_ly numeric,
    shape character varying(20),
    no_of_stars character varying(30),
    galaxy_id integer NOT NULL,
    group_id integer
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
-- Name: galaxy_group; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_group (
    galaxy_group_id integer NOT NULL,
    name character varying(30) NOT NULL,
    total_diameter_megapar integer NOT NULL
);


ALTER TABLE public.galaxy_group OWNER TO freecodecamp;

--
-- Name: galaxy_group_group_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_group_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_group_group_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_group_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_group_group_id_seq OWNED BY public.galaxy_group.galaxy_group_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(20) NOT NULL,
    moon_id integer NOT NULL,
    has_life boolean,
    planet_id integer NOT NULL,
    columnhas_atmosphere character varying(20)
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
    name character varying(20) NOT NULL,
    planet_id integer NOT NULL,
    has_life boolean,
    star_id integer NOT NULL,
    composition text,
    dwarf boolean
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
    name character varying(20) NOT NULL,
    star_id integer NOT NULL,
    type character varying(15),
    galaxy_id integer NOT NULL,
    color character varying(20)
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_group galaxy_group_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_group ALTER COLUMN galaxy_group_id SET DEFAULT nextval('public.galaxy_group_group_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Centaurus A', 60000, 'Spiral', NULL, 3, NULL);
INSERT INTO public.galaxy VALUES ('Messier 81', 90000, 'Spiral', NULL, 4, NULL);
INSERT INTO public.galaxy VALUES ('NGC 4163', 4000, 'Spiral', NULL, 5, NULL);
INSERT INTO public.galaxy VALUES ('Maffei 1', 55000, 'Spiral', NULL, 6, NULL);
INSERT INTO public.galaxy VALUES ('Andromeda', 220000, 'Barred spiral', '1 trillion~', 2, NULL);
INSERT INTO public.galaxy VALUES ('Milky Way', 180000, 'Oval', '100-400 billion', 1, NULL);


--
-- Data for Name: galaxy_group; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_group VALUES (2, 'Local Group', 3);
INSERT INTO public.galaxy_group VALUES (3, 'Centaurus A/M83 Group', 5);
INSERT INTO public.galaxy_group VALUES (4, 'M81 Group', 4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 1, NULL, 1, NULL);
INSERT INTO public.moon VALUES ('Charon', 2, NULL, 10, NULL);
INSERT INTO public.moon VALUES ('Styx', 3, NULL, 10, NULL);
INSERT INTO public.moon VALUES ('Triton', 4, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Sao', 5, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Neso', 6, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Nereid', 7, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Ariel', 8, NULL, 8, NULL);
INSERT INTO public.moon VALUES ('Miranda', 9, NULL, 8, NULL);
INSERT INTO public.moon VALUES ('Umbriel', 10, NULL, 8, NULL);
INSERT INTO public.moon VALUES ('Oberon', 11, NULL, 8, NULL);
INSERT INTO public.moon VALUES ('Titania', 12, NULL, 8, NULL);
INSERT INTO public.moon VALUES ('Mimas', 13, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Enceladus', 14, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Tethys', 15, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Dione', 16, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Rhea', 17, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Titan', 18, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Iapetus', 19, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Io', 20, NULL, 5, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 2, false, 1, NULL, false);
INSERT INTO public.planet VALUES ('Venus', 3, false, 1, NULL, false);
INSERT INTO public.planet VALUES ('Mars', 4, false, 1, NULL, false);
INSERT INTO public.planet VALUES ('Jupiter', 5, false, 1, NULL, false);
INSERT INTO public.planet VALUES ('Saturn', 6, false, 1, NULL, false);
INSERT INTO public.planet VALUES ('Neptune', 7, false, 1, NULL, false);
INSERT INTO public.planet VALUES ('Uranus', 8, false, 1, NULL, false);
INSERT INTO public.planet VALUES ('Earth', 1, true, 1, NULL, false);
INSERT INTO public.planet VALUES ('Pluto', 10, false, 1, NULL, true);
INSERT INTO public.planet VALUES ('Eres', 11, false, 1, NULL, true);
INSERT INTO public.planet VALUES ('Makemake', 12, false, 1, NULL, true);
INSERT INTO public.planet VALUES ('Haumea', 13, false, 1, NULL, true);
INSERT INTO public.planet VALUES ('Ceres', 14, false, 1, NULL, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('The Sun', 1, 'G-type', 1, NULL);
INSERT INTO public.star VALUES ('Betelgeuse', 2, 'M1-M2 la-ab', 1, NULL);
INSERT INTO public.star VALUES ('Vega', 3, 'A0Va', 1, NULL);
INSERT INTO public.star VALUES ('Sirius', 4, 'A0mA1 Va', 1, NULL);
INSERT INTO public.star VALUES ('Arcturus', 5, 'K1.5 III Fe-0.5', 1, NULL);
INSERT INTO public.star VALUES ('Rigel', 6, 'B8 la', 1, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: galaxy_group_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_group_group_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy_group galaxy_group_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_group
    ADD CONSTRAINT galaxy_group_name UNIQUE (name);


--
-- Name: galaxy_group galaxy_group_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_group
    ADD CONSTRAINT galaxy_group_pkey PRIMARY KEY (galaxy_group_id);


--
-- Name: galaxy galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

