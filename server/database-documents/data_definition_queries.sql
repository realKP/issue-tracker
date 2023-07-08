
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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
-- Name: issues; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE IF NOT EXISTS public.issues (
    issue_id integer NOT NULL,
    project_id integer NOT NULL,
    issue_creator_id integer NOT NULL,
    issue_name character varying(255) NOT NULL,
    issue_assignee_id integer NOT NULL,
    issue_create_date date NOT NULL,
    issue_type character varying(255) NOT NULL,
    issue_priority character varying(255) NOT NULL,
    issue_status character varying(255) NOT NULL,
    issue_due_date date,
    issue_description character varying(255)
);


ALTER TABLE public.issues OWNER TO postgres;

--
-- Name: issues_issue_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE IF NOT EXISTS public.issues_issue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.issues_issue_id_seq OWNER TO postgres;

--
-- Name: issues_issue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.issues_issue_id_seq OWNED BY public.issues.issue_id;


--
-- Name: organizations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE IF NOT EXISTS public.organizations (
    org_id integer NOT NULL,
    org_creator_id integer NOT NULL,
    org_name character varying(255) NOT NULL,
    org_create_date date NOT NULL,
    org_invite_code character varying(255) NOT NULL
);


ALTER TABLE public.organizations OWNER TO postgres;

--
-- Name: organizations_org_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE IF NOT EXISTS public.organizations_org_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.organizations_org_id_seq OWNER TO postgres;

--
-- Name: organizations_org_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.organizations_org_id_seq OWNED BY public.organizations.org_id;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE IF NOT EXISTS public.projects (
    project_id integer NOT NULL,
    org_id integer NOT NULL,
    project_creator_id integer NOT NULL,
    project_name character varying(255) NOT NULL,
    project_create_date date NOT NULL,
    project_description character varying(255)
);


ALTER TABLE public.projects OWNER TO postgres;

--
-- Name: projects_project_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE IF NOT EXISTS public.projects_project_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_project_id_seq OWNER TO postgres;

--
-- Name: projects_project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.projects_project_id_seq OWNED BY public.projects.project_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE IF NOT EXISTS public.users (
    user_id integer NOT NULL,
    org_id integer,
    user_first_name character varying(255) NOT NULL,
    user_last_name character varying(255) NOT NULL,
    user_email character varying(255) NOT NULL,
    user_password_hash character varying(255) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE IF NOT EXISTS public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO postgres;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: issues issue_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issues ALTER COLUMN issue_id SET DEFAULT nextval('public.issues_issue_id_seq'::regclass);


--
-- Name: organizations org_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organizations ALTER COLUMN org_id SET DEFAULT nextval('public.organizations_org_id_seq'::regclass);


--
-- Name: projects project_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects ALTER COLUMN project_id SET DEFAULT nextval('public.projects_project_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: issues; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.issues (issue_id, project_id, issue_creator_id, issue_name, issue_assignee_id, issue_create_date, issue_type, issue_priority, issue_status, issue_due_date, issue_description) FROM stdin;
1	1	1	Test Issue 1	1	2022-04-13	Bug	HIGH	IN PROGRESS	\N	\N
2	1	1	Test Issue 2	1	2022-04-13	Task	LOW	IN PROGRESS	\N	\N
3	1	1	Test Issue 3	1	2022-04-13	Task	MEDIUM	LATE	\N	\N
4	3	1	Test Issue 4	1	2022-04-13	Task	MEDIUM	LATE	\N	This will be deleted
\.


--
-- Data for Name: organizations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.organizations (org_id, org_creator_id, org_name, org_create_date, org_invite_code) FROM stdin;
1	3	Boolaire LLC	2022-04-13	Sample invite code
3	1	Delete org	2022-04-13	This org is to test deletions
2	2	Fake org	2022-04-13	This is a sample invite code
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projects (project_id, org_id, project_creator_id, project_name, project_create_date, project_description) FROM stdin;
1	1	1	Test Project 1	2022-04-13	\N
2	1	2	Test Project 2	2022-04-13	\N
3	3	3	Test Project 3	2022-04-13	\N
4	2	2	Test Project 4	2022-04-13	\N
5	2	1	Test Project 5	2022-04-13	\N
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (user_id, org_id, user_first_name, user_last_name, user_email, user_password_hash) FROM stdin;
1	\N	FirstName	LastName	user@gmail.com	password
2	\N	Gene	Parmesan	geneparm@gmail.com	password
3	\N	Fakie	Fakenamerson	fakie@gmail.com	password
\.


--
-- Name: issues_issue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.issues_issue_id_seq', 4, true);


--
-- Name: organizations_org_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.organizations_org_id_seq', 3, true);


--
-- Name: projects_project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.projects_project_id_seq', 5, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_id_seq', 3, true);


--
-- Name: issues issues_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_pkey PRIMARY KEY (issue_id);


--
-- Name: organizations organizations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organizations
    ADD CONSTRAINT organizations_pkey PRIMARY KEY (org_id);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (project_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: issues issues_issue_assignee_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_issue_assignee_id_fkey FOREIGN KEY (issue_assignee_id) REFERENCES public.users(user_id) ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;


--
-- Name: issues issues_issue_creator_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_issue_creator_id_fkey FOREIGN KEY (issue_creator_id) REFERENCES public.users(user_id) ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;


--
-- Name: issues issues_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.projects(project_id) ON UPDATE RESTRICT ON DELETE CASCADE NOT VALID;


--
-- Name: organizations organizations_org_creator_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organizations
    ADD CONSTRAINT organizations_org_creator_id_fkey FOREIGN KEY (org_creator_id) REFERENCES public.users(user_id) ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;


--
-- Name: projects projects_org_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_org_id_fkey FOREIGN KEY (org_id) REFERENCES public.organizations(org_id) ON UPDATE RESTRICT ON DELETE CASCADE NOT VALID;


--
-- Name: projects projects_project_creator_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_project_creator_id_fkey FOREIGN KEY (project_creator_id) REFERENCES public.users(user_id) ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;


--
-- Name: users users_org_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_org_id_fkey FOREIGN KEY (org_id) REFERENCES public.organizations(org_id) ON UPDATE RESTRICT ON DELETE SET NULL NOT VALID;


--
-- PostgreSQL database dump complete
--

