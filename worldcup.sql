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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (163, 2018, 'Final', 483, 484, 4, 2);
INSERT INTO public.games VALUES (164, 2018, 'Third Place', 485, 486, 2, 0);
INSERT INTO public.games VALUES (165, 2018, 'Semi-Final', 484, 486, 2, 1);
INSERT INTO public.games VALUES (166, 2018, 'Semi-Final', 483, 485, 1, 0);
INSERT INTO public.games VALUES (167, 2018, 'Quarter-Final', 484, 487, 3, 2);
INSERT INTO public.games VALUES (168, 2018, 'Quarter-Final', 486, 488, 2, 0);
INSERT INTO public.games VALUES (169, 2018, 'Quarter-Final', 485, 489, 2, 1);
INSERT INTO public.games VALUES (170, 2018, 'Quarter-Final', 483, 490, 2, 0);
INSERT INTO public.games VALUES (171, 2018, 'Eighth-Final', 486, 491, 2, 1);
INSERT INTO public.games VALUES (172, 2018, 'Eighth-Final', 488, 492, 1, 0);
INSERT INTO public.games VALUES (173, 2018, 'Eighth-Final', 485, 493, 3, 2);
INSERT INTO public.games VALUES (174, 2018, 'Eighth-Final', 489, 494, 2, 0);
INSERT INTO public.games VALUES (175, 2018, 'Eighth-Final', 484, 495, 2, 1);
INSERT INTO public.games VALUES (176, 2018, 'Eighth-Final', 487, 496, 2, 1);
INSERT INTO public.games VALUES (177, 2018, 'Eighth-Final', 490, 497, 2, 1);
INSERT INTO public.games VALUES (178, 2018, 'Eighth-Final', 483, 498, 4, 3);
INSERT INTO public.games VALUES (179, 2014, 'Final', 499, 498, 1, 0);
INSERT INTO public.games VALUES (180, 2014, 'Third Place', 500, 489, 3, 0);
INSERT INTO public.games VALUES (181, 2014, 'Semi-Final', 498, 500, 1, 0);
INSERT INTO public.games VALUES (182, 2014, 'Semi-Final', 499, 489, 7, 1);
INSERT INTO public.games VALUES (183, 2014, 'Quarter-Final', 500, 501, 1, 0);
INSERT INTO public.games VALUES (184, 2014, 'Quarter-Final', 498, 485, 1, 0);
INSERT INTO public.games VALUES (185, 2014, 'Quarter-Final', 489, 491, 2, 1);
INSERT INTO public.games VALUES (186, 2014, 'Quarter-Final', 499, 483, 1, 0);
INSERT INTO public.games VALUES (187, 2014, 'Eighth-Final', 489, 502, 2, 1);
INSERT INTO public.games VALUES (188, 2014, 'Eighth-Final', 491, 490, 2, 0);
INSERT INTO public.games VALUES (189, 2014, 'Eighth-Final', 483, 503, 2, 0);
INSERT INTO public.games VALUES (190, 2014, 'Eighth-Final', 499, 504, 2, 1);
INSERT INTO public.games VALUES (191, 2014, 'Eighth-Final', 500, 494, 2, 1);
INSERT INTO public.games VALUES (192, 2014, 'Eighth-Final', 501, 505, 2, 1);
INSERT INTO public.games VALUES (193, 2014, 'Eighth-Final', 498, 492, 1, 0);
INSERT INTO public.games VALUES (194, 2014, 'Eighth-Final', 485, 506, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (483, 'France');
INSERT INTO public.teams VALUES (484, 'Croatia');
INSERT INTO public.teams VALUES (485, 'Belgium');
INSERT INTO public.teams VALUES (486, 'England');
INSERT INTO public.teams VALUES (487, 'Russia');
INSERT INTO public.teams VALUES (488, 'Sweden');
INSERT INTO public.teams VALUES (489, 'Brazil');
INSERT INTO public.teams VALUES (490, 'Uruguay');
INSERT INTO public.teams VALUES (491, 'Colombia');
INSERT INTO public.teams VALUES (492, 'Switzerland');
INSERT INTO public.teams VALUES (493, 'Japan');
INSERT INTO public.teams VALUES (494, 'Mexico');
INSERT INTO public.teams VALUES (495, 'Denmark');
INSERT INTO public.teams VALUES (496, 'Spain');
INSERT INTO public.teams VALUES (497, 'Portugal');
INSERT INTO public.teams VALUES (498, 'Argentina');
INSERT INTO public.teams VALUES (499, 'Germany');
INSERT INTO public.teams VALUES (500, 'Netherlands');
INSERT INTO public.teams VALUES (501, 'Costa Rica');
INSERT INTO public.teams VALUES (502, 'Chile');
INSERT INTO public.teams VALUES (503, 'Nigeria');
INSERT INTO public.teams VALUES (504, 'Algeria');
INSERT INTO public.teams VALUES (505, 'Greece');
INSERT INTO public.teams VALUES (506, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 194, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 506, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_teams; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_teams FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_teams_oponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_teams_oponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

