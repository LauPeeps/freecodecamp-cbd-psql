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
-- Name: compile; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.compile (
    name character varying(30) NOT NULL,
    rating integer NOT NULL,
    level integer NOT NULL,
    compile_id integer NOT NULL
);


ALTER TABLE public.compile OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    planet_types character varying(30),
    galaxy_type character varying(30),
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL
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
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    planet_types character varying(30),
    galaxy_type character varying(30),
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
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
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    planet_types character varying(30),
    galaxy_types character varying(30),
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
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
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    planet_types character varying(30),
    galaxy_type character varying(30),
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL
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
-- Data for Name: compile; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.compile VALUES ('HAHAHA', 1, 2, 1);
INSERT INTO public.compile VALUES ('Fuck', 1, 2, 2);
INSERT INTO public.compile VALUES ('SHIT', 1, 2, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('A milk', true, true, 1000, 5000, 'Formation', 'Milky', 1, 'Milky Way');
INSERT INTO public.galaxy VALUES ('Closest to Earth', true, true, 765, 999, 'None', 'Superior', 2, 'Andromeda');
INSERT INTO public.galaxy VALUES ('Scariest galaxy', true, true, 7165, 9199, 'None', 'Ancient', 3, 'Comet');
INSERT INTO public.galaxy VALUES ('x11x', true, false, 1, 2, 'na', 'na', 4, 'Starrasdassdasdy Nighst');
INSERT INTO public.galaxy VALUES ('x1sadsadsa1x', true, false, 1, 2, 'na', 'na', 6, 'Stadasdy Nighst');
INSERT INTO public.galaxy VALUES ('x1sadsa121dsa1x', true, false, 1, 2, 'na', 'na', 7, 'Stadasdydasd Nighst');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('There is no easy way', false, true, 5, 10, 'none', 'none so far', 'Moontanga', 1, 1);
INSERT INTO public.moon VALUES ('moonstar88 combination', false, false, 6, 9, 'solid', 'rough', 'moonstar2', 2, 2);
INSERT INTO public.moon VALUES ('moonstar88 combinatin', false, false, 6, 9, 'solid', 'rough', 'moonstar2', 4, 3);
INSERT INTO public.moon VALUES ('moonstar88 combidnatin', false, false, 6, 9, 'solid', 'rough', 'moonstar2', 5, 3);
INSERT INTO public.moon VALUES ('moonstar88 combiddsnatin', false, false, 6, 9, 'solid', 'rough', 'moonstar2', 6, 3);
INSERT INTO public.moon VALUES ('moonstar828 combiddsnatin', false, false, 6, 9, 'solid', 'rough', 'moonstar2', 7, 3);
INSERT INTO public.moon VALUES ('moonstar828 dascombiddsnatin', false, false, 6, 9, 'solid', 'rough', 'moonstar2', 8, 3);
INSERT INTO public.moon VALUES ('moonstar828 dascombidddsnatin', false, false, 6, 9, 'solid', 'rough', 'moonstar2', 9, 3);
INSERT INTO public.moon VALUES ('moonstar8d28 dascombidddsnatin', false, false, 6, 9, 'solid', 'rough', 'moonstar2', 10, 3);
INSERT INTO public.moon VALUES ('moonstar8d28 dascombiddsddsnatin', false, false, 6, 9, 'solid', 'rough', 'moonstar2', 11, 3);
INSERT INTO public.moon VALUES ('moonstar8d28 ddascombiddsddsnatin', false, false, 6, 9, 'solid', 'rough', 'moonstar2', 12, 3);
INSERT INTO public.moon VALUES ('moonstar8d28 dddascombiddsddsnatin', false, false, 6, 9, 'solid', 'rough', 'moonstar2', 13, 3);
INSERT INTO public.moon VALUES ('moonstar8d28 dddascombiddsdddsnatin', false, false, 6, 9, 'solid', 'rough', 'moonstar2', 14, 3);
INSERT INTO public.moon VALUES ('moonstar8d28 dddadscombiddsdddsnatin', false, false, 6, 9, 'solid', 'rough', 'moonstar2', 15, 3);
INSERT INTO public.moon VALUES ('moonstar8d28 dddadscdombiddsdddsnatin', false, false, 6, 9, 'solid', 'rough', 'moonstar2', 16, 3);
INSERT INTO public.moon VALUES ('moondstar8d28 dddadscdombiddsdddsnatin', false, false, 6, 9, 'solid', 'rough', 'moonstar2', 18, 3);
INSERT INTO public.moon VALUES ('moondstar8d28 dddadscddombiddsdddsnatin', false, false, 6, 9, 'solid', 'rough', 'moonstar2', 19, 3);
INSERT INTO public.moon VALUES ('moondstar8d28 dddadscddombiddsddddsnatin', false, false, 6, 9, 'solid', 'rough', 'moonstar2', 20, 3);
INSERT INTO public.moon VALUES ('moondstar8d28 dddadscddombidddsddddsnatin', false, false, 6, 9, 'solid', 'rough', 'moonstar2', 21, 3);
INSERT INTO public.moon VALUES ('moondstar8d28 dddadscddomdbidddsddddsnatin', false, false, 6, 9, 'solid', 'rough', 'moonstar2', 22, 3);
INSERT INTO public.moon VALUES ('moondstar8d28 dddadscddomdbiddddsddddsnatin', false, false, 6, 9, 'solid', 'rough', 'moonstar2', 23, 3);
INSERT INTO public.moon VALUES ('moondstar8d28 dddadscddomdbiddddsdddddsnatin', false, false, 6, 9, 'solid', 'rough', 'moonstar2', 24, 3);
INSERT INTO public.moon VALUES ('moondstar8d28 dddadscddomdbiddddsddddddsnatin', false, false, 6, 9, 'solid', 'rough', 'moonstar2', 25, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('There is no easy way', false, true, 5, 10, 'none', 'none so far', 1, 'Earth', 2);
INSERT INTO public.planet VALUES ('a', true, true, 1, 2, 'na', 'na', 2, 'Mercury', 3);
INSERT INTO public.planet VALUES ('aa', true, true, 1, 2, 'na', 'na', 3, 'Venus', 4);
INSERT INTO public.planet VALUES ('aaa', true, true, 1, 2, 'na', 'na', 4, 'Venus Raj', 7);
INSERT INTO public.planet VALUES ('aaaa', true, true, 1, 2, 'na', 'na', 5, 'Venus Raj', 9);
INSERT INTO public.planet VALUES ('aaaaa', true, true, 1, 2, 'na', 'na', 6, 'Venudss Raj', 10);
INSERT INTO public.planet VALUES ('aaaaaa', true, true, 1, 2, 'na', 'na', 7, 'Venudss Raj', 10);
INSERT INTO public.planet VALUES ('aaaadaa', true, true, 1, 2, 'na', 'na', 8, 'Venudddss Raj', 10);
INSERT INTO public.planet VALUES ('What a planet', true, false, 1, 2, 'none', 'near', 9, 'Jupiter', 9);
INSERT INTO public.planet VALUES ('What a plansdset', true, false, 1, 2, 'none', 'near', 10, 'Jupitesr', 9);
INSERT INTO public.planet VALUES ('What a plansddset', true, false, 1, 2, 'none', 'near', 11, 'Jupitessr', 9);
INSERT INTO public.planet VALUES ('What a plasnsddset', true, false, 1, 2, 'none', 'near', 12, 'Jupi2tessr', 7);
INSERT INTO public.planet VALUES ('What a plasnsddaaaset', true, false, 1, 2, 'none', 'near', 14, 'Jupi2tessr', 7);
INSERT INTO public.planet VALUES ('What a plasnsd12daaaset', true, false, 1, 2, 'none', 'near', 15, 'Jupi2tessr', 7);
INSERT INTO public.planet VALUES ('What a plasnsd12daaadset', true, false, 1, 2, 'none', 'near', 16, 'Jupi2tessr', 7);
INSERT INTO public.planet VALUES ('gggg', true, false, 1, 2, 'none', 'near', 17, 'Jupi2tessr', 7);
INSERT INTO public.planet VALUES ('ggggg', true, false, 1, 2, 'none', 'near', 18, 'Jupi2tessr', 7);
INSERT INTO public.planet VALUES ('gggggg', true, false, 1, 2, 'none', 'near', 19, 'Jupi2tessr', 7);
INSERT INTO public.planet VALUES ('ggggggg', true, false, 1, 2, 'none', 'near', 20, 'Jupi2tessr', 7);
INSERT INTO public.planet VALUES ('gggggggg', true, false, 1, 2, 'none', 'near', 21, 'Jupi2tessr', 7);
INSERT INTO public.planet VALUES ('ggggggggg', true, false, 1, 2, 'none', 'near', 22, 'Jupi2tessr', 7);
INSERT INTO public.planet VALUES ('gggggggggg', true, false, 1, 2, 'none', 'near', 23, 'Jupi2tessr', 7);
INSERT INTO public.planet VALUES ('ggggggggggg', true, false, 1, 2, 'none', 'near', 24, 'Jupi2tessr', 7);
INSERT INTO public.planet VALUES ('gggggggggggg', true, false, 1, 2, 'none', 'near', 25, 'Jupi2tessr', 7);
INSERT INTO public.planet VALUES ('ggggggggggggg', true, false, 1, 2, 'none', 'near', 26, 'Jupi2tessr', 7);
INSERT INTO public.planet VALUES ('gggggggggggggg', true, false, 1, 2, 'none', 'near', 27, 'Jupi2tessr', 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Part of Comet', true, false, 10, 20, 'no record', 'no type', 2, 'Sunkissed Lola', 3);
INSERT INTO public.star VALUES ('vv', true, false, 1, 2, 'na', 'na', 3, 'Starry Night', 2);
INSERT INTO public.star VALUES ('xx', true, false, 1, 2, 'na', 'na', 4, 'Starry Nighst', 1);
INSERT INTO public.star VALUES ('x222x', true, false, 1, 2, 'na', 'na', 7, 'dsadsdy dadshst', 4);
INSERT INTO public.star VALUES ('x22222x', true, false, 1, 2, 'na', 'na', 9, 'dsadsdy dadshst', 6);
INSERT INTO public.star VALUES ('x2222d2x', true, false, 1, 2, 'na', 'na', 10, 'dsadsdyd dadshst', 7);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 27, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: compile compile_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.compile
    ADD CONSTRAINT compile_pkey PRIMARY KEY (compile_id);


--
-- Name: galaxy description_unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT description_unique_galaxy UNIQUE (description);


--
-- Name: moon description_unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT description_unique_moon UNIQUE (description);


--
-- Name: planet description_unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT description_unique_planet UNIQUE (description);


--
-- Name: star description_unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT description_unique_star UNIQUE (description);


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
-- Name: compile name_is_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.compile
    ADD CONSTRAINT name_is_unique UNIQUE (name);


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
-- Name: moon moon_to_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_to_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star planet_to_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT planet_to_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet planet_to_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_to_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_to_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_to_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

