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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    tries integer NOT NULL,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 10, 1);
INSERT INTO public.games VALUES (2, 1, 4);
INSERT INTO public.games VALUES (3, 167, 4);
INSERT INTO public.games VALUES (4, 258, 5);
INSERT INTO public.games VALUES (5, 636, 5);
INSERT INTO public.games VALUES (6, 101, 4);
INSERT INTO public.games VALUES (7, 282, 4);
INSERT INTO public.games VALUES (8, 513, 4);
INSERT INTO public.games VALUES (9, 1, 6);
INSERT INTO public.games VALUES (10, 811, 6);
INSERT INTO public.games VALUES (11, 32, 7);
INSERT INTO public.games VALUES (12, 800, 7);
INSERT INTO public.games VALUES (13, 525, 6);
INSERT INTO public.games VALUES (14, 158, 6);
INSERT INTO public.games VALUES (15, 731, 6);
INSERT INTO public.games VALUES (16, 1, 8);
INSERT INTO public.games VALUES (17, 312, 8);
INSERT INTO public.games VALUES (18, 822, 8);
INSERT INTO public.games VALUES (19, 708, 8);
INSERT INTO public.games VALUES (20, 264, 8);
INSERT INTO public.games VALUES (21, 503, 8);
INSERT INTO public.games VALUES (22, 980, 8);
INSERT INTO public.games VALUES (23, 1, 9);
INSERT INTO public.games VALUES (24, 58, 9);
INSERT INTO public.games VALUES (25, 560, 10);
INSERT INTO public.games VALUES (26, 73, 10);
INSERT INTO public.games VALUES (27, 10, 9);
INSERT INTO public.games VALUES (28, 433, 9);
INSERT INTO public.games VALUES (29, 282, 9);
INSERT INTO public.games VALUES (30, 861, 11);
INSERT INTO public.games VALUES (31, 144, 11);
INSERT INTO public.games VALUES (32, 380, 12);
INSERT INTO public.games VALUES (33, 911, 12);
INSERT INTO public.games VALUES (34, 607, 11);
INSERT INTO public.games VALUES (35, 247, 11);
INSERT INTO public.games VALUES (36, 33, 11);
INSERT INTO public.games VALUES (37, 25, 13);
INSERT INTO public.games VALUES (38, 680, 13);
INSERT INTO public.games VALUES (39, 533, 14);
INSERT INTO public.games VALUES (40, 357, 14);
INSERT INTO public.games VALUES (41, 127, 13);
INSERT INTO public.games VALUES (42, 6, 13);
INSERT INTO public.games VALUES (43, 3, 13);
INSERT INTO public.games VALUES (44, 1, 15);
INSERT INTO public.games VALUES (45, 735, 15);
INSERT INTO public.games VALUES (46, 339, 16);
INSERT INTO public.games VALUES (47, 7, 16);
INSERT INTO public.games VALUES (48, 670, 15);
INSERT INTO public.games VALUES (49, 944, 15);
INSERT INTO public.games VALUES (50, 292, 15);
INSERT INTO public.games VALUES (51, 146, 17);
INSERT INTO public.games VALUES (52, 65, 18);
INSERT INTO public.games VALUES (53, 540, 17);
INSERT INTO public.games VALUES (54, 107, 17);
INSERT INTO public.games VALUES (55, 697, 17);
INSERT INTO public.games VALUES (56, 1, 19);
INSERT INTO public.games VALUES (57, 103, 19);
INSERT INTO public.games VALUES (58, 763, 20);
INSERT INTO public.games VALUES (59, 828, 20);
INSERT INTO public.games VALUES (60, 358, 19);
INSERT INTO public.games VALUES (61, 77, 19);
INSERT INTO public.games VALUES (62, 256, 19);
INSERT INTO public.games VALUES (63, 1, 21);
INSERT INTO public.games VALUES (64, 567, 21);
INSERT INTO public.games VALUES (65, 1, 22);
INSERT INTO public.games VALUES (66, 548, 22);
INSERT INTO public.games VALUES (67, 304, 21);
INSERT INTO public.games VALUES (68, 735, 21);
INSERT INTO public.games VALUES (69, 826, 21);
INSERT INTO public.games VALUES (70, 1, 24);
INSERT INTO public.games VALUES (71, 41, 24);
INSERT INTO public.games VALUES (72, 45, 25);
INSERT INTO public.games VALUES (73, 570, 25);
INSERT INTO public.games VALUES (74, 817, 24);
INSERT INTO public.games VALUES (75, 350, 24);
INSERT INTO public.games VALUES (76, 845, 24);
INSERT INTO public.games VALUES (77, 8, 23);
INSERT INTO public.games VALUES (78, 1, 26);
INSERT INTO public.games VALUES (79, 947, 26);
INSERT INTO public.games VALUES (80, 165, 27);
INSERT INTO public.games VALUES (81, 12, 27);
INSERT INTO public.games VALUES (82, 944, 26);
INSERT INTO public.games VALUES (83, 97, 26);
INSERT INTO public.games VALUES (84, 710, 26);
INSERT INTO public.games VALUES (85, 236, 28);
INSERT INTO public.games VALUES (86, 958, 28);
INSERT INTO public.games VALUES (87, 658, 29);
INSERT INTO public.games VALUES (88, 363, 29);
INSERT INTO public.games VALUES (89, 693, 28);
INSERT INTO public.games VALUES (90, 38, 28);
INSERT INTO public.games VALUES (91, 845, 28);
INSERT INTO public.games VALUES (92, 593, 30);
INSERT INTO public.games VALUES (93, 256, 30);
INSERT INTO public.games VALUES (94, 651, 31);
INSERT INTO public.games VALUES (95, 826, 31);
INSERT INTO public.games VALUES (96, 710, 30);
INSERT INTO public.games VALUES (97, 651, 30);
INSERT INTO public.games VALUES (98, 634, 30);
INSERT INTO public.games VALUES (99, 1, 32);
INSERT INTO public.games VALUES (100, 402, 32);
INSERT INTO public.games VALUES (101, 380, 33);
INSERT INTO public.games VALUES (102, 739, 33);
INSERT INTO public.games VALUES (103, 329, 32);
INSERT INTO public.games VALUES (104, 390, 32);
INSERT INTO public.games VALUES (105, 779, 32);
INSERT INTO public.games VALUES (106, 1, 34);
INSERT INTO public.games VALUES (107, 730, 34);
INSERT INTO public.games VALUES (108, 1, 35);
INSERT INTO public.games VALUES (109, 924, 35);
INSERT INTO public.games VALUES (110, 276, 34);
INSERT INTO public.games VALUES (111, 997, 34);
INSERT INTO public.games VALUES (112, 561, 34);
INSERT INTO public.games VALUES (113, 1, 36);
INSERT INTO public.games VALUES (114, 486, 36);
INSERT INTO public.games VALUES (115, 246, 37);
INSERT INTO public.games VALUES (116, 72, 37);
INSERT INTO public.games VALUES (117, 501, 36);
INSERT INTO public.games VALUES (118, 446, 36);
INSERT INTO public.games VALUES (119, 410, 36);
INSERT INTO public.games VALUES (120, 11, 1);
INSERT INTO public.games VALUES (121, 738, 38);
INSERT INTO public.games VALUES (122, 504, 38);
INSERT INTO public.games VALUES (123, 480, 39);
INSERT INTO public.games VALUES (124, 767, 39);
INSERT INTO public.games VALUES (125, 743, 38);
INSERT INTO public.games VALUES (126, 770, 38);
INSERT INTO public.games VALUES (127, 717, 38);
INSERT INTO public.games VALUES (128, 819, 40);
INSERT INTO public.games VALUES (129, 793, 40);
INSERT INTO public.games VALUES (130, 303, 41);
INSERT INTO public.games VALUES (131, 385, 41);
INSERT INTO public.games VALUES (132, 599, 40);
INSERT INTO public.games VALUES (133, 737, 40);
INSERT INTO public.games VALUES (134, 528, 40);
INSERT INTO public.games VALUES (135, 1, 42);
INSERT INTO public.games VALUES (136, 380, 42);
INSERT INTO public.games VALUES (137, 1, 43);
INSERT INTO public.games VALUES (138, 689, 43);
INSERT INTO public.games VALUES (139, 551, 42);
INSERT INTO public.games VALUES (140, 184, 42);
INSERT INTO public.games VALUES (141, 300, 42);
INSERT INTO public.games VALUES (142, 398, 44);
INSERT INTO public.games VALUES (143, 885, 44);
INSERT INTO public.games VALUES (144, 75, 45);
INSERT INTO public.games VALUES (145, 884, 45);
INSERT INTO public.games VALUES (146, 620, 44);
INSERT INTO public.games VALUES (147, 126, 44);
INSERT INTO public.games VALUES (148, 578, 44);
INSERT INTO public.games VALUES (149, 918, 46);
INSERT INTO public.games VALUES (150, 198, 46);
INSERT INTO public.games VALUES (151, 349, 47);
INSERT INTO public.games VALUES (152, 96, 47);
INSERT INTO public.games VALUES (153, 234, 46);
INSERT INTO public.games VALUES (154, 915, 46);
INSERT INTO public.games VALUES (155, 720, 46);
INSERT INTO public.games VALUES (156, 1, 48);
INSERT INTO public.games VALUES (157, 590, 48);
INSERT INTO public.games VALUES (158, 309, 49);
INSERT INTO public.games VALUES (159, 617, 49);
INSERT INTO public.games VALUES (160, 653, 48);
INSERT INTO public.games VALUES (161, 986, 48);
INSERT INTO public.games VALUES (162, 177, 48);
INSERT INTO public.games VALUES (163, 1, 1);
INSERT INTO public.games VALUES (164, 1, 50);
INSERT INTO public.games VALUES (165, 538, 50);
INSERT INTO public.games VALUES (166, 51, 51);
INSERT INTO public.games VALUES (167, 875, 51);
INSERT INTO public.games VALUES (168, 387, 50);
INSERT INTO public.games VALUES (169, 181, 50);
INSERT INTO public.games VALUES (170, 734, 50);
INSERT INTO public.games VALUES (171, 13, 1);
INSERT INTO public.games VALUES (172, 1, 52);
INSERT INTO public.games VALUES (173, 161, 52);
INSERT INTO public.games VALUES (174, 477, 53);
INSERT INTO public.games VALUES (175, 598, 53);
INSERT INTO public.games VALUES (176, 47, 52);
INSERT INTO public.games VALUES (177, 372, 52);
INSERT INTO public.games VALUES (178, 250, 52);
INSERT INTO public.games VALUES (179, 819, 54);
INSERT INTO public.games VALUES (180, 493, 54);
INSERT INTO public.games VALUES (181, 243, 55);
INSERT INTO public.games VALUES (182, 228, 55);
INSERT INTO public.games VALUES (183, 288, 54);
INSERT INTO public.games VALUES (184, 266, 54);
INSERT INTO public.games VALUES (185, 695, 54);
INSERT INTO public.games VALUES (186, 485, 56);
INSERT INTO public.games VALUES (187, 798, 56);
INSERT INTO public.games VALUES (188, 1, 57);
INSERT INTO public.games VALUES (189, 766, 57);
INSERT INTO public.games VALUES (190, 582, 56);
INSERT INTO public.games VALUES (191, 196, 56);
INSERT INTO public.games VALUES (192, 292, 56);
INSERT INTO public.games VALUES (193, 718, 58);
INSERT INTO public.games VALUES (194, 384, 58);
INSERT INTO public.games VALUES (195, 747, 59);
INSERT INTO public.games VALUES (196, 546, 59);
INSERT INTO public.games VALUES (197, 277, 58);
INSERT INTO public.games VALUES (198, 751, 58);
INSERT INTO public.games VALUES (199, 680, 58);
INSERT INTO public.games VALUES (200, 819, 60);
INSERT INTO public.games VALUES (201, 641, 60);
INSERT INTO public.games VALUES (202, 131, 61);
INSERT INTO public.games VALUES (203, 131, 61);
INSERT INTO public.games VALUES (204, 345, 60);
INSERT INTO public.games VALUES (205, 209, 60);
INSERT INTO public.games VALUES (206, 709, 60);
INSERT INTO public.games VALUES (207, 1, 62);
INSERT INTO public.games VALUES (208, 42, 62);
INSERT INTO public.games VALUES (209, 22, 63);
INSERT INTO public.games VALUES (210, 737, 63);
INSERT INTO public.games VALUES (211, 452, 62);
INSERT INTO public.games VALUES (212, 6, 62);
INSERT INTO public.games VALUES (213, 5, 62);
INSERT INTO public.games VALUES (214, 1, 64);
INSERT INTO public.games VALUES (215, 808, 64);
INSERT INTO public.games VALUES (216, 516, 65);
INSERT INTO public.games VALUES (217, 225, 65);
INSERT INTO public.games VALUES (218, 782, 64);
INSERT INTO public.games VALUES (219, 161, 64);
INSERT INTO public.games VALUES (220, 504, 64);
INSERT INTO public.games VALUES (221, 555, 66);
INSERT INTO public.games VALUES (222, 751, 66);
INSERT INTO public.games VALUES (223, 366, 67);
INSERT INTO public.games VALUES (224, 239, 67);
INSERT INTO public.games VALUES (225, 370, 66);
INSERT INTO public.games VALUES (226, 287, 66);
INSERT INTO public.games VALUES (227, 943, 66);
INSERT INTO public.games VALUES (228, 654, 68);
INSERT INTO public.games VALUES (229, 907, 68);
INSERT INTO public.games VALUES (230, 1, 69);
INSERT INTO public.games VALUES (231, 30, 69);
INSERT INTO public.games VALUES (232, 304, 68);
INSERT INTO public.games VALUES (233, 561, 68);
INSERT INTO public.games VALUES (234, 299, 68);
INSERT INTO public.games VALUES (235, 832, 70);
INSERT INTO public.games VALUES (236, 725, 70);
INSERT INTO public.games VALUES (237, 398, 71);
INSERT INTO public.games VALUES (238, 977, 71);
INSERT INTO public.games VALUES (239, 65, 70);
INSERT INTO public.games VALUES (240, 705, 70);
INSERT INTO public.games VALUES (241, 421, 70);
INSERT INTO public.games VALUES (242, 1, 72);
INSERT INTO public.games VALUES (243, 174, 72);
INSERT INTO public.games VALUES (244, 617, 73);
INSERT INTO public.games VALUES (245, 17, 73);
INSERT INTO public.games VALUES (246, 171, 72);
INSERT INTO public.games VALUES (247, 531, 72);
INSERT INTO public.games VALUES (248, 554, 72);
INSERT INTO public.games VALUES (249, 747, 74);
INSERT INTO public.games VALUES (250, 458, 74);
INSERT INTO public.games VALUES (251, 1, 75);
INSERT INTO public.games VALUES (252, 665, 75);
INSERT INTO public.games VALUES (253, 582, 74);
INSERT INTO public.games VALUES (254, 172, 74);
INSERT INTO public.games VALUES (255, 569, 74);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Jay');
INSERT INTO public.users VALUES (4, 'user_1677785729784');
INSERT INTO public.users VALUES (5, 'user_1677785729783');
INSERT INTO public.users VALUES (6, 'user_1677786032034');
INSERT INTO public.users VALUES (7, 'user_1677786032033');
INSERT INTO public.users VALUES (8, '');
INSERT INTO public.users VALUES (9, 'user_1677786234189');
INSERT INTO public.users VALUES (10, 'user_1677786234188');
INSERT INTO public.users VALUES (11, 'user_1677786365601');
INSERT INTO public.users VALUES (12, 'user_1677786365600');
INSERT INTO public.users VALUES (13, 'user_1677786474442');
INSERT INTO public.users VALUES (14, 'user_1677786474441');
INSERT INTO public.users VALUES (15, 'user_1677786516027');
INSERT INTO public.users VALUES (16, 'user_1677786516026');
INSERT INTO public.users VALUES (17, 'user_1677786895932');
INSERT INTO public.users VALUES (18, 'user_1677786895931');
INSERT INTO public.users VALUES (19, 'user_1677787105624');
INSERT INTO public.users VALUES (20, 'user_1677787105623');
INSERT INTO public.users VALUES (21, 'user_1677787239520');
INSERT INTO public.users VALUES (22, 'user_1677787239519');
INSERT INTO public.users VALUES (23, 'J');
INSERT INTO public.users VALUES (24, 'user_1677787409730');
INSERT INTO public.users VALUES (25, 'user_1677787409729');
INSERT INTO public.users VALUES (26, 'user_1677787508867');
INSERT INTO public.users VALUES (27, 'user_1677787508866');
INSERT INTO public.users VALUES (28, 'user_1677787608152');
INSERT INTO public.users VALUES (29, 'user_1677787608151');
INSERT INTO public.users VALUES (30, 'user_1677787700521');
INSERT INTO public.users VALUES (31, 'user_1677787700520');
INSERT INTO public.users VALUES (32, 'user_1677787780760');
INSERT INTO public.users VALUES (33, 'user_1677787780759');
INSERT INTO public.users VALUES (34, 'user_1677787943061');
INSERT INTO public.users VALUES (35, 'user_1677787943060');
INSERT INTO public.users VALUES (36, 'user_1677788071675');
INSERT INTO public.users VALUES (37, 'user_1677788071674');
INSERT INTO public.users VALUES (38, 'user_1677788182248');
INSERT INTO public.users VALUES (39, 'user_1677788182247');
INSERT INTO public.users VALUES (40, 'user_1677788308552');
INSERT INTO public.users VALUES (41, 'user_1677788308551');
INSERT INTO public.users VALUES (42, 'user_1677788328857');
INSERT INTO public.users VALUES (43, 'user_1677788328856');
INSERT INTO public.users VALUES (44, 'user_1677788342811');
INSERT INTO public.users VALUES (45, 'user_1677788342810');
INSERT INTO public.users VALUES (46, 'user_1677788359214');
INSERT INTO public.users VALUES (47, 'user_1677788359213');
INSERT INTO public.users VALUES (48, 'user_1677788371135');
INSERT INTO public.users VALUES (49, 'user_1677788371134');
INSERT INTO public.users VALUES (50, 'user_1677788405069');
INSERT INTO public.users VALUES (51, 'user_1677788405068');
INSERT INTO public.users VALUES (52, 'user_1677788493846');
INSERT INTO public.users VALUES (53, 'user_1677788493845');
INSERT INTO public.users VALUES (54, 'user_1677788577809');
INSERT INTO public.users VALUES (55, 'user_1677788577808');
INSERT INTO public.users VALUES (56, 'user_1677788597231');
INSERT INTO public.users VALUES (57, 'user_1677788597230');
INSERT INTO public.users VALUES (58, 'user_1677788625990');
INSERT INTO public.users VALUES (59, 'user_1677788625989');
INSERT INTO public.users VALUES (60, 'user_1677788657207');
INSERT INTO public.users VALUES (61, 'user_1677788657206');
INSERT INTO public.users VALUES (62, 'user_1677788666988');
INSERT INTO public.users VALUES (63, 'user_1677788666987');
INSERT INTO public.users VALUES (64, 'user_1677788751652');
INSERT INTO public.users VALUES (65, 'user_1677788751651');
INSERT INTO public.users VALUES (66, 'user_1677788803081');
INSERT INTO public.users VALUES (67, 'user_1677788803080');
INSERT INTO public.users VALUES (68, 'user_1677788834727');
INSERT INTO public.users VALUES (69, 'user_1677788834726');
INSERT INTO public.users VALUES (70, 'user_1677788878338');
INSERT INTO public.users VALUES (71, 'user_1677788878337');
INSERT INTO public.users VALUES (72, 'user_1677788941771');
INSERT INTO public.users VALUES (73, 'user_1677788941770');
INSERT INTO public.users VALUES (74, 'user_1677788957951');
INSERT INTO public.users VALUES (75, 'user_1677788957950');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 255, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 75, true);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

