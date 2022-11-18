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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    radius_lightyrs integer,
    cluster text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_seq_id; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_seq_id
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_seq_id OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer,
    mass numeric(50,0),
    habitable boolean,
    moony_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_seq_id; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_seq_id
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_seq_id OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer,
    planet_type_id integer NOT NULL,
    habitable boolean,
    mass numeric(50,1)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_seq_id; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_seq_id
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_seq_id OWNER TO freecodecamp;

--
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    planet_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_seq_id; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_type_planet_type_seq_id
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_type_planet_type_seq_id OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer,
    description text,
    mass numeric(50,0)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_seq_id; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_seq_id
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_seq_id OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, 'Home.', NULL, NULL);
INSERT INTO public.galaxy VALUES ('Andromeda', 2, 'Next door neighbor. 2 million years away by light-speed way.', NULL, NULL);
INSERT INTO public.galaxy VALUES ('Eye of Sauron', 3, 'It is real, yes.', NULL, NULL);
INSERT INTO public.galaxy VALUES ('Pinnywheeeeeel', 4, 'Lurking within Ursa Major.', NULL, NULL);
INSERT INTO public.galaxy VALUES ('Sculptor', 5, 'AKA Silver Coin galaxy; within Sculptor constellation', NULL, NULL);
INSERT INTO public.galaxy VALUES ('Hoag object', 6, 'Named after one Art Hoag', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('THE moon', 1, 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Phobos', 2, 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Deimos', 3, 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Io', 4, 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Europa', 5, 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Ganymede', 6, 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Callisto', 7, 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Amalthea', 8, 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Himalia', 9, 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Elara', 10, 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Mimas', 11, 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Enceladus', 12, 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Tethys', 13, 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Dione', 14, 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Rhea', 15, 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Titan', 16, 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Hyperion', 17, 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Iapetus', 18, 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Ariel', 19, 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Umbriel', 20, 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Titania', 21, 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Oberon', 22, 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Miranda', 23, 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Triton', 24, 8, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 1, 1, 1, false, NULL);
INSERT INTO public.planet VALUES ('Venus', 2, 1, 1, false, NULL);
INSERT INTO public.planet VALUES ('Earth', 3, 1, 1, true, NULL);
INSERT INTO public.planet VALUES ('Mars', 4, 1, 1, false, NULL);
INSERT INTO public.planet VALUES ('Jupiter', 5, 1, 2, false, NULL);
INSERT INTO public.planet VALUES ('Saturn', 6, 1, 2, false, NULL);
INSERT INTO public.planet VALUES ('Uranus', 7, 1, 3, false, NULL);
INSERT INTO public.planet VALUES ('Neptune', 8, 1, 3, false, NULL);
INSERT INTO public.planet VALUES ('Gilese 504 b', 15, 5, 2, NULL, NULL);
INSERT INTO public.planet VALUES ('Pluto the Celestial Dwarf', 9, 1, 1, false, NULL);
INSERT INTO public.planet VALUES ('KOI-1843.03', 10, 7, 1, false, NULL);
INSERT INTO public.planet VALUES ('Kepler-974 b', 11, 7, 1, false, NULL);
INSERT INTO public.planet VALUES ('KOI-1843.02', 13, 7, 1, false, NULL);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES (1, 'terrestrial', 'Comprised of various compostions of rock, mineral and/or ore e.g. Earth');
INSERT INTO public.planet_type VALUES (2, 'gas giant', 'A big old friggin thing mainly comprised of unfathomable storm systems of convection currents of mostly hydrogen and helium');
INSERT INTO public.planet_type VALUES (3, 'icey giant', 'Big old friggin gaseous thing with all the cold ass substances found in asteroids and shit i.e. ammonia and methane');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sol', 1, 1, 'THE sun', 198850000000000000000000000);
INSERT INTO public.star VALUES ('Polaris', 6, 1, 'The NORTH MFing Star MFer!', NULL);
INSERT INTO public.star VALUES ('Veritate', 2, 2, NULL, NULL);
INSERT INTO public.star VALUES ('Gliese 96', 3, 2, NULL, NULL);
INSERT INTO public.star VALUES ('Hat-P-16', 4, 2, NULL, NULL);
INSERT INTO public.star VALUES ('59 Virginis', 5, 1, NULL, NULL);
INSERT INTO public.star VALUES ('KOI-1843', 7, 1, NULL, NULL);


--
-- Name: galaxy_galaxy_seq_id; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_seq_id', 1, false);


--
-- Name: moon_moon_seq_id; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_seq_id', 1, false);


--
-- Name: planet_planet_seq_id; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_seq_id', 1, false);


--
-- Name: planet_type_planet_type_seq_id; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_type_planet_type_seq_id', 1, false);


--
-- Name: star_star_seq_id; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_seq_id', 1, false);


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
-- Name: star name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_unique UNIQUE (name);


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
-- Name: planet_type planet_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_name_key UNIQUE (name);


--
-- Name: planet_type planet_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_pkey PRIMARY KEY (planet_type_id);


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
-- Name: planet planet_planet_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_type_id_fkey FOREIGN KEY (planet_type_id) REFERENCES public.planet_type(planet_type_id);


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

