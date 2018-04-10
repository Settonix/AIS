create schema api;

--

-- PostgreSQL database dump
--

-- Dumped from database version 9.6.8
-- Dumped by pg_dump version 10.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: art; Type: TABLE; Schema: api; Owner: superuser
--

CREATE TABLE api.art (
    id integer NOT NULL,
    title character varying(20) NOT NULL,
    year integer NOT NULL,
    addeddate timestamp without time zone DEFAULT now(),
    artist_id integer NOT NULL
);


ALTER TABLE api.art OWNER TO superuser;

--
-- Name: art_edition; Type: TABLE; Schema: api; Owner: superuser
--

CREATE TABLE api.art_edition (
    id integer NOT NULL,
    stock_id integer,
    framed boolean DEFAULT false NOT NULL,
    sold boolean DEFAULT false NOT NULL,
    archived boolean DEFAULT false NOT NULL,
    sold_info text,
    edition_info text,
    price double precision DEFAULT 1.0 NOT NULL,
    discount double precision DEFAULT 0.1 NOT NULL,
    republish_date date NOT NULL,
    art_id integer NOT NULL
);


ALTER TABLE api.art_edition OWNER TO superuser;

--
-- Name: art_edition_id_seq; Type: SEQUENCE; Schema: api; Owner: superuser
--

CREATE SEQUENCE api.art_edition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE api.art_edition_id_seq OWNER TO superuser;

--
-- Name: art_edition_id_seq; Type: SEQUENCE OWNED BY; Schema: api; Owner: superuser
--

ALTER SEQUENCE api.art_edition_id_seq OWNED BY api.art_edition.id;


--
-- Name: art_edition_to_customer; Type: TABLE; Schema: api; Owner: superuser
--

CREATE TABLE api.art_edition_to_customer (
    edition_id integer NOT NULL,
    customer_id integer
);


ALTER TABLE api.art_edition_to_customer OWNER TO superuser;

--
-- Name: art_id_seq; Type: SEQUENCE; Schema: api; Owner: superuser
--

CREATE SEQUENCE api.art_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE api.art_id_seq OWNER TO superuser;

--
-- Name: art_id_seq; Type: SEQUENCE OWNED BY; Schema: api; Owner: superuser
--

ALTER SEQUENCE api.art_id_seq OWNED BY api.art.id;


--
-- Name: art_image; Type: TABLE; Schema: api; Owner: superuser
--

CREATE TABLE api.art_image (
    id integer NOT NULL,
    imageurl text NOT NULL,
    art_id integer NOT NULL
);


ALTER TABLE api.art_image OWNER TO superuser;

--
-- Name: art_image_id_seq; Type: SEQUENCE; Schema: api; Owner: superuser
--

CREATE SEQUENCE api.art_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE api.art_image_id_seq OWNER TO superuser;

--
-- Name: art_image_id_seq; Type: SEQUENCE OWNED BY; Schema: api; Owner: superuser
--

ALTER SEQUENCE api.art_image_id_seq OWNED BY api.art_image.id;


--
-- Name: artist; Type: TABLE; Schema: api; Owner: superuser
--

CREATE TABLE api.artist (
    name character varying(20) NOT NULL,
    surname character varying(20) NOT NULL,
    phone character varying(20) NOT NULL,
    info text,
    id integer NOT NULL
);


ALTER TABLE api.artist OWNER TO superuser;

--
-- Name: artist_id_seq; Type: SEQUENCE; Schema: api; Owner: superuser
--

CREATE SEQUENCE api.artist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE api.artist_id_seq OWNER TO superuser;

--
-- Name: artist_id_seq; Type: SEQUENCE OWNED BY; Schema: api; Owner: superuser
--

ALTER SEQUENCE api.artist_id_seq OWNED BY api.artist.id;


--
-- Name: customer; Type: TABLE; Schema: api; Owner: superuser
--

