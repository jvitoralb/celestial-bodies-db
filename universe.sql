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
    name character varying(30) NOT NULL,
    type character varying(20),
    age numeric,
    description text
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
    size numeric,
    distance_from_planet numeric,
    planet_id integer NOT NULL
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size numeric,
    number_of_moons integer,
    ring_system boolean DEFAULT false NOT NULL,
    star_id integer NOT NULL,
    global_magnetic_field boolean
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: planetary_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planetary_system (
    planetary_system_id integer NOT NULL,
    star_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(40)
);


ALTER TABLE public.planetary_system OWNER TO freecodecamp;

--
-- Name: planetary_system_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planetary_system_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planetary_system_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planetary_system_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planetary_system_planet_id_seq OWNED BY public.planetary_system.planet_id;


--
-- Name: planetary_system_planetary_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planetary_system_planetary_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planetary_system_planetary_system_id_seq OWNER TO freecodecamp;

--
-- Name: planetary_system_planetary_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planetary_system_planetary_system_id_seq OWNED BY public.planetary_system.planetary_system_id;


--
-- Name: planetary_system_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planetary_system_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planetary_system_star_id_seq OWNER TO freecodecamp;

--
-- Name: planetary_system_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planetary_system_star_id_seq OWNED BY public.planetary_system.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size_km numeric,
    number_of_planets integer,
    age numeric,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: planetary_system planetary_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_system ALTER COLUMN planetary_system_id SET DEFAULT nextval('public.planetary_system_planetary_system_id_seq'::regclass);


--
-- Name: planetary_system star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_system ALTER COLUMN star_id SET DEFAULT nextval('public.planetary_system_star_id_seq'::regclass);


