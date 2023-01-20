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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: game; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.game (
    username character varying(22) NOT NULL,
    games_played integer,
    best_game integer
);


ALTER TABLE public.game OWNER TO freecodecamp;

--
-- Data for Name: game; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.game VALUES ('user_1674232343608', NULL, NULL);
INSERT INTO public.game VALUES ('user_1674232343607', NULL, NULL);
INSERT INTO public.game VALUES ('user_1674232565507', NULL, NULL);
INSERT INTO public.game VALUES ('user_1674232565506', NULL, NULL);
INSERT INTO public.game VALUES ('Ben', NULL, NULL);
INSERT INTO public.game VALUES ('jim', NULL, NULL);
INSERT INTO public.game VALUES ('ted', NULL, NULL);
INSERT INTO public.game VALUES ('user_1674234150714', NULL, NULL);
INSERT INTO public.game VALUES ('user_1674234150713', NULL, NULL);
INSERT INTO public.game VALUES ('yo', NULL, NULL);
INSERT INTO public.game VALUES ('tod', NULL, NULL);
INSERT INTO public.game VALUES ('tin', NULL, NULL);
INSERT INTO public.game VALUES ('u', NULL, NULL);
INSERT INTO public.game VALUES ('user_1674234648192', NULL, NULL);
INSERT INTO public.game VALUES ('user_1674234648191', NULL, NULL);
INSERT INTO public.game VALUES ('user_1674235984301', NULL, NULL);
INSERT INTO public.game VALUES ('user_1674235984300', NULL, NULL);
INSERT INTO public.game VALUES ('jen', NULL, NULL);
INSERT INTO public.game VALUES ('ben', NULL, NULL);
INSERT INTO public.game VALUES ('user_1674236290588', NULL, NULL);
INSERT INTO public.game VALUES ('user_1674236290587', NULL, NULL);
INSERT INTO public.game VALUES ('tooo', NULL, NULL);
INSERT INTO public.game VALUES ('mike', 1, NULL);
INSERT INTO public.game VALUES ('user_1674237638069', 1, NULL);
INSERT INTO public.game VALUES ('user_1674237638070', 1, NULL);
INSERT INTO public.game VALUES ('tfjfjlks', NULL, NULL);
INSERT INTO public.game VALUES ('user_1674237956012', 1, NULL);
INSERT INTO public.game VALUES ('user_1674237956013', 1, NULL);
INSERT INTO public.game VALUES ('user_1674238008725', 1, NULL);
INSERT INTO public.game VALUES ('user_1674238008726', 1, NULL);
INSERT INTO public.game VALUES ('user_1674238108398', 1, NULL);
INSERT INTO public.game VALUES ('user_1674238108399', 1, NULL);
INSERT INTO public.game VALUES ('user_1674238196014', 1, 536);
INSERT INTO public.game VALUES ('user_1674238196015', 1, 1000);
INSERT INTO public.game VALUES ('user_1674238285221', 1, 321);
INSERT INTO public.game VALUES ('user_1674238285222', 1, 137);


--
-- Name: game game_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game
    ADD CONSTRAINT game_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