CREATE TABLE api.customer (
    id integer NOT NULL,
    name character varying(80) NOT NULL,
    email character varying(80) NOT NULL,
    phone character varying(80) NOT NULL,
    info text
);


ALTER TABLE api.customer OWNER TO superuser;

--
-- Name: customer_id_seq; Type: SEQUENCE; Schema: api; Owner: superuser
--

CREATE SEQUENCE api.customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE api.customer_id_seq OWNER TO superuser;

--
-- Name: customer_id_seq; Type: SEQUENCE OWNED BY; Schema: api; Owner: superuser
--

ALTER SEQUENCE api.customer_id_seq OWNED BY api.customer.id;


--
-- Name: stock; Type: TABLE; Schema: api; Owner: superuser
--

CREATE TABLE api.stock (
    id integer NOT NULL,
    title character varying(80),
    address character varying(80),
    phone character varying(80)
);


ALTER TABLE api.stock OWNER TO superuser;

--
-- Name: stock_id_seq; Type: SEQUENCE; Schema: api; Owner: superuser
--

CREATE SEQUENCE api.stock_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE api.stock_id_seq OWNER TO superuser;

--
-- Name: stock_id_seq; Type: SEQUENCE OWNED BY; Schema: api; Owner: superuser
--

ALTER SEQUENCE api.stock_id_seq OWNED BY api.stock.id;


--
-- Name: art id; Type: DEFAULT; Schema: api; Owner: superuser
--

ALTER TABLE ONLY api.art ALTER COLUMN id SET DEFAULT nextval('api.art_id_seq'::regclass);


--
-- Name: art_edition id; Type: DEFAULT; Schema: api; Owner: superuser
--

ALTER TABLE ONLY api.art_edition ALTER COLUMN id SET DEFAULT nextval('api.art_edition_id_seq'::regclass);


--
-- Name: art_image id; Type: DEFAULT; Schema: api; Owner: superuser
--

ALTER TABLE ONLY api.art_image ALTER COLUMN id SET DEFAULT nextval('api.art_image_id_seq'::regclass);


--
-- Name: artist id; Type: DEFAULT; Schema: api; Owner: superuser
--

ALTER TABLE ONLY api.artist ALTER COLUMN id SET DEFAULT nextval('api.artist_id_seq'::regclass);


--
-- Name: customer id; Type: DEFAULT; Schema: api; Owner: superuser
--

ALTER TABLE ONLY api.customer ALTER COLUMN id SET DEFAULT nextval('api.customer_id_seq'::regclass);


--
-- Name: stock id; Type: DEFAULT; Schema: api; Owner: superuser
--

ALTER TABLE ONLY api.stock ALTER COLUMN id SET DEFAULT nextval('api.stock_id_seq'::regclass);


--
-- Data for Name: art; Type: TABLE DATA; Schema: api; Owner: superuser
--

COPY api.art (id, title, year, addeddate, artist_id) FROM stdin;
1	kek	1998	2021-03-11 19:02:42.902	1
\.


--
-- Data for Name: art_edition; Type: TABLE DATA; Schema: api; Owner: superuser
--

COPY api.art_edition (id, stock_id, framed, sold, archived, sold_info, edition_info, price, discount, republish_date, art_id) FROM stdin;
1	1	t	t	t	34	342	12	0.100000000000000006	2018-03-13	1
\.


--
-- Data for Name: art_edition_to_customer; Type: TABLE DATA; Schema: api; Owner: superuser
--

COPY api.art_edition_to_customer (edition_id, customer_id) FROM stdin;
1	1
\.


--
-- Data for Name: art_image; Type: TABLE DATA; Schema: api; Owner: superuser
--

COPY api.art_image (id, imageurl, art_id) FROM stdin;
1	345345	1
\.


--
-- Data for Name: artist; Type: TABLE DATA; Schema: api; Owner: superuser
--

COPY api.artist (name, surname, phone, info, id) FROM stdin;
kek	lol	+3806423432	dfasdfsaf	1
\.


--
-- Data for Name: customer; Type: TABLE DATA; Schema: api; Owner: superuser
--