--
-- Name: planetary_system planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_system ALTER COLUMN planet_id SET DEFAULT nextval('public.planetary_system_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'Barred Spiral', 10010000000, 'Andromeda is the closest big galaxy to the Milky Way
 and is expected to collide with the Milky Way around
 4.5 billion years from now. The two will eventually merge
 into a single new galaxy called Milkdromeda.');
INSERT INTO public.galaxy VALUES (3, 'Mayall''s Object', 'Peculiar', 12850000000, 'Also called VV 32 and Arp 148, this is a very peculiar
 looking object, and is likely to be not one galaxy, but two
 galaxies undergoing a collision. Event in images is a
 spindle shape and a ring shape.');
INSERT INTO public.galaxy VALUES (4, 'Hoag''s Object', 'Ring', 12750000000, 'It is of the subtype Hoag-type galaxy, and may in fact be
 a polar-ring galaxy with the ring in the plane of rotation of
 the central object.');
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'Barred Spiral', 13610000000, 'The galaxy containing the Sun and its Solar System, and
 therefore Earth.');
INSERT INTO public.galaxy VALUES (5, 'Condor Galaxy', 'Barred Spiral', 5003000000, 'The largest known spiral galaxy, it has a diameter of
 over 665,300 light-years (204.0 kiloparsecs). It is
 tidally disturbed by the smaller lenticular galaxy IC
 4970.');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 'Spiral', 400300000, 'From the whirlpool appearance this gravitationally
 disturbed galaxy exhibits.');
INSERT INTO public.galaxy VALUES (7, 'Triangulum Galaxy', 'Spiral', 500000, 'Named after its location within the Triangulum
 constellation.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3476, 384400, 3);
INSERT INTO public.moon VALUES (2, 'Deimos', 8, 23460, 4);
INSERT INTO public.moon VALUES (3, 'Phobos', 22, 9270, 4);
INSERT INTO public.moon VALUES (4, 'Callisto', 4800, 1883000, 5);
INSERT INTO public.moon VALUES (5, 'Carme', 30, 22600000, 5);
INSERT INTO public.moon VALUES (6, 'Carpo', 3, 17100000, 5);
INSERT INTO public.moon VALUES (7, 'Ganymede', 5276, 1070000, 5);
INSERT INTO public.moon VALUES (8, 'Io', 3629, 421600, 5);
INSERT INTO public.moon VALUES (9, 'Thebe', 100, 221900, 5);
INSERT INTO public.moon VALUES (10, 'Dione', 1120, 377400, 6);
INSERT INTO public.moon VALUES (11, 'Aegir', 6, 20735000, 6);
INSERT INTO public.moon VALUES (12, 'Iapetus', 1436, 3561300, 6);
INSERT INTO public.moon VALUES (13, 'Mimas', 398, 185520, 6);
INSERT INTO public.moon VALUES (14, 'Rhea', 1528, 527040, 6);
INSERT INTO public.moon VALUES (15, 'Cyllene', 2, 24000000, 5);
INSERT INTO public.moon VALUES (16, 'Europa', 3126, 670900, 5);
INSERT INTO public.moon VALUES (17, 'Ariel', 1160, 191240, 7);
INSERT INTO public.moon VALUES (18, 'Bianca', 42, 75260, 7);
INSERT INTO public.moon VALUES (19, 'Oberon', 1526, 582600, 7);
INSERT INTO public.moon VALUES (20, 'Ophelia', 30, 76420, 7);
INSERT INTO public.moon VALUES (21, 'Triton', 2705, 354800, 8);
INSERT INTO public.moon VALUES (22, 'Galatea', 140, 52500, 8);
INSERT INTO public.moon VALUES (23, 'Larissa', 200, 73600, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4879, 0, false, 3, true);
INSERT INTO public.planet VALUES (2, 'Venus', 12104, 0, false, 3, false);
INSERT INTO public.planet VALUES (3, 'Earth', 12756, 1, false, 3, true);
INSERT INTO public.planet VALUES (4, 'Mars', 6792, 2, false, 3, false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 142984, 92, true, 3, true);
INSERT INTO public.planet VALUES (6, 'Saturn', 120536, 83, true, 3, true);
INSERT INTO public.planet VALUES (7, 'Uranus', 51118, 27, true, 3, true);
INSERT INTO public.planet VALUES (8, 'Neptune', 49528, 14, true, 3, true);
INSERT INTO public.planet VALUES (11, 'Kepler-42 c', 9301, NULL, false, 7, NULL);
INSERT INTO public.planet VALUES (12, 'Kepler-42 b', 9938, NULL, false, 7, NULL);
INSERT INTO public.planet VALUES (13, 'Kepler-42 d', 9938, NULL, false, 7, NULL);
INSERT INTO public.planet VALUES (14, 'K2-141 b', 19240, NULL, false, 8, NULL);
INSERT INTO public.planet VALUES (15, 'K2-141 c', 87248, NULL, false, 8, NULL);


--
-- Data for Name: planetary_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planetary_system VALUES (4, 3, 1, 'Solar System');
INSERT INTO public.planetary_system VALUES (5, 3, 2, 'Solar System');
INSERT INTO public.planetary_system VALUES (6, 3, 3, 'Solar System');
INSERT INTO public.planetary_system VALUES (7, 3, 4, 'Solar System');
INSERT INTO public.planetary_system VALUES (8, 3, 5, 'Solar System');
INSERT INTO public.planetary_system VALUES (9, 3, 6, 'Solar System');
INSERT INTO public.planetary_system VALUES (10, 3, 7, 'Solar System');
INSERT INTO public.planetary_system VALUES (11, 3, 8, 'Solar System');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 2400000, NULL, 230000000, 2);
INSERT INTO public.star VALUES (2, 'Canopus', 98789000, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'Sun', 1400000, 8, 4500000000, 2);
INSERT INTO public.star VALUES (4, 'Alpheratz', 3760236, NULL, 60000000, 1);
INSERT INTO public.star VALUES (5, 'Mirach', 69570000, NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'Almach', 111312000, NULL, 6500000, 1);
INSERT INTO public.star VALUES (7, 'Kepler-42', 236572, 3, NULL, 2);
INSERT INTO public.star VALUES (8, 'K2-141', 948415, 2, NULL, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: planetary_system_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planetary_system_planet_id_seq', 1, false);


--
-- Name: planetary_system_planetary_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planetary_system_planetary_system_id_seq', 11, true);


--
-- Name: planetary_system_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planetary_system_star_id_seq', 1, false);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy galaxy_name_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planetary_system planetary_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_system
    ADD CONSTRAINT planetary_system_pkey PRIMARY KEY (planetary_system_id);


--
-- Name: planetary_system planetary_system_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_system
    ADD CONSTRAINT planetary_system_unique_key UNIQUE (planetary_system_id);


--
-- Name: star star_name_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique_key UNIQUE (name);


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
-- Name: planetary_system planetary_system_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_system
    ADD CONSTRAINT planetary_system_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planetary_system planetary_system_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_system
    ADD CONSTRAINT planetary_system_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

