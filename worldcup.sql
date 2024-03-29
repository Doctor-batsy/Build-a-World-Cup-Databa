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

INSERT INTO public.games VALUES (33, 2018, 'Final', 35, 25, 4, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 2, 10, 2, 0);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 25, 10, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 35, 2, 1, 0);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 25, 30, 3, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 10, 34, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 2, 8, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 35, 22, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 10, 18, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 34, 6, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 2, 12, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 8, 20, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 25, 26, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 30, 60, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 22, 64, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 35, 1, 4, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 45, 1, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 4, 8, 3, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 1, 4, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 45, 8, 7, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 4, 23, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 1, 2, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 8, 18, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 45, 35, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 8, 16, 2, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 18, 22, 2, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 35, 42, 2, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 45, 46, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 4, 20, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 23, 24, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 1, 6, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 2, 14, 2, 1);
INSERT INTO public.games VALUES (65, 2018, 'Final', 35, 25, 4, 2);
INSERT INTO public.games VALUES (66, 2018, 'Third Place', 2, 10, 2, 0);
INSERT INTO public.games VALUES (67, 2018, 'Semi-Final', 25, 10, 2, 1);
INSERT INTO public.games VALUES (68, 2018, 'Semi-Final', 35, 2, 1, 0);
INSERT INTO public.games VALUES (69, 2018, 'Quarter-Final', 25, 30, 3, 2);
INSERT INTO public.games VALUES (70, 2018, 'Quarter-Final', 10, 34, 2, 0);
INSERT INTO public.games VALUES (71, 2018, 'Quarter-Final', 2, 8, 2, 1);
INSERT INTO public.games VALUES (72, 2018, 'Quarter-Final', 35, 22, 2, 0);
INSERT INTO public.games VALUES (73, 2018, 'Eighth-Final', 10, 18, 2, 1);
INSERT INTO public.games VALUES (74, 2018, 'Eighth-Final', 34, 6, 1, 0);
INSERT INTO public.games VALUES (75, 2018, 'Eighth-Final', 2, 12, 3, 2);
INSERT INTO public.games VALUES (76, 2018, 'Eighth-Final', 8, 20, 2, 0);
INSERT INTO public.games VALUES (77, 2018, 'Eighth-Final', 25, 26, 2, 1);
INSERT INTO public.games VALUES (78, 2018, 'Eighth-Final', 30, 60, 2, 1);
INSERT INTO public.games VALUES (79, 2018, 'Eighth-Final', 22, 64, 2, 1);
INSERT INTO public.games VALUES (80, 2018, 'Eighth-Final', 35, 1, 4, 3);
INSERT INTO public.games VALUES (81, 2014, 'Final', 45, 1, 1, 0);
INSERT INTO public.games VALUES (82, 2014, 'Third Place', 4, 8, 3, 0);
INSERT INTO public.games VALUES (83, 2014, 'Semi-Final', 1, 4, 1, 0);
INSERT INTO public.games VALUES (84, 2014, 'Semi-Final', 45, 8, 7, 1);
INSERT INTO public.games VALUES (85, 2014, 'Quarter-Final', 4, 23, 1, 0);
INSERT INTO public.games VALUES (86, 2014, 'Quarter-Final', 1, 2, 1, 0);
INSERT INTO public.games VALUES (87, 2014, 'Quarter-Final', 8, 18, 2, 1);
INSERT INTO public.games VALUES (88, 2014, 'Quarter-Final', 45, 35, 1, 0);
INSERT INTO public.games VALUES (89, 2014, 'Eighth-Final', 8, 16, 2, 1);
INSERT INTO public.games VALUES (90, 2014, 'Eighth-Final', 18, 22, 2, 0);
INSERT INTO public.games VALUES (91, 2014, 'Eighth-Final', 35, 42, 2, 0);
INSERT INTO public.games VALUES (92, 2014, 'Eighth-Final', 45, 46, 2, 1);
INSERT INTO public.games VALUES (93, 2014, 'Eighth-Final', 4, 20, 2, 1);
INSERT INTO public.games VALUES (94, 2014, 'Eighth-Final', 23, 24, 2, 1);
INSERT INTO public.games VALUES (95, 2014, 'Eighth-Final', 1, 6, 1, 0);
INSERT INTO public.games VALUES (96, 2014, 'Eighth-Final', 2, 14, 2, 1);
INSERT INTO public.games VALUES (97, 2018, 'Final', 35, 25, 4, 2);
INSERT INTO public.games VALUES (98, 2018, 'Third Place', 2, 10, 2, 0);
INSERT INTO public.games VALUES (99, 2018, 'Semi-Final', 25, 10, 2, 1);
INSERT INTO public.games VALUES (100, 2018, 'Semi-Final', 35, 2, 1, 0);
INSERT INTO public.games VALUES (101, 2018, 'Quarter-Final', 25, 30, 3, 2);
INSERT INTO public.games VALUES (102, 2018, 'Quarter-Final', 10, 34, 2, 0);
INSERT INTO public.games VALUES (103, 2018, 'Quarter-Final', 2, 8, 2, 1);
INSERT INTO public.games VALUES (104, 2018, 'Quarter-Final', 35, 22, 2, 0);
INSERT INTO public.games VALUES (105, 2018, 'Eighth-Final', 10, 18, 2, 1);
INSERT INTO public.games VALUES (106, 2018, 'Eighth-Final', 34, 6, 1, 0);
INSERT INTO public.games VALUES (107, 2018, 'Eighth-Final', 2, 12, 3, 2);
INSERT INTO public.games VALUES (108, 2018, 'Eighth-Final', 8, 20, 2, 0);
INSERT INTO public.games VALUES (109, 2018, 'Eighth-Final', 25, 26, 2, 1);
INSERT INTO public.games VALUES (110, 2018, 'Eighth-Final', 30, 60, 2, 1);
INSERT INTO public.games VALUES (111, 2018, 'Eighth-Final', 22, 64, 2, 1);
INSERT INTO public.games VALUES (112, 2018, 'Eighth-Final', 35, 1, 4, 3);
INSERT INTO public.games VALUES (113, 2014, 'Final', 45, 1, 1, 0);
INSERT INTO public.games VALUES (114, 2014, 'Third Place', 4, 8, 3, 0);
INSERT INTO public.games VALUES (115, 2014, 'Semi-Final', 1, 4, 1, 0);
INSERT INTO public.games VALUES (116, 2014, 'Semi-Final', 45, 8, 7, 1);
INSERT INTO public.games VALUES (117, 2014, 'Quarter-Final', 4, 23, 1, 0);
INSERT INTO public.games VALUES (118, 2014, 'Quarter-Final', 1, 2, 1, 0);
INSERT INTO public.games VALUES (119, 2014, 'Quarter-Final', 8, 18, 2, 1);
INSERT INTO public.games VALUES (120, 2014, 'Quarter-Final', 45, 35, 1, 0);
INSERT INTO public.games VALUES (121, 2014, 'Eighth-Final', 8, 16, 2, 1);
INSERT INTO public.games VALUES (122, 2014, 'Eighth-Final', 18, 22, 2, 0);
INSERT INTO public.games VALUES (123, 2014, 'Eighth-Final', 35, 42, 2, 0);
INSERT INTO public.games VALUES (124, 2014, 'Eighth-Final', 45, 46, 2, 1);
INSERT INTO public.games VALUES (125, 2014, 'Eighth-Final', 4, 20, 2, 1);
INSERT INTO public.games VALUES (126, 2014, 'Eighth-Final', 23, 24, 2, 1);
INSERT INTO public.games VALUES (127, 2014, 'Eighth-Final', 1, 6, 1, 0);
INSERT INTO public.games VALUES (128, 2014, 'Eighth-Final', 2, 14, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1, 'Argentina');
INSERT INTO public.teams VALUES (2, 'Belgium');
INSERT INTO public.teams VALUES (4, 'Netherlands');
INSERT INTO public.teams VALUES (6, 'Switzerland');
INSERT INTO public.teams VALUES (8, 'Brazil');
INSERT INTO public.teams VALUES (10, 'England');
INSERT INTO public.teams VALUES (12, 'Japan');
INSERT INTO public.teams VALUES (14, 'United States');
INSERT INTO public.teams VALUES (16, 'Chile');
INSERT INTO public.teams VALUES (18, 'Colombia');
INSERT INTO public.teams VALUES (20, 'Mexico');
INSERT INTO public.teams VALUES (22, 'Uruguay');
INSERT INTO public.teams VALUES (23, 'Costa Rica');
INSERT INTO public.teams VALUES (24, 'Greece');
INSERT INTO public.teams VALUES (25, 'Croatia');
INSERT INTO public.teams VALUES (26, 'Denmark');
INSERT INTO public.teams VALUES (30, 'Russia');
INSERT INTO public.teams VALUES (34, 'Sweden');
INSERT INTO public.teams VALUES (35, 'France');
INSERT INTO public.teams VALUES (42, 'Nigeria');
INSERT INTO public.teams VALUES (45, 'Germany');
INSERT INTO public.teams VALUES (46, 'Algeria');
INSERT INTO public.teams VALUES (60, 'Spain');
INSERT INTO public.teams VALUES (64, 'Portugal');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 128, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 704, true);


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
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