COPY api.customer (id, name, email, phone, info) FROM stdin;
1	Test	kraken@live.ru	+45353	53453
\.


--
-- Data for Name: stock; Type: TABLE DATA; Schema: api; Owner: superuser
--

COPY api.stock (id, title, address, phone) FROM stdin;
1	dfdsdfsd	qwrfdfsf	+3956665
2	erqw	qwer	qwr
3	asfd	asf	sdfaf
4	asdfa	asdf	asdf
5	asdf	asdf	asf
6	qwerqw	qerqw	qewrqw
7	qerqw	qwrw	qwer
8	qwer	qwer	qwer
9	qwer	qwerq	rqwerq
10	dfs	sdfs	sdsfs
11	lkjlkj	dfgdG	GFD
12	lkjlkj	lkl;	lkjl
13	sdfgs	sdgf	sdfg
\.


--
-- Name: art_edition_id_seq; Type: SEQUENCE SET; Schema: api; Owner: superuser
--

SELECT pg_catalog.setval('api.art_edition_id_seq', 1, true);


--
-- Name: art_id_seq; Type: SEQUENCE SET; Schema: api; Owner: superuser
--

SELECT pg_catalog.setval('api.art_id_seq', 1, false);


--
-- Name: art_image_id_seq; Type: SEQUENCE SET; Schema: api; Owner: superuser
--

SELECT pg_catalog.setval('api.art_image_id_seq', 1, true);


--
-- Name: artist_id_seq; Type: SEQUENCE SET; Schema: api; Owner: superuser
--

SELECT pg_catalog.setval('api.artist_id_seq', 1, true);


--
-- Name: customer_id_seq; Type: SEQUENCE SET; Schema: api; Owner: superuser
--

SELECT pg_catalog.setval('api.customer_id_seq', 1, true);


--
-- Name: stock_id_seq; Type: SEQUENCE SET; Schema: api; Owner: superuser
--

SELECT pg_catalog.setval('api.stock_id_seq', 13, true);


--
-- Name: art_edition art_edition_pkey; Type: CONSTRAINT; Schema: api; Owner: superuser
--

ALTER TABLE ONLY api.art_edition
    ADD CONSTRAINT art_edition_pkey PRIMARY KEY (id);


--
-- Name: art_image art_image_pkey; Type: CONSTRAINT; Schema: api; Owner: superuser
--

ALTER TABLE ONLY api.art_image
    ADD CONSTRAINT art_image_pkey PRIMARY KEY (id);


--
-- Name: art art_pkey; Type: CONSTRAINT; Schema: api; Owner: superuser
--

ALTER TABLE ONLY api.art
    ADD CONSTRAINT art_pkey PRIMARY KEY (id);


--
-- Name: artist artist_id_pk; Type: CONSTRAINT; Schema: api; Owner: superuser
--

ALTER TABLE ONLY api.artist
    ADD CONSTRAINT artist_id_pk PRIMARY KEY (id);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: api; Owner: superuser
--

ALTER TABLE ONLY api.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


--
-- Name: stock stock_pkey; Type: CONSTRAINT; Schema: api; Owner: superuser
--

ALTER TABLE ONLY api.stock
    ADD CONSTRAINT stock_pkey PRIMARY KEY (id);


--
-- Name: art_edition_id_uindex; Type: INDEX; Schema: api; Owner: superuser
--

CREATE UNIQUE INDEX art_edition_id_uindex ON api.art_edition USING btree (id);


--
-- Name: art_edition_to_customer_edition_id_customer_id_index; Type: INDEX; Schema: api; Owner: superuser
--

CREATE INDEX art_edition_to_customer_edition_id_customer_id_index ON api.art_edition_to_customer USING btree (edition_id, customer_id);


--
-- Name: art_id_uindex; Type: INDEX; Schema: api; Owner: superuser
--

CREATE UNIQUE INDEX art_id_uindex ON api.art USING btree (id);


