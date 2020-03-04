--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1 (Debian 12.1-1.pgdg100+1)
-- Dumped by pg_dump version 12.1 (Debian 12.1-1.pgdg100+1)

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
-- Name: address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.address (
    id integer NOT NULL,
    name text,
    address_type real,
    parent_id real,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.address OWNER TO postgres;

--
-- Name: address_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.address_id_seq OWNER TO postgres;

--
-- Name: address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.address_id_seq OWNED BY public.address.id;


--
-- Name: borrowerinfo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.borrowerinfo (
    id integer NOT NULL,
    name text,
    address text,
    phone_number text,
    total real,
    avata text,
    status boolean,
    created_at timestamp without time zone,
    deleted_at timestamp without time zone,
    updated_at timestamp without time zone,
    district integer,
    ward integer,
    note character varying
);


ALTER TABLE public.borrowerinfo OWNER TO postgres;

--
-- Name: borrowerinfo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.borrowerinfo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.borrowerinfo_id_seq OWNER TO postgres;

--
-- Name: borrowerinfo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.borrowerinfo_id_seq OWNED BY public.borrowerinfo.id;


--
-- Name: borrowhistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.borrowhistory (
    id integer NOT NULL,
    status boolean,
    note text,
    total real,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    borrower_id integer
);


ALTER TABLE public.borrowhistory OWNER TO postgres;

--
-- Name: borrowhistory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.borrowhistory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.borrowhistory_id_seq OWNER TO postgres;

--
-- Name: borrowhistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.borrowhistory_id_seq OWNED BY public.borrowhistory.id;


--
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    name text,
    email text,
    password text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_seq OWNER TO postgres;

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- Name: address id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address ALTER COLUMN id SET DEFAULT nextval('public.address_id_seq'::regclass);


--
-- Name: borrowerinfo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.borrowerinfo ALTER COLUMN id SET DEFAULT nextval('public.borrowerinfo_id_seq'::regclass);


--
-- Name: borrowhistory id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.borrowhistory ALTER COLUMN id SET DEFAULT nextval('public.borrowhistory_id_seq'::regclass);


--
-- Name: user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- Data for Name: address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.address (id, name, address_type, parent_id, created_at, updated_at) FROM stdin;
1	Quận 1	1	\N	2020-02-10 18:31:07.393	\N
2	Phường Bến Thành	2	1	2020-02-10 18:31:07.393	\N
3	Phường Nguyễn Thái Bình	2	1	2020-02-10 18:31:07.393	\N
4	Phường Cầu Ông Lãnh	2	1	2020-02-10 18:31:07.393	\N
5	Phường Cô Giang	2	1	2020-02-10 18:31:07.393	\N
6	Phường Nguyễn Cư Trinh	2	1	2020-02-10 18:31:07.393	\N
7	Phường Đa Kao	2	1	2020-02-10 18:31:07.393	\N
8	Phường Bến Nghé	2	1	2020-02-10 18:31:07.393	\N
9	Phường Cầu Kho	2	1	2020-02-10 18:31:07.393	\N
10	Phường Tân Định	2	1	2020-02-10 18:31:07.393	\N
11	Phường Phạm Ngũ Lão	2	1	2020-02-10 18:31:07.393	\N
12	Quận 2	1	\N	2020-02-10 18:31:07.393	\N
13	Phường An Lợi Đông	2	12	2020-02-10 18:31:07.393	\N
14	Phường Thảo Điền	2	12	2020-02-10 18:31:07.393	\N
15	Phường Thạnh Mỹ Lợi	2	12	2020-02-10 18:31:07.393	\N
16	Phường Bình Trưng Tây	2	12	2020-02-10 18:31:07.393	\N
17	Phường Thủ Thiêm	2	12	2020-02-10 18:31:07.393	\N
18	Phường An Khánh	2	12	2020-02-10 18:31:07.393	\N
19	Phường Bình Khánh	2	12	2020-02-10 18:31:07.393	\N
20	Phường An Phú	2	12	2020-02-10 18:31:07.393	\N
21	Phường Cát Lái	2	12	2020-02-10 18:31:07.393	\N
22	Phường Bình An	2	12	2020-02-10 18:31:07.393	\N
23	Phường Bình Trưng Đông	2	12	2020-02-10 18:31:07.393	\N
24	Quận 3	1	\N	2020-02-10 18:31:07.393	\N
25	Phường 1	2	24	2020-02-10 18:31:07.393	\N
26	Phường 7	2	24	2020-02-10 18:31:07.393	\N
27	Phường 8	2	24	2020-02-10 18:31:07.393	\N
28	Phường 9	2	24	2020-02-10 18:31:07.393	\N
29	Phường 14	2	24	2020-02-10 18:31:07.393	\N
30	Phường 13	2	24	2020-02-10 18:31:07.393	\N
31	Phường 10	2	24	2020-02-10 18:31:07.393	\N
32	Phường 2	2	24	2020-02-10 18:31:07.393	\N
33	Phường 3	2	24	2020-02-10 18:31:07.393	\N
34	Phường 6	2	24	2020-02-10 18:31:07.393	\N
35	Phường 12	2	24	2020-02-10 18:31:07.393	\N
36	Phường 5	2	24	2020-02-10 18:31:07.393	\N
37	Phường 11	2	24	2020-02-10 18:31:07.393	\N
38	Phường 4	2	24	2020-02-10 18:31:07.393	\N
39	Quận 4	1	\N	2020-02-10 18:31:07.393	\N
40	Phường 1	2	39	2020-02-10 18:31:07.393	\N
41	Phường 6	2	39	2020-02-10 18:31:07.393	\N
42	Phường 8	2	39	2020-02-10 18:31:07.393	\N
43	Phường 9	2	39	2020-02-10 18:31:07.393	\N
44	Phường 10	2	39	2020-02-10 18:31:07.393	\N
45	Phường 18	2	39	2020-02-10 18:31:07.393	\N
46	Phường 15	2	39	2020-02-10 18:31:07.393	\N
47	Phường 2	2	39	2020-02-10 18:31:07.393	\N
48	Phường 14	2	39	2020-02-10 18:31:07.393	\N
49	Phường 13	2	39	2020-02-10 18:31:07.393	\N
50	Phường 16	2	39	2020-02-10 18:31:07.393	\N
51	Phường 4	2	39	2020-02-10 18:31:07.393	\N
52	Phường 12	2	39	2020-02-10 18:31:07.393	\N
53	Phường 3	2	39	2020-02-10 18:31:07.393	\N
54	Phường 5	2	39	2020-02-10 18:31:07.393	\N
55	Quận 5	1	\N	2020-02-10 18:31:07.393	\N
56	Phường 1	2	55	2020-02-10 18:31:07.393	\N
57	Phường 10	2	55	2020-02-10 18:31:07.393	\N
58	Phường 12	2	55	2020-02-10 18:31:07.393	\N
59	Phường 13	2	55	2020-02-10 18:31:07.393	\N
60	Phường 14	2	55	2020-02-10 18:31:07.393	\N
61	Phường 15	2	55	2020-02-10 18:31:07.393	\N
62	Phường 2	2	55	2020-02-10 18:31:07.393	\N
63	Phường 3	2	55	2020-02-10 18:31:07.393	\N
64	Phường 5	2	55	2020-02-10 18:31:07.393	\N
65	Phường 6	2	55	2020-02-10 18:31:07.393	\N
66	Phường 7	2	55	2020-02-10 18:31:07.393	\N
67	Phường 8	2	55	2020-02-10 18:31:07.393	\N
68	Phường 9	2	55	2020-02-10 18:31:07.393	\N
69	Phường 11	2	55	2020-02-10 18:31:07.393	\N
70	Phường 4	2	55	2020-02-10 18:31:07.393	\N
71	Quận 6	1	\N	2020-02-10 18:31:07.393	\N
72	Phường 1	2	71	2020-02-10 18:31:07.393	\N
73	Phường 8	2	71	2020-02-10 18:31:07.393	\N
74	Phường 9	2	71	2020-02-10 18:31:07.393	\N
75	Phường 11	2	71	2020-02-10 18:31:07.393	\N
76	Phường 7	2	71	2020-02-10 18:31:07.393	\N
77	Phường 5	2	71	2020-02-10 18:31:07.393	\N
78	Phường 2	2	71	2020-02-10 18:31:07.393	\N
79	Phường 12	2	71	2020-02-10 18:31:07.393	\N
80	Phường 13	2	71	2020-02-10 18:31:07.393	\N
81	Phường 6	2	71	2020-02-10 18:31:07.393	\N
82	Phường 14	2	71	2020-02-10 18:31:07.393	\N
83	Phường 10	2	71	2020-02-10 18:31:07.393	\N
84	Phường 3	2	71	2020-02-10 18:31:07.393	\N
85	Phường 4	2	71	2020-02-10 18:31:07.393	\N
86	Quận 7	1	\N	2020-02-10 18:31:07.393	\N
87	Phường Bình Thuận	2	86	2020-02-10 18:31:07.393	\N
88	Phường Tân Phong	2	86	2020-02-10 18:31:07.393	\N
89	Phường Tân Phú	2	86	2020-02-10 18:31:07.393	\N
90	Phường Phú Mỹ	2	86	2020-02-10 18:31:07.393	\N
91	Phường Tân Thuận Tây	2	86	2020-02-10 18:31:07.393	\N
92	Phường Tân Hưng	2	86	2020-02-10 18:31:07.393	\N
93	Phường Tân Quy	2	86	2020-02-10 18:31:07.393	\N
94	Phường Phú Thuận	2	86	2020-02-10 18:31:07.393	\N
95	Phường Tân Kiểng	2	86	2020-02-10 18:31:07.393	\N
96	Phường Tân Thuận Đông	2	86	2020-02-10 18:31:07.393	\N
97	Quận 8	1	\N	2020-02-10 18:31:07.393	\N
98	Phường 1	2	97	2020-02-10 18:31:07.393	\N
99	Phường 10	2	97	2020-02-10 18:31:07.393	\N
100	Phường 11	2	97	2020-02-10 18:31:07.393	\N
101	Phường 12	2	97	2020-02-10 18:31:07.393	\N
102	Phường 13	2	97	2020-02-10 18:31:07.393	\N
103	Phường 15	2	97	2020-02-10 18:31:07.393	\N
104	Phường 16	2	97	2020-02-10 18:31:07.393	\N
105	Phường 2	2	97	2020-02-10 18:31:07.393	\N
106	Phường 3	2	97	2020-02-10 18:31:07.393	\N
107	Phường 6	2	97	2020-02-10 18:31:07.393	\N
108	Phường 7	2	97	2020-02-10 18:31:07.393	\N
109	Phường 8	2	97	2020-02-10 18:31:07.393	\N
110	Phường 4	2	97	2020-02-10 18:31:07.393	\N
111	Phường 5	2	97	2020-02-10 18:31:07.393	\N
112	Phường 14	2	97	2020-02-10 18:31:07.393	\N
113	Phường 9	2	97	2020-02-10 18:31:07.393	\N
114	Quận 9	1	\N	2020-02-10 18:31:07.393	\N
115	Phường Hiệp Phú	2	114	2020-02-10 18:31:07.393	\N
116	Phường Trường Thạnh	2	114	2020-02-10 18:31:07.393	\N
117	Phường Long Thạnh Mỹ	2	114	2020-02-10 18:31:07.393	\N
118	Phường Tăng Nhơn Phú A	2	114	2020-02-10 18:31:07.393	\N
119	Phường Long Bình	2	114	2020-02-10 18:31:07.393	\N
120	Phường Long Trường	2	114	2020-02-10 18:31:07.393	\N
121	Phường Phú Hữu	2	114	2020-02-10 18:31:07.393	\N
122	Phường Long Phước	2	114	2020-02-10 18:31:07.393	\N
123	Phường Phước Bình	2	114	2020-02-10 18:31:07.393	\N
124	Phường Phước Long A	2	114	2020-02-10 18:31:07.393	\N
125	Phường Phước Long B	2	114	2020-02-10 18:31:07.393	\N
126	Phường Tăng Nhơn Phú B	2	114	2020-02-10 18:31:07.393	\N
127	Phường Tân Phú	2	114	2020-02-10 18:31:07.393	\N
128	Quận 10	1	\N	2020-02-10 18:31:07.393	\N
129	Phường 1	2	128	2020-02-10 18:31:07.393	\N
130	Phường 10	2	128	2020-02-10 18:31:07.393	\N
131	Phường 11	2	128	2020-02-10 18:31:07.393	\N
132	Phường 12	2	128	2020-02-10 18:31:07.393	\N
133	Phường 14	2	128	2020-02-10 18:31:07.393	\N
134	Phường 15	2	128	2020-02-10 18:31:07.393	\N
135	Phường 2	2	128	2020-02-10 18:31:07.393	\N
136	Phường 3	2	128	2020-02-10 18:31:07.393	\N
137	Phường 4	2	128	2020-02-10 18:31:07.393	\N
138	Phường 5	2	128	2020-02-10 18:31:07.393	\N
139	Phường 6	2	128	2020-02-10 18:31:07.393	\N
140	Phường 7	2	128	2020-02-10 18:31:07.393	\N
141	Phường 9	2	128	2020-02-10 18:31:07.393	\N
142	Phường 13	2	128	2020-02-10 18:31:07.393	\N
143	Phường 8	2	128	2020-02-10 18:31:07.393	\N
144	Quận 11	1	\N	2020-02-10 18:31:07.393	\N
145	Phường 1	2	144	2020-02-10 18:31:07.393	\N
146	Phường 5	2	144	2020-02-10 18:31:07.393	\N
147	Phường 6	2	144	2020-02-10 18:31:07.393	\N
148	Phường 8	2	144	2020-02-10 18:31:07.393	\N
149	Phường 9	2	144	2020-02-10 18:31:07.393	\N
150	Phường 13	2	144	2020-02-10 18:31:07.393	\N
151	Phường 11	2	144	2020-02-10 18:31:07.393	\N
152	Phường 15	2	144	2020-02-10 18:31:07.393	\N
153	Phường 16	2	144	2020-02-10 18:31:07.393	\N
154	Phường 7	2	144	2020-02-10 18:31:07.393	\N
155	Phường 3	2	144	2020-02-10 18:31:07.393	\N
156	Phường 12	2	144	2020-02-10 18:31:07.393	\N
157	Phường 14	2	144	2020-02-10 18:31:07.393	\N
158	Phường 4	2	144	2020-02-10 18:31:07.393	\N
159	Phường 10	2	144	2020-02-10 18:31:07.393	\N
160	Phường 2	2	144	2020-02-10 18:31:07.393	\N
161	Quận 12	1	\N	2020-02-10 18:31:07.393	\N
162	Phường An Phú Đông	2	161	2020-02-10 18:31:07.393	\N
163	Phường Tân Thới Nhất	2	161	2020-02-10 18:31:07.393	\N
164	Phường Đông Hưng Thuận	2	161	2020-02-10 18:31:07.393	\N
165	Phường Thới An	2	161	2020-02-10 18:31:07.393	\N
166	Phường Trung Mỹ Tây	2	161	2020-02-10 18:31:07.393	\N
167	Phường Tân Chánh Hiệp	2	161	2020-02-10 18:31:07.393	\N
168	Phường Tân Thới Hiệp	2	161	2020-02-10 18:31:07.393	\N
169	Phường Hiệp Thành	2	161	2020-02-10 18:31:07.393	\N
170	Phường Thạnh Lộc	2	161	2020-02-10 18:31:07.393	\N
171	Phường Thạnh Xuân	2	161	2020-02-10 18:31:07.393	\N
172	Phường Tân Hưng Thuận	2	161	2020-02-10 18:31:07.393	\N
173	Quận Tân Phú	1	\N	2020-02-10 18:31:07.393	\N
174	Phường Hiệp Tân	2	173	2020-02-10 18:31:07.393	\N
175	Phường Tân Sơn Nhì	2	173	2020-02-10 18:31:07.393	\N
176	Phường Sơn Kỳ	2	173	2020-02-10 18:31:07.393	\N
177	Phường Phú Trung	2	173	2020-02-10 18:31:07.393	\N
178	Phường Tây Thạnh	2	173	2020-02-10 18:31:07.393	\N
179	Phường Tân Thành	2	173	2020-02-10 18:31:07.393	\N
180	Phường Phú Thạnh	2	173	2020-02-10 18:31:07.393	\N
181	Phường Hòa Thạnh	2	173	2020-02-10 18:31:07.393	\N
182	Phường Tân Quý	2	173	2020-02-10 18:31:07.393	\N
183	Phường Tân Thới Hòa	2	173	2020-02-10 18:31:07.393	\N
184	Phường Phú Thọ Hòa	2	173	2020-02-10 18:31:07.393	\N
185	Quận Bình Tân	1	\N	2020-02-10 18:31:07.393	\N
186	Phường Bình Hưng Hòa	2	185	2020-02-10 18:31:07.393	\N
187	Phường Binh Hưng Hoà A	2	185	2020-02-10 18:31:07.393	\N
188	Phường Binh Hưng Hoà B	2	185	2020-02-10 18:31:07.393	\N
189	Phường Bình Trị Đông A	2	185	2020-02-10 18:31:07.393	\N
190	Phường Bình Trị Đông B	2	185	2020-02-10 18:31:07.393	\N
191	Phường Tân Tạo	2	185	2020-02-10 18:31:07.393	\N
192	Phường Tân Tạo A	2	185	2020-02-10 18:31:07.393	\N
193	Phường An Lạc	2	185	2020-02-10 18:31:07.393	\N
194	Phường Bình Trị Đông	2	185	2020-02-10 18:31:07.393	\N
195	Phường An Lạc A	2	185	2020-02-10 18:31:07.393	\N
196	Quận Thủ Đức	1	\N	2020-02-10 18:31:07.393	\N
197	Phường Bình Thọ	2	196	2020-02-10 18:31:07.393	\N
198	Phường Hiệp Bình Chánh	2	196	2020-02-10 18:31:07.393	\N
199	Phường Hiệp Bình Phước	2	196	2020-02-10 18:31:07.393	\N
200	Phường Linh Chiểu	2	196	2020-02-10 18:31:07.393	\N
201	Phường Linh Tây	2	196	2020-02-10 18:31:07.393	\N
202	Phường Linh Trung	2	196	2020-02-10 18:31:07.393	\N
203	Phường Linh Xuân	2	196	2020-02-10 18:31:07.393	\N
204	Phường Tam Bình	2	196	2020-02-10 18:31:07.393	\N
205	Phường Tam Phú	2	196	2020-02-10 18:31:07.393	\N
206	Phường Bình Chiểu	2	196	2020-02-10 18:31:07.393	\N
207	Phường Linh Đông	2	196	2020-02-10 18:31:07.393	\N
208	Phường Trường Thọ	2	196	2020-02-10 18:31:07.393	\N
209	Quận Gò Vấp	1	\N	2020-02-10 18:31:07.393	\N
210	Phường 1	2	209	2020-02-10 18:31:07.393	\N
211	Phường 10	2	209	2020-02-10 18:31:07.393	\N
212	Phường 12	2	209	2020-02-10 18:31:07.393	\N
213	Phường 13	2	209	2020-02-10 18:31:07.393	\N
214	Phường 14	2	209	2020-02-10 18:31:07.393	\N
215	Phường 15	2	209	2020-02-10 18:31:07.393	\N
216	Phường 16	2	209	2020-02-10 18:31:07.393	\N
217	Phường 3	2	209	2020-02-10 18:31:07.393	\N
218	Phường 4	2	209	2020-02-10 18:31:07.393	\N
219	Phường 5	2	209	2020-02-10 18:31:07.393	\N
220	Phường 6	2	209	2020-02-10 18:31:07.393	\N
221	Phường 7	2	209	2020-02-10 18:31:07.393	\N
222	Phường 8	2	209	2020-02-10 18:31:07.393	\N
223	Phường 9	2	209	2020-02-10 18:31:07.393	\N
224	Phường 11	2	209	2020-02-10 18:31:07.393	\N
225	Phường 17	2	209	2020-02-10 18:31:07.393	\N
226	Huyện Hóc Môn	1	\N	2020-02-10 18:31:07.393	\N
227	Thị trấn Hóc Môn	2	226	2020-02-10 18:31:07.393	\N
228	Xã Bà Điểm	2	226	2020-02-10 18:31:07.393	\N
229	Xã Tân Hiệp	2	226	2020-02-10 18:31:07.393	\N
230	Xã Tân Thới Nhì	2	226	2020-02-10 18:31:07.393	\N
231	Xã Tân Xuân	2	226	2020-02-10 18:31:07.393	\N
232	Xã Trung Chánh	2	226	2020-02-10 18:31:07.393	\N
233	Xã Xuân Thới Đông	2	226	2020-02-10 18:31:07.393	\N
234	Xã Xuân Thới Sơn	2	226	2020-02-10 18:31:07.393	\N
235	Xã Xuân Thới Thượng	2	226	2020-02-10 18:31:07.393	\N
236	Xã Nhị Bình	2	226	2020-02-10 18:31:07.393	\N
237	Xã Đông Thạnh	2	226	2020-02-10 18:31:07.393	\N
238	Xã Thới Tam Thôn	2	226	2020-02-10 18:31:07.393	\N
239	Quận Phú Nhuận	1	\N	2020-02-10 18:31:07.393	\N
240	Phường 1	2	239	2020-02-10 18:31:07.393	\N
241	Phường 10	2	239	2020-02-10 18:31:07.393	\N
242	Phường 12	2	239	2020-02-10 18:31:07.393	\N
243	Phường 13	2	239	2020-02-10 18:31:07.393	\N
244	Phường 14	2	239	2020-02-10 18:31:07.393	\N
245	Phường 15	2	239	2020-02-10 18:31:07.393	\N
246	Phường 17	2	239	2020-02-10 18:31:07.393	\N
247	Phường 2	2	239	2020-02-10 18:31:07.393	\N
248	Phường 4	2	239	2020-02-10 18:31:07.393	\N
249	Phường 5	2	239	2020-02-10 18:31:07.393	\N
250	Phường 7	2	239	2020-02-10 18:31:07.393	\N
251	Phường 8	2	239	2020-02-10 18:31:07.393	\N
252	Phường 9	2	239	2020-02-10 18:31:07.393	\N
253	Phường 11	2	239	2020-02-10 18:31:07.393	\N
254	Phường 3	2	239	2020-02-10 18:31:07.393	\N
255	Huyện Củ Chi	1	\N	2020-02-10 18:31:07.393	\N
256	Xã An Nhơn Tây	2	255	2020-02-10 18:31:07.393	\N
257	Xã An Phú	2	255	2020-02-10 18:31:07.393	\N
258	Xã Bình Mỹ	2	255	2020-02-10 18:31:07.393	\N
259	Xã Hòa Phú	2	255	2020-02-10 18:31:07.393	\N
260	Xã Nhuận Đức	2	255	2020-02-10 18:31:07.393	\N
261	Xã Phạm Văn Cội	2	255	2020-02-10 18:31:07.393	\N
262	Xã Phú Mỹ Hưng	2	255	2020-02-10 18:31:07.393	\N
263	Xã Phước Hiệp	2	255	2020-02-10 18:31:07.393	\N
264	Xã Phước Thạnh	2	255	2020-02-10 18:31:07.393	\N
265	Xã Phước Vĩnh An	2	255	2020-02-10 18:31:07.393	\N
266	Xã Tân An Hội	2	255	2020-02-10 18:31:07.393	\N
267	Xã Tân Thạnh Đông	2	255	2020-02-10 18:31:07.393	\N
268	Xã Tân Thạnh Tây	2	255	2020-02-10 18:31:07.393	\N
269	Xã Tân Thông Hội	2	255	2020-02-10 18:31:07.393	\N
270	Xã Thái Mỹ	2	255	2020-02-10 18:31:07.393	\N
271	Xã Trung An	2	255	2020-02-10 18:31:07.393	\N
272	Xã Trung Lập Thượng	2	255	2020-02-10 18:31:07.393	\N
273	Thị trấn Củ Chi	2	255	2020-02-10 18:31:07.393	\N
274	Xã Phú Hòa Đông	2	255	2020-02-10 18:31:07.393	\N
275	Xã Tân Phú Trung	2	255	2020-02-10 18:31:07.393	\N
276	Xã Trung Lập Hạ	2	255	2020-02-10 18:31:07.393	\N
277	Huyện Cần Giờ	1	\N	2020-02-10 18:31:07.393	\N
278	Thị trấn Cần Thạnh	2	277	2020-02-10 18:31:07.393	\N
279	Xã Bình Khánh	2	277	2020-02-10 18:31:07.393	\N
280	Xã An Thới Đông	2	277	2020-02-10 18:31:07.393	\N
281	Xã Lý Nhơn	2	277	2020-02-10 18:31:07.393	\N
282	Xã Thạnh An	2	277	2020-02-10 18:31:07.393	\N
283	Xã Tam Thôn Hiệp	2	277	2020-02-10 18:31:07.393	\N
284	Xã Long Hòa	2	277	2020-02-10 18:31:07.393	\N
285	Huyện Nhà Bè	1	\N	2020-02-10 18:31:07.393	\N
286	Xã Hiệp Phước	2	285	2020-02-10 18:31:07.393	\N
287	Xã Long Thới	2	285	2020-02-10 18:31:07.393	\N
288	Xã Nhơn Đức	2	285	2020-02-10 18:31:07.393	\N
289	Xã Phú Xuân	2	285	2020-02-10 18:31:07.393	\N
290	Xã Phước Kiển	2	285	2020-02-10 18:31:07.393	\N
291	Xã Phước Lộc	2	285	2020-02-10 18:31:07.393	\N
292	Thị trấn Nhà Bè	2	285	2020-02-10 18:31:07.393	\N
293	Quận Tân Bình	1	\N	2020-02-10 18:31:07.393	\N
294	Phường 1	2	293	2020-02-10 18:31:07.393	\N
295	Phường 10	2	293	2020-02-10 18:31:07.393	\N
296	Phường 12	2	293	2020-02-10 18:31:07.393	\N
297	Phường 13	2	293	2020-02-10 18:31:07.393	\N
298	Phường 14	2	293	2020-02-10 18:31:07.393	\N
299	Phường 15	2	293	2020-02-10 18:31:07.393	\N
300	Phường 2	2	293	2020-02-10 18:31:07.393	\N
301	Phường 7	2	293	2020-02-10 18:31:07.393	\N
302	Phường 8	2	293	2020-02-10 18:31:07.393	\N
303	Phường 9	2	293	2020-02-10 18:31:07.393	\N
304	Phường 11	2	293	2020-02-10 18:31:07.393	\N
305	Phường 5	2	293	2020-02-10 18:31:07.393	\N
306	Phường 6	2	293	2020-02-10 18:31:07.393	\N
307	Phường 3	2	293	2020-02-10 18:31:07.393	\N
308	Phường 4	2	293	2020-02-10 18:31:07.393	\N
309	Quận Bình Thạnh	1	\N	2020-02-10 18:31:07.393	\N
310	Phường 1	2	309	2020-02-10 18:31:07.393	\N
311	Phường 12	2	309	2020-02-10 18:31:07.393	\N
312	Phường 13	2	309	2020-02-10 18:31:07.393	\N
313	Phường 14	2	309	2020-02-10 18:31:07.393	\N
314	Phường 15	2	309	2020-02-10 18:31:07.393	\N
315	Phường 17	2	309	2020-02-10 18:31:07.393	\N
316	Phường 2	2	309	2020-02-10 18:31:07.393	\N
317	Phường 21	2	309	2020-02-10 18:31:07.393	\N
318	Phường 22	2	309	2020-02-10 18:31:07.393	\N
319	Phường 24	2	309	2020-02-10 18:31:07.393	\N
320	Phường 25	2	309	2020-02-10 18:31:07.393	\N
321	Phường 26	2	309	2020-02-10 18:31:07.393	\N
322	Phường 28	2	309	2020-02-10 18:31:07.393	\N
323	Phường 3	2	309	2020-02-10 18:31:07.393	\N
324	Phường 5	2	309	2020-02-10 18:31:07.393	\N
325	Phường 6	2	309	2020-02-10 18:31:07.393	\N
326	Phường 7	2	309	2020-02-10 18:31:07.393	\N
327	Phường 11	2	309	2020-02-10 18:31:07.393	\N
328	Phường 19	2	309	2020-02-10 18:31:07.393	\N
329	Phường 27	2	309	2020-02-10 18:31:07.393	\N
330	Huyện Bình Chánh	1	\N	2020-02-10 18:31:07.393	\N
331	Thị trấn Tân Túc	2	330	2020-02-10 18:31:07.393	\N
332	Xã An Phú Tây	2	330	2020-02-10 18:31:07.393	\N
333	Xã Bình Chánh	2	330	2020-02-10 18:31:07.393	\N
334	Xã Bình Hưng	2	330	2020-02-10 18:31:07.393	\N
335	Xã Bình Lợi	2	330	2020-02-10 18:31:07.393	\N
336	Xã Hưng Long	2	330	2020-02-10 18:31:07.393	\N
337	Xã Lê Minh Xuân	2	330	2020-02-10 18:31:07.393	\N
338	Xã Phạm Văn Hai	2	330	2020-02-10 18:31:07.393	\N
339	Xã Phong Phú	2	330	2020-02-10 18:31:07.393	\N
340	Xã Quy Đức	2	330	2020-02-10 18:31:07.393	\N
341	Xã Tân Kiên	2	330	2020-02-10 18:31:07.393	\N
342	Xã Tân Quý Tây	2	330	2020-02-10 18:31:07.393	\N
343	Xã Vĩnh Lộc A	2	330	2020-02-10 18:31:07.393	\N
344	Xã Vĩnh Lộc B	2	330	2020-02-10 18:31:07.393	\N
345	Xã Đa Phước	2	330	2020-02-10 18:31:07.393	\N
346	Xã Tân Nhựt	2	330	2020-02-10 18:31:07.393	\N
\.


--
-- Data for Name: borrowerinfo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.borrowerinfo (id, name, address, phone_number, total, avata, status, created_at, deleted_at, updated_at, district, ward, note) FROM stdin;

\.


--
-- Data for Name: borrowhistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.borrowhistory (id, status, note, total, created_at, updated_at, borrower_id) FROM stdin;
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (id, name, email, password, created_at, updated_at) FROM stdin;
\.


--
-- Name: address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.address_id_seq', 346, true);


--
-- Name: borrowerinfo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.borrowerinfo_id_seq', 12, true);


--
-- Name: borrowhistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.borrowhistory_id_seq', 38, true);


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_id_seq', 1, false);


--
-- Name: address address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);


--
-- Name: borrowerinfo borrowerinfo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.borrowerinfo
    ADD CONSTRAINT borrowerinfo_pkey PRIMARY KEY (id);


--
-- Name: borrowhistory borrowhistory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.borrowhistory
    ADD CONSTRAINT borrowhistory_pkey PRIMARY KEY (id);


--
-- Name: user user_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_email_key UNIQUE (email);


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

