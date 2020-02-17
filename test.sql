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
-- Name: address; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.address (
    id integer NOT NULL,
    name text,
    address_type real,
    parent_id real,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: address_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.address_id_seq OWNED BY public.address.id;


--
-- Name: address id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.address ALTER COLUMN id SET DEFAULT nextval('public.address_id_seq'::regclass);


--
-- Data for Name: address; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.address VALUES (1, 'Quận 1', 1, NULL, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (2, 'Phường Bến Thành', 2, 1, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (3, 'Phường Nguyễn Thái Bình', 2, 1, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (4, 'Phường Cầu Ông Lãnh', 2, 1, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (5, 'Phường Cô Giang', 2, 1, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (6, 'Phường Nguyễn Cư Trinh', 2, 1, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (7, 'Phường Đa Kao', 2, 1, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (8, 'Phường Bến Nghé', 2, 1, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (9, 'Phường Cầu Kho', 2, 1, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (10, 'Phường Tân Định', 2, 1, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (11, 'Phường Phạm Ngũ Lão', 2, 1, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (12, 'Quận 2', 1, NULL, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (13, 'Phường An Lợi Đông', 2, 12, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (14, 'Phường Thảo Điền', 2, 12, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (15, 'Phường Thạnh Mỹ Lợi', 2, 12, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (16, 'Phường Bình Trưng Tây', 2, 12, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (17, 'Phường Thủ Thiêm', 2, 12, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (18, 'Phường An Khánh', 2, 12, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (19, 'Phường Bình Khánh', 2, 12, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (20, 'Phường An Phú', 2, 12, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (21, 'Phường Cát Lái', 2, 12, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (22, 'Phường Bình An', 2, 12, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (23, 'Phường Bình Trưng Đông', 2, 12, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (24, 'Quận 3', 1, NULL, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (25, 'Phường 1', 2, 24, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (26, 'Phường 7', 2, 24, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (27, 'Phường 8', 2, 24, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (28, 'Phường 9', 2, 24, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (29, 'Phường 14', 2, 24, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (30, 'Phường 13', 2, 24, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (31, 'Phường 10', 2, 24, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (32, 'Phường 2', 2, 24, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (33, 'Phường 3', 2, 24, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (34, 'Phường 6', 2, 24, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (35, 'Phường 12', 2, 24, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (36, 'Phường 5', 2, 24, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (37, 'Phường 11', 2, 24, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (38, 'Phường 4', 2, 24, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (39, 'Quận 4', 1, NULL, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (40, 'Phường 1', 2, 39, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (41, 'Phường 6', 2, 39, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (42, 'Phường 8', 2, 39, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (43, 'Phường 9', 2, 39, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (44, 'Phường 10', 2, 39, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (45, 'Phường 18', 2, 39, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (46, 'Phường 15', 2, 39, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (47, 'Phường 2', 2, 39, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (48, 'Phường 14', 2, 39, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (49, 'Phường 13', 2, 39, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (50, 'Phường 16', 2, 39, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (51, 'Phường 4', 2, 39, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (52, 'Phường 12', 2, 39, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (53, 'Phường 3', 2, 39, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (54, 'Phường 5', 2, 39, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (55, 'Quận 5', 1, NULL, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (56, 'Phường 1', 2, 55, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (57, 'Phường 10', 2, 55, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (58, 'Phường 12', 2, 55, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (59, 'Phường 13', 2, 55, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (60, 'Phường 14', 2, 55, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (61, 'Phường 15', 2, 55, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (62, 'Phường 2', 2, 55, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (63, 'Phường 3', 2, 55, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (64, 'Phường 5', 2, 55, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (65, 'Phường 6', 2, 55, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (66, 'Phường 7', 2, 55, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (67, 'Phường 8', 2, 55, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (68, 'Phường 9', 2, 55, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (69, 'Phường 11', 2, 55, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (70, 'Phường 4', 2, 55, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (71, 'Quận 6', 1, NULL, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (72, 'Phường 1', 2, 71, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (73, 'Phường 8', 2, 71, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (74, 'Phường 9', 2, 71, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (75, 'Phường 11', 2, 71, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (76, 'Phường 7', 2, 71, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (77, 'Phường 5', 2, 71, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (78, 'Phường 2', 2, 71, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (79, 'Phường 12', 2, 71, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (80, 'Phường 13', 2, 71, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (81, 'Phường 6', 2, 71, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (82, 'Phường 14', 2, 71, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (83, 'Phường 10', 2, 71, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (84, 'Phường 3', 2, 71, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (85, 'Phường 4', 2, 71, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (86, 'Quận 7', 1, NULL, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (87, 'Phường Bình Thuận', 2, 86, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (88, 'Phường Tân Phong', 2, 86, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (89, 'Phường Tân Phú', 2, 86, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (90, 'Phường Phú Mỹ', 2, 86, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (91, 'Phường Tân Thuận Tây', 2, 86, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (92, 'Phường Tân Hưng', 2, 86, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (93, 'Phường Tân Quy', 2, 86, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (94, 'Phường Phú Thuận', 2, 86, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (95, 'Phường Tân Kiểng', 2, 86, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (96, 'Phường Tân Thuận Đông', 2, 86, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (97, 'Quận 8', 1, NULL, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (98, 'Phường 1', 2, 97, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (99, 'Phường 10', 2, 97, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (100, 'Phường 11', 2, 97, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (101, 'Phường 12', 2, 97, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (102, 'Phường 13', 2, 97, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (103, 'Phường 15', 2, 97, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (104, 'Phường 16', 2, 97, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (105, 'Phường 2', 2, 97, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (106, 'Phường 3', 2, 97, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (107, 'Phường 6', 2, 97, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (108, 'Phường 7', 2, 97, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (109, 'Phường 8', 2, 97, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (110, 'Phường 4', 2, 97, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (111, 'Phường 5', 2, 97, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (112, 'Phường 14', 2, 97, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (113, 'Phường 9', 2, 97, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (114, 'Quận 9', 1, NULL, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (115, 'Phường Hiệp Phú', 2, 114, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (116, 'Phường Trường Thạnh', 2, 114, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (117, 'Phường Long Thạnh Mỹ', 2, 114, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (118, 'Phường Tăng Nhơn Phú A', 2, 114, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (119, 'Phường Long Bình', 2, 114, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (120, 'Phường Long Trường', 2, 114, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (121, 'Phường Phú Hữu', 2, 114, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (122, 'Phường Long Phước', 2, 114, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (123, 'Phường Phước Bình', 2, 114, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (124, 'Phường Phước Long A', 2, 114, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (125, 'Phường Phước Long B', 2, 114, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (126, 'Phường Tăng Nhơn Phú B', 2, 114, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (127, 'Phường Tân Phú', 2, 114, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (128, 'Quận 10', 1, NULL, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (129, 'Phường 1', 2, 128, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (130, 'Phường 10', 2, 128, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (131, 'Phường 11', 2, 128, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (132, 'Phường 12', 2, 128, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (133, 'Phường 14', 2, 128, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (134, 'Phường 15', 2, 128, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (135, 'Phường 2', 2, 128, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (136, 'Phường 3', 2, 128, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (137, 'Phường 4', 2, 128, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (138, 'Phường 5', 2, 128, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (139, 'Phường 6', 2, 128, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (140, 'Phường 7', 2, 128, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (141, 'Phường 9', 2, 128, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (142, 'Phường 13', 2, 128, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (143, 'Phường 8', 2, 128, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (144, 'Quận 11', 1, NULL, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (145, 'Phường 1', 2, 144, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (146, 'Phường 5', 2, 144, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (147, 'Phường 6', 2, 144, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (148, 'Phường 8', 2, 144, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (149, 'Phường 9', 2, 144, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (150, 'Phường 13', 2, 144, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (151, 'Phường 11', 2, 144, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (152, 'Phường 15', 2, 144, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (153, 'Phường 16', 2, 144, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (154, 'Phường 7', 2, 144, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (155, 'Phường 3', 2, 144, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (156, 'Phường 12', 2, 144, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (157, 'Phường 14', 2, 144, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (158, 'Phường 4', 2, 144, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (159, 'Phường 10', 2, 144, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (160, 'Phường 2', 2, 144, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (161, 'Quận 12', 1, NULL, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (162, 'Phường An Phú Đông', 2, 161, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (163, 'Phường Tân Thới Nhất', 2, 161, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (164, 'Phường Đông Hưng Thuận', 2, 161, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (165, 'Phường Thới An', 2, 161, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (166, 'Phường Trung Mỹ Tây', 2, 161, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (167, 'Phường Tân Chánh Hiệp', 2, 161, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (168, 'Phường Tân Thới Hiệp', 2, 161, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (169, 'Phường Hiệp Thành', 2, 161, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (170, 'Phường Thạnh Lộc', 2, 161, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (171, 'Phường Thạnh Xuân', 2, 161, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (172, 'Phường Tân Hưng Thuận', 2, 161, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (173, 'Quận Tân Phú', 1, NULL, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (174, 'Phường Hiệp Tân', 2, 173, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (175, 'Phường Tân Sơn Nhì', 2, 173, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (176, 'Phường Sơn Kỳ', 2, 173, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (177, 'Phường Phú Trung', 2, 173, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (178, 'Phường Tây Thạnh', 2, 173, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (179, 'Phường Tân Thành', 2, 173, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (180, 'Phường Phú Thạnh', 2, 173, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (181, 'Phường Hòa Thạnh', 2, 173, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (182, 'Phường Tân Quý', 2, 173, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (183, 'Phường Tân Thới Hòa', 2, 173, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (184, 'Phường Phú Thọ Hòa', 2, 173, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (185, 'Quận Bình Tân', 1, NULL, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (186, 'Phường Bình Hưng Hòa', 2, 185, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (187, 'Phường Binh Hưng Hoà A', 2, 185, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (188, 'Phường Binh Hưng Hoà B', 2, 185, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (189, 'Phường Bình Trị Đông A', 2, 185, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (190, 'Phường Bình Trị Đông B', 2, 185, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (191, 'Phường Tân Tạo', 2, 185, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (192, 'Phường Tân Tạo A', 2, 185, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (193, 'Phường An Lạc', 2, 185, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (194, 'Phường Bình Trị Đông', 2, 185, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (195, 'Phường An Lạc A', 2, 185, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (196, 'Quận Thủ Đức', 1, NULL, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (197, 'Phường Bình Thọ', 2, 196, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (198, 'Phường Hiệp Bình Chánh', 2, 196, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (199, 'Phường Hiệp Bình Phước', 2, 196, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (200, 'Phường Linh Chiểu', 2, 196, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (201, 'Phường Linh Tây', 2, 196, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (202, 'Phường Linh Trung', 2, 196, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (203, 'Phường Linh Xuân', 2, 196, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (204, 'Phường Tam Bình', 2, 196, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (205, 'Phường Tam Phú', 2, 196, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (206, 'Phường Bình Chiểu', 2, 196, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (207, 'Phường Linh Đông', 2, 196, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (208, 'Phường Trường Thọ', 2, 196, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (209, 'Quận Gò Vấp', 1, NULL, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (210, 'Phường 1', 2, 209, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (211, 'Phường 10', 2, 209, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (212, 'Phường 12', 2, 209, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (213, 'Phường 13', 2, 209, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (214, 'Phường 14', 2, 209, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (215, 'Phường 15', 2, 209, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (216, 'Phường 16', 2, 209, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (217, 'Phường 3', 2, 209, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (218, 'Phường 4', 2, 209, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (219, 'Phường 5', 2, 209, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (220, 'Phường 6', 2, 209, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (221, 'Phường 7', 2, 209, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (222, 'Phường 8', 2, 209, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (223, 'Phường 9', 2, 209, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (224, 'Phường 11', 2, 209, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (225, 'Phường 17', 2, 209, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (226, 'Huyện Hóc Môn', 1, NULL, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (227, 'Thị trấn Hóc Môn', 2, 226, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (228, 'Xã Bà Điểm', 2, 226, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (229, 'Xã Tân Hiệp', 2, 226, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (230, 'Xã Tân Thới Nhì', 2, 226, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (231, 'Xã Tân Xuân', 2, 226, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (232, 'Xã Trung Chánh', 2, 226, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (233, 'Xã Xuân Thới Đông', 2, 226, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (234, 'Xã Xuân Thới Sơn', 2, 226, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (235, 'Xã Xuân Thới Thượng', 2, 226, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (236, 'Xã Nhị Bình', 2, 226, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (237, 'Xã Đông Thạnh', 2, 226, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (238, 'Xã Thới Tam Thôn', 2, 226, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (239, 'Quận Phú Nhuận', 1, NULL, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (240, 'Phường 1', 2, 239, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (241, 'Phường 10', 2, 239, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (242, 'Phường 12', 2, 239, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (243, 'Phường 13', 2, 239, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (244, 'Phường 14', 2, 239, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (245, 'Phường 15', 2, 239, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (246, 'Phường 17', 2, 239, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (247, 'Phường 2', 2, 239, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (248, 'Phường 4', 2, 239, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (249, 'Phường 5', 2, 239, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (250, 'Phường 7', 2, 239, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (251, 'Phường 8', 2, 239, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (252, 'Phường 9', 2, 239, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (253, 'Phường 11', 2, 239, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (254, 'Phường 3', 2, 239, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (255, 'Huyện Củ Chi', 1, NULL, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (256, 'Xã An Nhơn Tây', 2, 255, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (257, 'Xã An Phú', 2, 255, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (258, 'Xã Bình Mỹ', 2, 255, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (259, 'Xã Hòa Phú', 2, 255, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (260, 'Xã Nhuận Đức', 2, 255, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (261, 'Xã Phạm Văn Cội', 2, 255, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (262, 'Xã Phú Mỹ Hưng', 2, 255, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (263, 'Xã Phước Hiệp', 2, 255, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (264, 'Xã Phước Thạnh', 2, 255, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (265, 'Xã Phước Vĩnh An', 2, 255, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (266, 'Xã Tân An Hội', 2, 255, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (267, 'Xã Tân Thạnh Đông', 2, 255, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (268, 'Xã Tân Thạnh Tây', 2, 255, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (269, 'Xã Tân Thông Hội', 2, 255, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (270, 'Xã Thái Mỹ', 2, 255, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (271, 'Xã Trung An', 2, 255, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (272, 'Xã Trung Lập Thượng', 2, 255, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (273, 'Thị trấn Củ Chi', 2, 255, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (274, 'Xã Phú Hòa Đông', 2, 255, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (275, 'Xã Tân Phú Trung', 2, 255, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (276, 'Xã Trung Lập Hạ', 2, 255, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (277, 'Huyện Cần Giờ', 1, NULL, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (278, 'Thị trấn Cần Thạnh', 2, 277, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (279, 'Xã Bình Khánh', 2, 277, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (280, 'Xã An Thới Đông', 2, 277, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (281, 'Xã Lý Nhơn', 2, 277, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (282, 'Xã Thạnh An', 2, 277, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (283, 'Xã Tam Thôn Hiệp', 2, 277, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (284, 'Xã Long Hòa', 2, 277, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (285, 'Huyện Nhà Bè', 1, NULL, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (286, 'Xã Hiệp Phước', 2, 285, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (287, 'Xã Long Thới', 2, 285, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (288, 'Xã Nhơn Đức', 2, 285, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (289, 'Xã Phú Xuân', 2, 285, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (290, 'Xã Phước Kiển', 2, 285, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (291, 'Xã Phước Lộc', 2, 285, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (292, 'Thị trấn Nhà Bè', 2, 285, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (293, 'Quận Tân Bình', 1, NULL, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (294, 'Phường 1', 2, 293, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (295, 'Phường 10', 2, 293, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (296, 'Phường 12', 2, 293, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (297, 'Phường 13', 2, 293, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (298, 'Phường 14', 2, 293, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (299, 'Phường 15', 2, 293, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (300, 'Phường 2', 2, 293, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (301, 'Phường 7', 2, 293, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (302, 'Phường 8', 2, 293, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (303, 'Phường 9', 2, 293, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (304, 'Phường 11', 2, 293, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (305, 'Phường 5', 2, 293, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (306, 'Phường 6', 2, 293, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (307, 'Phường 3', 2, 293, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (308, 'Phường 4', 2, 293, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (309, 'Quận Bình Thạnh', 1, NULL, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (310, 'Phường 1', 2, 309, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (311, 'Phường 12', 2, 309, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (312, 'Phường 13', 2, 309, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (313, 'Phường 14', 2, 309, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (314, 'Phường 15', 2, 309, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (315, 'Phường 17', 2, 309, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (316, 'Phường 2', 2, 309, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (317, 'Phường 21', 2, 309, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (318, 'Phường 22', 2, 309, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (319, 'Phường 24', 2, 309, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (320, 'Phường 25', 2, 309, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (321, 'Phường 26', 2, 309, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (322, 'Phường 28', 2, 309, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (323, 'Phường 3', 2, 309, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (324, 'Phường 5', 2, 309, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (325, 'Phường 6', 2, 309, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (326, 'Phường 7', 2, 309, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (327, 'Phường 11', 2, 309, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (328, 'Phường 19', 2, 309, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (329, 'Phường 27', 2, 309, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (330, 'Huyện Bình Chánh', 1, NULL, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (331, 'Thị trấn Tân Túc', 2, 330, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (332, 'Xã An Phú Tây', 2, 330, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (333, 'Xã Bình Chánh', 2, 330, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (334, 'Xã Bình Hưng', 2, 330, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (335, 'Xã Bình Lợi', 2, 330, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (336, 'Xã Hưng Long', 2, 330, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (337, 'Xã Lê Minh Xuân', 2, 330, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (338, 'Xã Phạm Văn Hai', 2, 330, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (339, 'Xã Phong Phú', 2, 330, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (340, 'Xã Quy Đức', 2, 330, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (341, 'Xã Tân Kiên', 2, 330, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (342, 'Xã Tân Quý Tây', 2, 330, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (343, 'Xã Vĩnh Lộc A', 2, 330, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (344, 'Xã Vĩnh Lộc B', 2, 330, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (345, 'Xã Đa Phước', 2, 330, '2020-02-10 18:31:07.393', NULL);
INSERT INTO public.address VALUES (346, 'Xã Tân Nhựt', 2, 330, '2020-02-10 18:31:07.393', NULL);


--
-- Name: address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.address_id_seq', 346, true);


--
-- Name: address address_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