--
-- Name: art_image_id_uindex; Type: INDEX; Schema: api; Owner: superuser
--

CREATE UNIQUE INDEX art_image_id_uindex ON api.art_image USING btree (id);


--
-- Name: artist_id_uindex; Type: INDEX; Schema: api; Owner: superuser
--

CREATE UNIQUE INDEX artist_id_uindex ON api.artist USING btree (id);


--
-- Name: customer_id_uindex; Type: INDEX; Schema: api; Owner: superuser
--

CREATE UNIQUE INDEX customer_id_uindex ON api.customer USING btree (id);


--
-- Name: stock_id_uindex; Type: INDEX; Schema: api; Owner: superuser
--

CREATE UNIQUE INDEX stock_id_uindex ON api.stock USING btree (id);


--
-- Name: art art_artist_id_fk; Type: FK CONSTRAINT; Schema: api; Owner: superuser
--

ALTER TABLE ONLY api.art
    ADD CONSTRAINT art_artist_id_fk FOREIGN KEY (artist_id) REFERENCES api.artist(id) ON DELETE CASCADE;


--
-- Name: art_edition art_edition_art_id_fk; Type: FK CONSTRAINT; Schema: api; Owner: superuser
--

ALTER TABLE ONLY api.art_edition
    ADD CONSTRAINT art_edition_art_id_fk FOREIGN KEY (art_id) REFERENCES api.art(id) ON DELETE CASCADE;


--
-- Name: art_edition art_edition_stock_id_fk; Type: FK CONSTRAINT; Schema: api; Owner: superuser
--

ALTER TABLE ONLY api.art_edition
    ADD CONSTRAINT art_edition_stock_id_fk FOREIGN KEY (stock_id) REFERENCES api.stock(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: art_edition_to_customer art_edition_to_customer_art_edition_id_fk; Type: FK CONSTRAINT; Schema: api; Owner: superuser
--

ALTER TABLE ONLY api.art_edition_to_customer
    ADD CONSTRAINT art_edition_to_customer_art_edition_id_fk FOREIGN KEY (edition_id) REFERENCES api.art_edition(id) ON DELETE CASCADE;


--
-- Name: art_edition_to_customer art_edition_to_customer_customer_id_fk; Type: FK CONSTRAINT; Schema: api; Owner: superuser
--

ALTER TABLE ONLY api.art_edition_to_customer
    ADD CONSTRAINT art_edition_to_customer_customer_id_fk FOREIGN KEY (customer_id) REFERENCES api.customer(id) ON DELETE CASCADE;


--
-- Name: art_image art_image_art_id_fk; Type: FK CONSTRAINT; Schema: api; Owner: superuser
--

ALTER TABLE ONLY api.art_image
    ADD CONSTRAINT art_image_art_id_fk FOREIGN KEY (art_id) REFERENCES api.art(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: TABLE art; Type: ACL; Schema: api; Owner: superuser
--

GRANT ALL ON TABLE api.art TO authenticator;


--
-- Name: TABLE art_edition; Type: ACL; Schema: api; Owner: superuser
--

GRANT ALL ON TABLE api.art_edition TO authenticator;


--
-- Name: TABLE art_image; Type: ACL; Schema: api; Owner: superuser
--

GRANT ALL ON TABLE api.art_image TO authenticator;


--
-- Name: TABLE artist; Type: ACL; Schema: api; Owner: superuser
--

GRANT ALL ON TABLE api.artist TO authenticator;


--
-- Name: TABLE customer; Type: ACL; Schema: api; Owner: superuser
--

GRANT ALL ON TABLE api.customer TO authenticator;


--
-- Name: TABLE stock; Type: ACL; Schema: api; Owner: superuser
--

GRANT ALL ON TABLE api.stock TO authenticator;


--
-- Name: SEQUENCE stock_id_seq; Type: ACL; Schema: api; Owner: superuser
--

GRANT ALL ON SEQUENCE api.stock_id_seq TO authenticator;


--