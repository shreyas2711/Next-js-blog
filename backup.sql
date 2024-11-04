--
-- PostgreSQL database dump
--

-- Dumped from database version 15.5
-- Dumped by pg_dump version 15.5

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
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_permissions OWNER TO postgres;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_id_seq OWNER TO postgres;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.admin_permissions_role_links OWNER TO postgres;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_role_links_id_seq OWNER TO postgres;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_roles OWNER TO postgres;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_roles_id_seq OWNER TO postgres;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_users OWNER TO postgres;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO postgres;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);


ALTER TABLE public.admin_users_roles_links OWNER TO postgres;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_roles_links_id_seq OWNER TO postgres;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;


--
-- Name: articles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.articles (
    id integer NOT NULL,
    title character varying(255),
    description text,
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.articles OWNER TO postgres;

--
-- Name: articles_authors_bio_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.articles_authors_bio_links (
    id integer NOT NULL,
    article_id integer,
    author_id integer,
    article_order double precision
);


ALTER TABLE public.articles_authors_bio_links OWNER TO postgres;

--
-- Name: articles_authors_bio_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.articles_authors_bio_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_authors_bio_links_id_seq OWNER TO postgres;

--
-- Name: articles_authors_bio_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.articles_authors_bio_links_id_seq OWNED BY public.articles_authors_bio_links.id;


--
-- Name: articles_category_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.articles_category_links (
    id integer NOT NULL,
    article_id integer,
    category_id integer,
    article_order double precision
);


ALTER TABLE public.articles_category_links OWNER TO postgres;

--
-- Name: articles_category_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.articles_category_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_category_links_id_seq OWNER TO postgres;

--
-- Name: articles_category_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.articles_category_links_id_seq OWNED BY public.articles_category_links.id;


--
-- Name: articles_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.articles_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.articles_components OWNER TO postgres;

--
-- Name: articles_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.articles_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_components_id_seq OWNER TO postgres;

--
-- Name: articles_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.articles_components_id_seq OWNED BY public.articles_components.id;


--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_id_seq OWNER TO postgres;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- Name: authors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authors (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.authors OWNER TO postgres;

--
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_id_seq OWNER TO postgres;

--
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255),
    slug character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: components_elements_features; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_elements_features (
    id integer NOT NULL,
    title character varying(255),
    description text,
    show_link boolean,
    new_tab boolean,
    url character varying(255),
    text character varying(255)
);


ALTER TABLE public.components_elements_features OWNER TO postgres;

--
-- Name: components_elements_features_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_elements_features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_features_id_seq OWNER TO postgres;

--
-- Name: components_elements_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_elements_features_id_seq OWNED BY public.components_elements_features.id;


--
-- Name: components_elements_logos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_elements_logos (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_elements_logos OWNER TO postgres;

--
-- Name: components_elements_logos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_elements_logos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_logos_id_seq OWNER TO postgres;

--
-- Name: components_elements_logos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_elements_logos_id_seq OWNED BY public.components_elements_logos.id;


--
-- Name: components_elements_notification_banners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_elements_notification_banners (
    id integer NOT NULL,
    type character varying(255),
    heading character varying(255),
    text text,
    show boolean
);


ALTER TABLE public.components_elements_notification_banners OWNER TO postgres;

--
-- Name: components_elements_notification_banners_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_elements_notification_banners_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_elements_notification_banners_components OWNER TO postgres;

--
-- Name: components_elements_notification_banners_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_elements_notification_banners_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_notification_banners_components_id_seq OWNER TO postgres;

--
-- Name: components_elements_notification_banners_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_elements_notification_banners_components_id_seq OWNED BY public.components_elements_notification_banners_components.id;


--
-- Name: components_elements_notification_banners_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_elements_notification_banners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_notification_banners_id_seq OWNER TO postgres;

--
-- Name: components_elements_notification_banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_elements_notification_banners_id_seq OWNED BY public.components_elements_notification_banners.id;


--
-- Name: components_elements_plans; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_elements_plans (
    id integer NOT NULL,
    name character varying(255),
    description text,
    is_recommended boolean,
    price numeric(10,2),
    price_period character varying(255)
);


ALTER TABLE public.components_elements_plans OWNER TO postgres;

--
-- Name: components_elements_plans_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_elements_plans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_plans_id_seq OWNER TO postgres;

--
-- Name: components_elements_plans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_elements_plans_id_seq OWNED BY public.components_elements_plans.id;


--
-- Name: components_elements_plans_product_features_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_elements_plans_product_features_links (
    id integer NOT NULL,
    plan_id integer,
    product_feature_id integer,
    product_feature_order double precision
);


ALTER TABLE public.components_elements_plans_product_features_links OWNER TO postgres;

--
-- Name: components_elements_plans_product_features_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_elements_plans_product_features_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_plans_product_features_links_id_seq OWNER TO postgres;

--
-- Name: components_elements_plans_product_features_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_elements_plans_product_features_links_id_seq OWNED BY public.components_elements_plans_product_features_links.id;


--
-- Name: components_layout_features; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_layout_features (
    id integer NOT NULL,
    heading character varying(255),
    description text
);


ALTER TABLE public.components_layout_features OWNER TO postgres;

--
-- Name: components_layout_features_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_layout_features_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_layout_features_components OWNER TO postgres;

--
-- Name: components_layout_features_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_layout_features_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_layout_features_components_id_seq OWNER TO postgres;

--
-- Name: components_layout_features_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_layout_features_components_id_seq OWNED BY public.components_layout_features_components.id;


--
-- Name: components_layout_features_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_layout_features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_layout_features_id_seq OWNER TO postgres;

--
-- Name: components_layout_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_layout_features_id_seq OWNED BY public.components_layout_features.id;


--
-- Name: components_layout_footers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_layout_footers (
    id integer NOT NULL
);


ALTER TABLE public.components_layout_footers OWNER TO postgres;

--
-- Name: components_layout_footers_categories_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_layout_footers_categories_links (
    id integer NOT NULL,
    footer_id integer,
    category_id integer,
    category_order double precision
);


ALTER TABLE public.components_layout_footers_categories_links OWNER TO postgres;

--
-- Name: components_layout_footers_categories_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_layout_footers_categories_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_layout_footers_categories_links_id_seq OWNER TO postgres;

--
-- Name: components_layout_footers_categories_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_layout_footers_categories_links_id_seq OWNED BY public.components_layout_footers_categories_links.id;


--
-- Name: components_layout_footers_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_layout_footers_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_layout_footers_components OWNER TO postgres;

--
-- Name: components_layout_footers_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_layout_footers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_layout_footers_components_id_seq OWNER TO postgres;

--
-- Name: components_layout_footers_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_layout_footers_components_id_seq OWNED BY public.components_layout_footers_components.id;


--
-- Name: components_layout_footers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_layout_footers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_layout_footers_id_seq OWNER TO postgres;

--
-- Name: components_layout_footers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_layout_footers_id_seq OWNED BY public.components_layout_footers.id;


--
-- Name: components_layout_logos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_layout_logos (
    id integer NOT NULL,
    logo_text character varying(255)
);


ALTER TABLE public.components_layout_logos OWNER TO postgres;

--
-- Name: components_layout_logos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_layout_logos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_layout_logos_id_seq OWNER TO postgres;

--
-- Name: components_layout_logos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_layout_logos_id_seq OWNED BY public.components_layout_logos.id;


--
-- Name: components_layout_navbars; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_layout_navbars (
    id integer NOT NULL
);


ALTER TABLE public.components_layout_navbars OWNER TO postgres;

--
-- Name: components_layout_navbars_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_layout_navbars_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_layout_navbars_components OWNER TO postgres;

--
-- Name: components_layout_navbars_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_layout_navbars_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_layout_navbars_components_id_seq OWNER TO postgres;

--
-- Name: components_layout_navbars_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_layout_navbars_components_id_seq OWNED BY public.components_layout_navbars_components.id;


--
-- Name: components_layout_navbars_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_layout_navbars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_layout_navbars_id_seq OWNER TO postgres;

--
-- Name: components_layout_navbars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_layout_navbars_id_seq OWNED BY public.components_layout_navbars.id;


--
-- Name: components_links_buttons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_links_buttons (
    id integer NOT NULL,
    url character varying(255),
    new_tab boolean,
    text character varying(255),
    type character varying(255)
);


ALTER TABLE public.components_links_buttons OWNER TO postgres;

--
-- Name: components_links_buttons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_links_buttons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_buttons_id_seq OWNER TO postgres;

--
-- Name: components_links_buttons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_links_buttons_id_seq OWNED BY public.components_links_buttons.id;


--
-- Name: components_links_footer_sections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_links_footer_sections (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_links_footer_sections OWNER TO postgres;

--
-- Name: components_links_footer_sections_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_links_footer_sections_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_links_footer_sections_components OWNER TO postgres;

--
-- Name: components_links_footer_sections_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_links_footer_sections_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_footer_sections_components_id_seq OWNER TO postgres;

--
-- Name: components_links_footer_sections_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_links_footer_sections_components_id_seq OWNED BY public.components_links_footer_sections_components.id;


--
-- Name: components_links_footer_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_links_footer_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_footer_sections_id_seq OWNER TO postgres;

--
-- Name: components_links_footer_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_links_footer_sections_id_seq OWNED BY public.components_links_footer_sections.id;


--
-- Name: components_links_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_links_links (
    id integer NOT NULL,
    url character varying(255),
    new_tab boolean,
    text character varying(255)
);


ALTER TABLE public.components_links_links OWNER TO postgres;

--
-- Name: components_links_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_links_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_links_id_seq OWNER TO postgres;

--
-- Name: components_links_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_links_links_id_seq OWNED BY public.components_links_links.id;


--
-- Name: components_links_simple_buttons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_links_simple_buttons (
    id integer NOT NULL,
    text character varying(255),
    type character varying(255)
);


ALTER TABLE public.components_links_simple_buttons OWNER TO postgres;

--
-- Name: components_links_simple_buttons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_links_simple_buttons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_simple_buttons_id_seq OWNER TO postgres;

--
-- Name: components_links_simple_buttons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_links_simple_buttons_id_seq OWNED BY public.components_links_simple_buttons.id;


--
-- Name: components_links_social_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_links_social_links (
    id integer NOT NULL,
    url character varying(255),
    new_tab boolean,
    text character varying(255),
    social character varying(255)
);


ALTER TABLE public.components_links_social_links OWNER TO postgres;

--
-- Name: components_links_social_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_links_social_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_social_links_id_seq OWNER TO postgres;

--
-- Name: components_links_social_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_links_social_links_id_seq OWNED BY public.components_links_social_links.id;


--
-- Name: components_meta_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_meta_metadata (
    id integer NOT NULL,
    meta_title character varying(255),
    meta_description text
);


ALTER TABLE public.components_meta_metadata OWNER TO postgres;

--
-- Name: components_meta_metadata_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_meta_metadata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_meta_metadata_id_seq OWNER TO postgres;

--
-- Name: components_meta_metadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_meta_metadata_id_seq OWNED BY public.components_meta_metadata.id;


--
-- Name: components_sections_headings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_sections_headings (
    id integer NOT NULL,
    heading character varying(255),
    description character varying(255)
);


ALTER TABLE public.components_sections_headings OWNER TO postgres;

--
-- Name: components_sections_headings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_sections_headings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_headings_id_seq OWNER TO postgres;

--
-- Name: components_sections_headings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_sections_headings_id_seq OWNED BY public.components_sections_headings.id;


--
-- Name: components_sections_lead_forms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_sections_lead_forms (
    id integer NOT NULL,
    title character varying(255),
    email_placeholder character varying(255),
    location character varying(255),
    description text
);


ALTER TABLE public.components_sections_lead_forms OWNER TO postgres;

--
-- Name: components_sections_lead_forms_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_sections_lead_forms_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_sections_lead_forms_components OWNER TO postgres;

--
-- Name: components_sections_lead_forms_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_sections_lead_forms_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_lead_forms_components_id_seq OWNER TO postgres;

--
-- Name: components_sections_lead_forms_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_sections_lead_forms_components_id_seq OWNED BY public.components_sections_lead_forms_components.id;


--
-- Name: components_sections_lead_forms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_sections_lead_forms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_lead_forms_id_seq OWNER TO postgres;

--
-- Name: components_sections_lead_forms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_sections_lead_forms_id_seq OWNED BY public.components_sections_lead_forms.id;


--
-- Name: components_sections_pricings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_sections_pricings (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_sections_pricings OWNER TO postgres;

--
-- Name: components_sections_pricings_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_sections_pricings_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_sections_pricings_components OWNER TO postgres;

--
-- Name: components_sections_pricings_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_sections_pricings_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_pricings_components_id_seq OWNER TO postgres;

--
-- Name: components_sections_pricings_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_sections_pricings_components_id_seq OWNED BY public.components_sections_pricings_components.id;


--
-- Name: components_sections_pricings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_sections_pricings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_pricings_id_seq OWNER TO postgres;

--
-- Name: components_sections_pricings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_sections_pricings_id_seq OWNED BY public.components_sections_pricings.id;


--
-- Name: components_sections_rich_texts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_sections_rich_texts (
    id integer NOT NULL,
    content text
);


ALTER TABLE public.components_sections_rich_texts OWNER TO postgres;

--
-- Name: components_sections_rich_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_sections_rich_texts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_rich_texts_id_seq OWNER TO postgres;

--
-- Name: components_sections_rich_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_sections_rich_texts_id_seq OWNED BY public.components_sections_rich_texts.id;


--
-- Name: components_sections_video_embeds; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_sections_video_embeds (
    id integer NOT NULL,
    url character varying(255)
);


ALTER TABLE public.components_sections_video_embeds OWNER TO postgres;

--
-- Name: components_sections_video_embeds_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_sections_video_embeds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_video_embeds_id_seq OWNER TO postgres;

--
-- Name: components_sections_video_embeds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_sections_video_embeds_id_seq OWNED BY public.components_sections_video_embeds.id;


--
-- Name: components_shared_media; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_media (
    id integer NOT NULL
);


ALTER TABLE public.components_shared_media OWNER TO postgres;

--
-- Name: components_shared_media_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_media_id_seq OWNER TO postgres;

--
-- Name: components_shared_media_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_media_id_seq OWNED BY public.components_shared_media.id;


--
-- Name: components_shared_quotes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_quotes (
    id integer NOT NULL,
    title character varying(255),
    body text,
    author character varying(255)
);


ALTER TABLE public.components_shared_quotes OWNER TO postgres;

--
-- Name: components_shared_quotes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_quotes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_quotes_id_seq OWNER TO postgres;

--
-- Name: components_shared_quotes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_quotes_id_seq OWNED BY public.components_shared_quotes.id;


--
-- Name: components_shared_rich_texts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_rich_texts (
    id integer NOT NULL,
    body text
);


ALTER TABLE public.components_shared_rich_texts OWNER TO postgres;

--
-- Name: components_shared_rich_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_rich_texts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_rich_texts_id_seq OWNER TO postgres;

--
-- Name: components_shared_rich_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_rich_texts_id_seq OWNED BY public.components_shared_rich_texts.id;


--
-- Name: components_shared_seos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_seos (
    id integer NOT NULL,
    meta_title character varying(255),
    meta_description text
);


ALTER TABLE public.components_shared_seos OWNER TO postgres;

--
-- Name: components_shared_seos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_seos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_seos_id_seq OWNER TO postgres;

--
-- Name: components_shared_seos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_seos_id_seq OWNED BY public.components_shared_seos.id;


--
-- Name: components_shared_sliders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_sliders (
    id integer NOT NULL
);


ALTER TABLE public.components_shared_sliders OWNER TO postgres;

--
-- Name: components_shared_sliders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_sliders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_sliders_id_seq OWNER TO postgres;

--
-- Name: components_shared_sliders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_sliders_id_seq OWNED BY public.components_shared_sliders.id;


--
-- Name: components_slices_bottom_actions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_slices_bottom_actions (
    id integer NOT NULL,
    title character varying(255),
    description text
);


ALTER TABLE public.components_slices_bottom_actions OWNER TO postgres;

--
-- Name: components_slices_bottom_actions_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_slices_bottom_actions_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_slices_bottom_actions_components OWNER TO postgres;

--
-- Name: components_slices_bottom_actions_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_slices_bottom_actions_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_bottom_actions_components_id_seq OWNER TO postgres;

--
-- Name: components_slices_bottom_actions_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_slices_bottom_actions_components_id_seq OWNED BY public.components_slices_bottom_actions_components.id;


--
-- Name: components_slices_bottom_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_slices_bottom_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_bottom_actions_id_seq OWNER TO postgres;

--
-- Name: components_slices_bottom_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_slices_bottom_actions_id_seq OWNED BY public.components_slices_bottom_actions.id;


--
-- Name: components_slices_feature_columns; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_slices_feature_columns (
    id integer NOT NULL,
    title character varying(255),
    description text
);


ALTER TABLE public.components_slices_feature_columns OWNER TO postgres;

--
-- Name: components_slices_feature_columns_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_slices_feature_columns_groups (
    id integer NOT NULL
);


ALTER TABLE public.components_slices_feature_columns_groups OWNER TO postgres;

--
-- Name: components_slices_feature_columns_groups_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_slices_feature_columns_groups_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_slices_feature_columns_groups_components OWNER TO postgres;

--
-- Name: components_slices_feature_columns_groups_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_slices_feature_columns_groups_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_feature_columns_groups_components_id_seq OWNER TO postgres;

--
-- Name: components_slices_feature_columns_groups_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_slices_feature_columns_groups_components_id_seq OWNED BY public.components_slices_feature_columns_groups_components.id;


--
-- Name: components_slices_feature_columns_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_slices_feature_columns_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_feature_columns_groups_id_seq OWNER TO postgres;

--
-- Name: components_slices_feature_columns_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_slices_feature_columns_groups_id_seq OWNED BY public.components_slices_feature_columns_groups.id;


--
-- Name: components_slices_feature_columns_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_slices_feature_columns_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_feature_columns_id_seq OWNER TO postgres;

--
-- Name: components_slices_feature_columns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_slices_feature_columns_id_seq OWNED BY public.components_slices_feature_columns.id;


--
-- Name: components_slices_feature_rows; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_slices_feature_rows (
    id integer NOT NULL,
    title character varying(255),
    description text
);


ALTER TABLE public.components_slices_feature_rows OWNER TO postgres;

--
-- Name: components_slices_feature_rows_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_slices_feature_rows_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_slices_feature_rows_components OWNER TO postgres;

--
-- Name: components_slices_feature_rows_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_slices_feature_rows_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_feature_rows_components_id_seq OWNER TO postgres;

--
-- Name: components_slices_feature_rows_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_slices_feature_rows_components_id_seq OWNED BY public.components_slices_feature_rows_components.id;


--
-- Name: components_slices_feature_rows_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_slices_feature_rows_groups (
    id integer NOT NULL
);


ALTER TABLE public.components_slices_feature_rows_groups OWNER TO postgres;

--
-- Name: components_slices_feature_rows_groups_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_slices_feature_rows_groups_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_slices_feature_rows_groups_components OWNER TO postgres;

--
-- Name: components_slices_feature_rows_groups_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_slices_feature_rows_groups_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_feature_rows_groups_components_id_seq OWNER TO postgres;

--
-- Name: components_slices_feature_rows_groups_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_slices_feature_rows_groups_components_id_seq OWNED BY public.components_slices_feature_rows_groups_components.id;


--
-- Name: components_slices_feature_rows_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_slices_feature_rows_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_feature_rows_groups_id_seq OWNER TO postgres;

--
-- Name: components_slices_feature_rows_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_slices_feature_rows_groups_id_seq OWNED BY public.components_slices_feature_rows_groups.id;


--
-- Name: components_slices_feature_rows_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_slices_feature_rows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_feature_rows_id_seq OWNER TO postgres;

--
-- Name: components_slices_feature_rows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_slices_feature_rows_id_seq OWNED BY public.components_slices_feature_rows.id;


--
-- Name: components_slices_heroes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_slices_heroes (
    id integer NOT NULL,
    title character varying(255),
    description character varying(255)
);


ALTER TABLE public.components_slices_heroes OWNER TO postgres;

--
-- Name: components_slices_heroes_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_slices_heroes_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_slices_heroes_components OWNER TO postgres;

--
-- Name: components_slices_heroes_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_slices_heroes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_heroes_components_id_seq OWNER TO postgres;

--
-- Name: components_slices_heroes_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_slices_heroes_components_id_seq OWNED BY public.components_slices_heroes_components.id;


--
-- Name: components_slices_heroes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_slices_heroes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_heroes_id_seq OWNER TO postgres;

--
-- Name: components_slices_heroes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_slices_heroes_id_seq OWNED BY public.components_slices_heroes.id;


--
-- Name: components_slices_large_videos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_slices_large_videos (
    id integer NOT NULL,
    title character varying(255),
    description character varying(255)
);


ALTER TABLE public.components_slices_large_videos OWNER TO postgres;

--
-- Name: components_slices_large_videos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_slices_large_videos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_large_videos_id_seq OWNER TO postgres;

--
-- Name: components_slices_large_videos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_slices_large_videos_id_seq OWNED BY public.components_slices_large_videos.id;


--
-- Name: components_slices_testimonials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_slices_testimonials (
    id integer NOT NULL,
    text text,
    author_name character varying(255)
);


ALTER TABLE public.components_slices_testimonials OWNER TO postgres;

--
-- Name: components_slices_testimonials_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_slices_testimonials_groups (
    id integer NOT NULL,
    title character varying(255),
    description text
);


ALTER TABLE public.components_slices_testimonials_groups OWNER TO postgres;

--
-- Name: components_slices_testimonials_groups_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_slices_testimonials_groups_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_slices_testimonials_groups_components OWNER TO postgres;

--
-- Name: components_slices_testimonials_groups_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_slices_testimonials_groups_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_testimonials_groups_components_id_seq OWNER TO postgres;

--
-- Name: components_slices_testimonials_groups_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_slices_testimonials_groups_components_id_seq OWNED BY public.components_slices_testimonials_groups_components.id;


--
-- Name: components_slices_testimonials_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_slices_testimonials_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_testimonials_groups_id_seq OWNER TO postgres;

--
-- Name: components_slices_testimonials_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_slices_testimonials_groups_id_seq OWNED BY public.components_slices_testimonials_groups.id;


--
-- Name: components_slices_testimonials_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_slices_testimonials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_testimonials_id_seq OWNER TO postgres;

--
-- Name: components_slices_testimonials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_slices_testimonials_id_seq OWNED BY public.components_slices_testimonials.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.files OWNER TO postgres;

--
-- Name: files_folder_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);


ALTER TABLE public.files_folder_links OWNER TO postgres;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_folder_links_id_seq OWNER TO postgres;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_id_seq OWNER TO postgres;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_morphs OWNER TO postgres;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_related_morphs_id_seq OWNER TO postgres;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;


--
-- Name: globals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.globals (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.globals OWNER TO postgres;

--
-- Name: globals_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.globals_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.globals_components OWNER TO postgres;

--
-- Name: globals_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.globals_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.globals_components_id_seq OWNER TO postgres;

--
-- Name: globals_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.globals_components_id_seq OWNED BY public.globals_components.id;


--
-- Name: globals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.globals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.globals_id_seq OWNER TO postgres;

--
-- Name: globals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.globals_id_seq OWNED BY public.globals.id;


--
-- Name: globals_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.globals_localizations_links (
    id integer NOT NULL,
    global_id integer,
    inv_global_id integer,
    global_order double precision
);


ALTER TABLE public.globals_localizations_links OWNER TO postgres;

--
-- Name: globals_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.globals_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.globals_localizations_links_id_seq OWNER TO postgres;

--
-- Name: globals_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.globals_localizations_links_id_seq OWNED BY public.globals_localizations_links.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.i18n_locale OWNER TO postgres;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locale_id_seq OWNER TO postgres;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: lead_form_submissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lead_form_submissions (
    id integer NOT NULL,
    email character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.lead_form_submissions OWNER TO postgres;

--
-- Name: lead_form_submissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lead_form_submissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lead_form_submissions_id_seq OWNER TO postgres;

--
-- Name: lead_form_submissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lead_form_submissions_id_seq OWNED BY public.lead_form_submissions.id;


--
-- Name: pages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages (
    id integer NOT NULL,
    short_name character varying(255),
    slug character varying(255),
    heading character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.pages OWNER TO postgres;

--
-- Name: pages_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.pages_components OWNER TO postgres;

--
-- Name: pages_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_components_id_seq OWNER TO postgres;

--
-- Name: pages_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pages_components_id_seq OWNED BY public.pages_components.id;


--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_id_seq OWNER TO postgres;

--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;


--
-- Name: pages_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_localizations_links (
    id integer NOT NULL,
    page_id integer,
    inv_page_id integer,
    page_order double precision
);


ALTER TABLE public.pages_localizations_links OWNER TO postgres;

--
-- Name: pages_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pages_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_localizations_links_id_seq OWNER TO postgres;

--
-- Name: pages_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pages_localizations_links_id_seq OWNED BY public.pages_localizations_links.id;


--
-- Name: product_features; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_features (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.product_features OWNER TO postgres;

--
-- Name: product_features_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_features_id_seq OWNER TO postgres;

--
-- Name: product_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_features_id_seq OWNED BY public.product_features.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO postgres;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_id_seq OWNER TO postgres;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_links OWNER TO postgres;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_token_links_id_seq OWNER TO postgres;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_tokens OWNER TO postgres;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_tokens_id_seq OWNER TO postgres;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO postgres;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_core_store_settings_id_seq OWNER TO postgres;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO postgres;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_database_schema_id_seq OWNER TO postgres;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO postgres;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_migrations_id_seq OWNER TO postgres;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO postgres;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_token_permissions_id_seq OWNER TO postgres;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- Name: strapi_transfer_token_permissions_token_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_links OWNER TO postgres;

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_token_permissions_token_links_id_seq OWNER TO postgres;

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;


--
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO postgres;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_tokens_id_seq OWNER TO postgres;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO postgres;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO postgres;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_permissions OWNER TO postgres;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_id_seq OWNER TO postgres;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.up_permissions_role_links OWNER TO postgres;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_role_links_id_seq OWNER TO postgres;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_roles OWNER TO postgres;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_roles_id_seq OWNER TO postgres;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_users OWNER TO postgres;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_id_seq OWNER TO postgres;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);


ALTER TABLE public.up_users_role_links OWNER TO postgres;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_role_links_id_seq OWNER TO postgres;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.upload_folders OWNER TO postgres;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_id_seq OWNER TO postgres;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);


ALTER TABLE public.upload_folders_parent_links OWNER TO postgres;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_parent_links_id_seq OWNER TO postgres;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);


--
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- Name: articles_authors_bio_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles_authors_bio_links ALTER COLUMN id SET DEFAULT nextval('public.articles_authors_bio_links_id_seq'::regclass);


--
-- Name: articles_category_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles_category_links ALTER COLUMN id SET DEFAULT nextval('public.articles_category_links_id_seq'::regclass);


--
-- Name: articles_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles_components ALTER COLUMN id SET DEFAULT nextval('public.articles_components_id_seq'::regclass);


--
-- Name: authors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: components_elements_features id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_elements_features ALTER COLUMN id SET DEFAULT nextval('public.components_elements_features_id_seq'::regclass);


--
-- Name: components_elements_logos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_elements_logos ALTER COLUMN id SET DEFAULT nextval('public.components_elements_logos_id_seq'::regclass);


--
-- Name: components_elements_notification_banners id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_elements_notification_banners ALTER COLUMN id SET DEFAULT nextval('public.components_elements_notification_banners_id_seq'::regclass);


--
-- Name: components_elements_notification_banners_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_elements_notification_banners_components ALTER COLUMN id SET DEFAULT nextval('public.components_elements_notification_banners_components_id_seq'::regclass);


--
-- Name: components_elements_plans id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_elements_plans ALTER COLUMN id SET DEFAULT nextval('public.components_elements_plans_id_seq'::regclass);


--
-- Name: components_elements_plans_product_features_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_elements_plans_product_features_links ALTER COLUMN id SET DEFAULT nextval('public.components_elements_plans_product_features_links_id_seq'::regclass);


--
-- Name: components_layout_features id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_layout_features ALTER COLUMN id SET DEFAULT nextval('public.components_layout_features_id_seq'::regclass);


--
-- Name: components_layout_features_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_layout_features_components ALTER COLUMN id SET DEFAULT nextval('public.components_layout_features_components_id_seq'::regclass);


--
-- Name: components_layout_footers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_layout_footers ALTER COLUMN id SET DEFAULT nextval('public.components_layout_footers_id_seq'::regclass);


--
-- Name: components_layout_footers_categories_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_layout_footers_categories_links ALTER COLUMN id SET DEFAULT nextval('public.components_layout_footers_categories_links_id_seq'::regclass);


--
-- Name: components_layout_footers_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_layout_footers_components ALTER COLUMN id SET DEFAULT nextval('public.components_layout_footers_components_id_seq'::regclass);


--
-- Name: components_layout_logos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_layout_logos ALTER COLUMN id SET DEFAULT nextval('public.components_layout_logos_id_seq'::regclass);


--
-- Name: components_layout_navbars id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_layout_navbars ALTER COLUMN id SET DEFAULT nextval('public.components_layout_navbars_id_seq'::regclass);


--
-- Name: components_layout_navbars_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_layout_navbars_components ALTER COLUMN id SET DEFAULT nextval('public.components_layout_navbars_components_id_seq'::regclass);


--
-- Name: components_links_buttons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_links_buttons ALTER COLUMN id SET DEFAULT nextval('public.components_links_buttons_id_seq'::regclass);


--
-- Name: components_links_footer_sections id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_links_footer_sections ALTER COLUMN id SET DEFAULT nextval('public.components_links_footer_sections_id_seq'::regclass);


--
-- Name: components_links_footer_sections_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_links_footer_sections_components ALTER COLUMN id SET DEFAULT nextval('public.components_links_footer_sections_components_id_seq'::regclass);


--
-- Name: components_links_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_links_links ALTER COLUMN id SET DEFAULT nextval('public.components_links_links_id_seq'::regclass);


--
-- Name: components_links_simple_buttons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_links_simple_buttons ALTER COLUMN id SET DEFAULT nextval('public.components_links_simple_buttons_id_seq'::regclass);


--
-- Name: components_links_social_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_links_social_links ALTER COLUMN id SET DEFAULT nextval('public.components_links_social_links_id_seq'::regclass);


--
-- Name: components_meta_metadata id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_meta_metadata ALTER COLUMN id SET DEFAULT nextval('public.components_meta_metadata_id_seq'::regclass);


--
-- Name: components_sections_headings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_sections_headings ALTER COLUMN id SET DEFAULT nextval('public.components_sections_headings_id_seq'::regclass);


--
-- Name: components_sections_lead_forms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_sections_lead_forms ALTER COLUMN id SET DEFAULT nextval('public.components_sections_lead_forms_id_seq'::regclass);


--
-- Name: components_sections_lead_forms_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_sections_lead_forms_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_lead_forms_components_id_seq'::regclass);


--
-- Name: components_sections_pricings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_sections_pricings ALTER COLUMN id SET DEFAULT nextval('public.components_sections_pricings_id_seq'::regclass);


--
-- Name: components_sections_pricings_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_sections_pricings_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_pricings_components_id_seq'::regclass);


--
-- Name: components_sections_rich_texts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_sections_rich_texts ALTER COLUMN id SET DEFAULT nextval('public.components_sections_rich_texts_id_seq'::regclass);


--
-- Name: components_sections_video_embeds id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_sections_video_embeds ALTER COLUMN id SET DEFAULT nextval('public.components_sections_video_embeds_id_seq'::regclass);


--
-- Name: components_shared_media id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_media ALTER COLUMN id SET DEFAULT nextval('public.components_shared_media_id_seq'::regclass);


--
-- Name: components_shared_quotes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_quotes ALTER COLUMN id SET DEFAULT nextval('public.components_shared_quotes_id_seq'::regclass);


--
-- Name: components_shared_rich_texts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_rich_texts ALTER COLUMN id SET DEFAULT nextval('public.components_shared_rich_texts_id_seq'::regclass);


--
-- Name: components_shared_seos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_seos ALTER COLUMN id SET DEFAULT nextval('public.components_shared_seos_id_seq'::regclass);


--
-- Name: components_shared_sliders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_sliders ALTER COLUMN id SET DEFAULT nextval('public.components_shared_sliders_id_seq'::regclass);


--
-- Name: components_slices_bottom_actions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_bottom_actions ALTER COLUMN id SET DEFAULT nextval('public.components_slices_bottom_actions_id_seq'::regclass);


--
-- Name: components_slices_bottom_actions_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_bottom_actions_components ALTER COLUMN id SET DEFAULT nextval('public.components_slices_bottom_actions_components_id_seq'::regclass);


--
-- Name: components_slices_feature_columns id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_feature_columns ALTER COLUMN id SET DEFAULT nextval('public.components_slices_feature_columns_id_seq'::regclass);


--
-- Name: components_slices_feature_columns_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_feature_columns_groups ALTER COLUMN id SET DEFAULT nextval('public.components_slices_feature_columns_groups_id_seq'::regclass);


--
-- Name: components_slices_feature_columns_groups_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_feature_columns_groups_components ALTER COLUMN id SET DEFAULT nextval('public.components_slices_feature_columns_groups_components_id_seq'::regclass);


--
-- Name: components_slices_feature_rows id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_feature_rows ALTER COLUMN id SET DEFAULT nextval('public.components_slices_feature_rows_id_seq'::regclass);


--
-- Name: components_slices_feature_rows_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_feature_rows_components ALTER COLUMN id SET DEFAULT nextval('public.components_slices_feature_rows_components_id_seq'::regclass);


--
-- Name: components_slices_feature_rows_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_feature_rows_groups ALTER COLUMN id SET DEFAULT nextval('public.components_slices_feature_rows_groups_id_seq'::regclass);


--
-- Name: components_slices_feature_rows_groups_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_feature_rows_groups_components ALTER COLUMN id SET DEFAULT nextval('public.components_slices_feature_rows_groups_components_id_seq'::regclass);


--
-- Name: components_slices_heroes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_heroes ALTER COLUMN id SET DEFAULT nextval('public.components_slices_heroes_id_seq'::regclass);


--
-- Name: components_slices_heroes_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_heroes_components ALTER COLUMN id SET DEFAULT nextval('public.components_slices_heroes_components_id_seq'::regclass);


--
-- Name: components_slices_large_videos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_large_videos ALTER COLUMN id SET DEFAULT nextval('public.components_slices_large_videos_id_seq'::regclass);


--
-- Name: components_slices_testimonials id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_testimonials ALTER COLUMN id SET DEFAULT nextval('public.components_slices_testimonials_id_seq'::regclass);


--
-- Name: components_slices_testimonials_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_testimonials_groups ALTER COLUMN id SET DEFAULT nextval('public.components_slices_testimonials_groups_id_seq'::regclass);


--
-- Name: components_slices_testimonials_groups_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_testimonials_groups_components ALTER COLUMN id SET DEFAULT nextval('public.components_slices_testimonials_groups_components_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);


--
-- Name: files_related_morphs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);


--
-- Name: globals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.globals ALTER COLUMN id SET DEFAULT nextval('public.globals_id_seq'::regclass);


--
-- Name: globals_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.globals_components ALTER COLUMN id SET DEFAULT nextval('public.globals_components_id_seq'::regclass);


--
-- Name: globals_localizations_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.globals_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.globals_localizations_links_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: lead_form_submissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lead_form_submissions ALTER COLUMN id SET DEFAULT nextval('public.lead_form_submissions_id_seq'::regclass);


--
-- Name: pages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);


--
-- Name: pages_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_components ALTER COLUMN id SET DEFAULT nextval('public.pages_components_id_seq'::regclass);


--
-- Name: pages_localizations_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.pages_localizations_links_id_seq'::regclass);


--
-- Name: product_features id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_features ALTER COLUMN id SET DEFAULT nextval('public.product_features_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::content-manager.explorer.create	api::article.article	{"fields": ["title", "description", "slug", "cover", "category", "blocks", "authorsBio", "seo.metaTitle", "seo.metaDescription", "seo.shareImage"]}	[]	2024-11-02 00:29:00.366	2024-11-02 00:29:00.366	\N	\N
2	plugin::content-manager.explorer.create	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2024-11-02 00:29:00.376	2024-11-02 00:29:00.376	\N	\N
3	plugin::content-manager.explorer.create	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2024-11-02 00:29:00.38	2024-11-02 00:29:00.38	\N	\N
4	plugin::content-manager.explorer.create	api::global.global	{"fields": ["metadata.metaTitle", "metadata.metaDescription", "favicon", "notificationBanner.type", "notificationBanner.heading", "notificationBanner.text", "notificationBanner.show", "notificationBanner.link.url", "notificationBanner.link.newTab", "notificationBanner.link.text", "navbar.links.url", "navbar.links.newTab", "navbar.links.text", "navbar.button.url", "navbar.button.newTab", "navbar.button.text", "navbar.button.type", "navbar.navbarLogo.logoImg", "navbar.navbarLogo.logoText", "footer.footerLogo.logoImg", "footer.footerLogo.logoText", "footer.menuLinks.url", "footer.menuLinks.newTab", "footer.menuLinks.text", "footer.legalLinks.url", "footer.legalLinks.newTab", "footer.legalLinks.text", "footer.socialLinks.url", "footer.socialLinks.newTab", "footer.socialLinks.text", "footer.socialLinks.social", "footer.categories"]}	[]	2024-11-02 00:29:00.385	2024-11-02 00:29:00.385	\N	\N
5	plugin::content-manager.explorer.create	api::lead-form-submission.lead-form-submission	{"fields": ["email", "status"]}	[]	2024-11-02 00:29:00.389	2024-11-02 00:29:00.389	\N	\N
6	plugin::content-manager.explorer.create	api::page.page	{"fields": ["shortName", "metadata.metaTitle", "metadata.metaDescription", "contentSections", "slug", "heading", "description"]}	[]	2024-11-02 00:29:00.394	2024-11-02 00:29:00.394	\N	\N
7	plugin::content-manager.explorer.create	api::product-feature.product-feature	{"fields": ["name"]}	[]	2024-11-02 00:29:00.398	2024-11-02 00:29:00.398	\N	\N
8	plugin::content-manager.explorer.read	api::article.article	{"fields": ["title", "description", "slug", "cover", "category", "blocks", "authorsBio", "seo.metaTitle", "seo.metaDescription", "seo.shareImage"]}	[]	2024-11-02 00:29:00.402	2024-11-02 00:29:00.402	\N	\N
9	plugin::content-manager.explorer.read	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2024-11-02 00:29:00.407	2024-11-02 00:29:00.407	\N	\N
10	plugin::content-manager.explorer.read	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2024-11-02 00:29:00.411	2024-11-02 00:29:00.411	\N	\N
11	plugin::content-manager.explorer.read	api::global.global	{"fields": ["metadata.metaTitle", "metadata.metaDescription", "favicon", "notificationBanner.type", "notificationBanner.heading", "notificationBanner.text", "notificationBanner.show", "notificationBanner.link.url", "notificationBanner.link.newTab", "notificationBanner.link.text", "navbar.links.url", "navbar.links.newTab", "navbar.links.text", "navbar.button.url", "navbar.button.newTab", "navbar.button.text", "navbar.button.type", "navbar.navbarLogo.logoImg", "navbar.navbarLogo.logoText", "footer.footerLogo.logoImg", "footer.footerLogo.logoText", "footer.menuLinks.url", "footer.menuLinks.newTab", "footer.menuLinks.text", "footer.legalLinks.url", "footer.legalLinks.newTab", "footer.legalLinks.text", "footer.socialLinks.url", "footer.socialLinks.newTab", "footer.socialLinks.text", "footer.socialLinks.social", "footer.categories"]}	[]	2024-11-02 00:29:00.415	2024-11-02 00:29:00.415	\N	\N
12	plugin::content-manager.explorer.read	api::lead-form-submission.lead-form-submission	{"fields": ["email", "status"]}	[]	2024-11-02 00:29:00.419	2024-11-02 00:29:00.419	\N	\N
13	plugin::content-manager.explorer.read	api::page.page	{"fields": ["shortName", "metadata.metaTitle", "metadata.metaDescription", "contentSections", "slug", "heading", "description"]}	[]	2024-11-02 00:29:00.423	2024-11-02 00:29:00.423	\N	\N
14	plugin::content-manager.explorer.read	api::product-feature.product-feature	{"fields": ["name"]}	[]	2024-11-02 00:29:00.427	2024-11-02 00:29:00.427	\N	\N
15	plugin::content-manager.explorer.update	api::article.article	{"fields": ["title", "description", "slug", "cover", "category", "blocks", "authorsBio", "seo.metaTitle", "seo.metaDescription", "seo.shareImage"]}	[]	2024-11-02 00:29:00.431	2024-11-02 00:29:00.431	\N	\N
16	plugin::content-manager.explorer.update	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2024-11-02 00:29:00.436	2024-11-02 00:29:00.436	\N	\N
17	plugin::content-manager.explorer.update	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2024-11-02 00:29:00.44	2024-11-02 00:29:00.44	\N	\N
18	plugin::content-manager.explorer.update	api::global.global	{"fields": ["metadata.metaTitle", "metadata.metaDescription", "favicon", "notificationBanner.type", "notificationBanner.heading", "notificationBanner.text", "notificationBanner.show", "notificationBanner.link.url", "notificationBanner.link.newTab", "notificationBanner.link.text", "navbar.links.url", "navbar.links.newTab", "navbar.links.text", "navbar.button.url", "navbar.button.newTab", "navbar.button.text", "navbar.button.type", "navbar.navbarLogo.logoImg", "navbar.navbarLogo.logoText", "footer.footerLogo.logoImg", "footer.footerLogo.logoText", "footer.menuLinks.url", "footer.menuLinks.newTab", "footer.menuLinks.text", "footer.legalLinks.url", "footer.legalLinks.newTab", "footer.legalLinks.text", "footer.socialLinks.url", "footer.socialLinks.newTab", "footer.socialLinks.text", "footer.socialLinks.social", "footer.categories"]}	[]	2024-11-02 00:29:00.445	2024-11-02 00:29:00.445	\N	\N
19	plugin::content-manager.explorer.update	api::lead-form-submission.lead-form-submission	{"fields": ["email", "status"]}	[]	2024-11-02 00:29:00.449	2024-11-02 00:29:00.449	\N	\N
20	plugin::content-manager.explorer.update	api::page.page	{"fields": ["shortName", "metadata.metaTitle", "metadata.metaDescription", "contentSections", "slug", "heading", "description"]}	[]	2024-11-02 00:29:00.453	2024-11-02 00:29:00.453	\N	\N
21	plugin::content-manager.explorer.update	api::product-feature.product-feature	{"fields": ["name"]}	[]	2024-11-02 00:29:00.457	2024-11-02 00:29:00.457	\N	\N
22	plugin::content-manager.explorer.delete	api::article.article	{}	[]	2024-11-02 00:29:00.461	2024-11-02 00:29:00.461	\N	\N
23	plugin::content-manager.explorer.delete	api::author.author	{}	[]	2024-11-02 00:29:00.465	2024-11-02 00:29:00.465	\N	\N
24	plugin::content-manager.explorer.delete	api::category.category	{}	[]	2024-11-02 00:29:00.469	2024-11-02 00:29:00.469	\N	\N
26	plugin::content-manager.explorer.delete	api::lead-form-submission.lead-form-submission	{}	[]	2024-11-02 00:29:00.477	2024-11-02 00:29:00.477	\N	\N
28	plugin::content-manager.explorer.delete	api::product-feature.product-feature	{}	[]	2024-11-02 00:29:00.485	2024-11-02 00:29:00.485	\N	\N
29	plugin::content-manager.explorer.publish	api::article.article	{}	[]	2024-11-02 00:29:00.489	2024-11-02 00:29:00.489	\N	\N
31	plugin::content-manager.explorer.publish	api::product-feature.product-feature	{}	[]	2024-11-02 00:29:00.497	2024-11-02 00:29:00.497	\N	\N
32	plugin::upload.read	\N	{}	[]	2024-11-02 00:29:00.502	2024-11-02 00:29:00.502	\N	\N
33	plugin::upload.configure-view	\N	{}	[]	2024-11-02 00:29:00.506	2024-11-02 00:29:00.506	\N	\N
34	plugin::upload.assets.create	\N	{}	[]	2024-11-02 00:29:00.51	2024-11-02 00:29:00.51	\N	\N
35	plugin::upload.assets.update	\N	{}	[]	2024-11-02 00:29:00.514	2024-11-02 00:29:00.514	\N	\N
36	plugin::upload.assets.download	\N	{}	[]	2024-11-02 00:29:00.518	2024-11-02 00:29:00.518	\N	\N
37	plugin::upload.assets.copy-link	\N	{}	[]	2024-11-02 00:29:00.523	2024-11-02 00:29:00.523	\N	\N
38	plugin::content-manager.explorer.create	api::article.article	{"fields": ["title", "description", "slug", "cover", "category", "blocks", "authorsBio", "seo.metaTitle", "seo.metaDescription", "seo.shareImage"]}	["admin::is-creator"]	2024-11-02 00:29:00.53	2024-11-02 00:29:00.53	\N	\N
39	plugin::content-manager.explorer.create	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	["admin::is-creator"]	2024-11-02 00:29:00.534	2024-11-02 00:29:00.534	\N	\N
40	plugin::content-manager.explorer.create	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	["admin::is-creator"]	2024-11-02 00:29:00.539	2024-11-02 00:29:00.539	\N	\N
41	plugin::content-manager.explorer.create	api::global.global	{"fields": ["metadata.metaTitle", "metadata.metaDescription", "favicon", "notificationBanner.type", "notificationBanner.heading", "notificationBanner.text", "notificationBanner.show", "notificationBanner.link.url", "notificationBanner.link.newTab", "notificationBanner.link.text", "navbar.links.url", "navbar.links.newTab", "navbar.links.text", "navbar.button.url", "navbar.button.newTab", "navbar.button.text", "navbar.button.type", "navbar.navbarLogo.logoImg", "navbar.navbarLogo.logoText", "footer.footerLogo.logoImg", "footer.footerLogo.logoText", "footer.menuLinks.url", "footer.menuLinks.newTab", "footer.menuLinks.text", "footer.legalLinks.url", "footer.legalLinks.newTab", "footer.legalLinks.text", "footer.socialLinks.url", "footer.socialLinks.newTab", "footer.socialLinks.text", "footer.socialLinks.social", "footer.categories"]}	["admin::is-creator"]	2024-11-02 00:29:00.543	2024-11-02 00:29:00.543	\N	\N
42	plugin::content-manager.explorer.create	api::lead-form-submission.lead-form-submission	{"fields": ["email", "status"]}	["admin::is-creator"]	2024-11-02 00:29:00.547	2024-11-02 00:29:00.547	\N	\N
43	plugin::content-manager.explorer.create	api::page.page	{"fields": ["shortName", "metadata.metaTitle", "metadata.metaDescription", "contentSections", "slug", "heading", "description"]}	["admin::is-creator"]	2024-11-02 00:29:00.551	2024-11-02 00:29:00.551	\N	\N
44	plugin::content-manager.explorer.create	api::product-feature.product-feature	{"fields": ["name"]}	["admin::is-creator"]	2024-11-02 00:29:00.555	2024-11-02 00:29:00.555	\N	\N
45	plugin::content-manager.explorer.read	api::article.article	{"fields": ["title", "description", "slug", "cover", "category", "blocks", "authorsBio", "seo.metaTitle", "seo.metaDescription", "seo.shareImage"]}	["admin::is-creator"]	2024-11-02 00:29:00.56	2024-11-02 00:29:00.56	\N	\N
46	plugin::content-manager.explorer.read	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	["admin::is-creator"]	2024-11-02 00:29:00.564	2024-11-02 00:29:00.564	\N	\N
47	plugin::content-manager.explorer.read	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	["admin::is-creator"]	2024-11-02 00:29:00.568	2024-11-02 00:29:00.568	\N	\N
48	plugin::content-manager.explorer.read	api::global.global	{"fields": ["metadata.metaTitle", "metadata.metaDescription", "favicon", "notificationBanner.type", "notificationBanner.heading", "notificationBanner.text", "notificationBanner.show", "notificationBanner.link.url", "notificationBanner.link.newTab", "notificationBanner.link.text", "navbar.links.url", "navbar.links.newTab", "navbar.links.text", "navbar.button.url", "navbar.button.newTab", "navbar.button.text", "navbar.button.type", "navbar.navbarLogo.logoImg", "navbar.navbarLogo.logoText", "footer.footerLogo.logoImg", "footer.footerLogo.logoText", "footer.menuLinks.url", "footer.menuLinks.newTab", "footer.menuLinks.text", "footer.legalLinks.url", "footer.legalLinks.newTab", "footer.legalLinks.text", "footer.socialLinks.url", "footer.socialLinks.newTab", "footer.socialLinks.text", "footer.socialLinks.social", "footer.categories"]}	["admin::is-creator"]	2024-11-02 00:29:00.572	2024-11-02 00:29:00.572	\N	\N
49	plugin::content-manager.explorer.read	api::lead-form-submission.lead-form-submission	{"fields": ["email", "status"]}	["admin::is-creator"]	2024-11-02 00:29:00.575	2024-11-02 00:29:00.575	\N	\N
50	plugin::content-manager.explorer.read	api::page.page	{"fields": ["shortName", "metadata.metaTitle", "metadata.metaDescription", "contentSections", "slug", "heading", "description"]}	["admin::is-creator"]	2024-11-02 00:29:00.578	2024-11-02 00:29:00.578	\N	\N
51	plugin::content-manager.explorer.read	api::product-feature.product-feature	{"fields": ["name"]}	["admin::is-creator"]	2024-11-02 00:29:00.581	2024-11-02 00:29:00.581	\N	\N
52	plugin::content-manager.explorer.update	api::article.article	{"fields": ["title", "description", "slug", "cover", "category", "blocks", "authorsBio", "seo.metaTitle", "seo.metaDescription", "seo.shareImage"]}	["admin::is-creator"]	2024-11-02 00:29:00.585	2024-11-02 00:29:00.585	\N	\N
53	plugin::content-manager.explorer.update	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	["admin::is-creator"]	2024-11-02 00:29:00.588	2024-11-02 00:29:00.588	\N	\N
54	plugin::content-manager.explorer.update	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	["admin::is-creator"]	2024-11-02 00:29:00.591	2024-11-02 00:29:00.591	\N	\N
55	plugin::content-manager.explorer.update	api::global.global	{"fields": ["metadata.metaTitle", "metadata.metaDescription", "favicon", "notificationBanner.type", "notificationBanner.heading", "notificationBanner.text", "notificationBanner.show", "notificationBanner.link.url", "notificationBanner.link.newTab", "notificationBanner.link.text", "navbar.links.url", "navbar.links.newTab", "navbar.links.text", "navbar.button.url", "navbar.button.newTab", "navbar.button.text", "navbar.button.type", "navbar.navbarLogo.logoImg", "navbar.navbarLogo.logoText", "footer.footerLogo.logoImg", "footer.footerLogo.logoText", "footer.menuLinks.url", "footer.menuLinks.newTab", "footer.menuLinks.text", "footer.legalLinks.url", "footer.legalLinks.newTab", "footer.legalLinks.text", "footer.socialLinks.url", "footer.socialLinks.newTab", "footer.socialLinks.text", "footer.socialLinks.social", "footer.categories"]}	["admin::is-creator"]	2024-11-02 00:29:00.595	2024-11-02 00:29:00.595	\N	\N
56	plugin::content-manager.explorer.update	api::lead-form-submission.lead-form-submission	{"fields": ["email", "status"]}	["admin::is-creator"]	2024-11-02 00:29:00.603	2024-11-02 00:29:00.603	\N	\N
57	plugin::content-manager.explorer.update	api::page.page	{"fields": ["shortName", "metadata.metaTitle", "metadata.metaDescription", "contentSections", "slug", "heading", "description"]}	["admin::is-creator"]	2024-11-02 00:29:00.61	2024-11-02 00:29:00.61	\N	\N
58	plugin::content-manager.explorer.update	api::product-feature.product-feature	{"fields": ["name"]}	["admin::is-creator"]	2024-11-02 00:29:00.617	2024-11-02 00:29:00.617	\N	\N
156	admin::transfer.tokens.read	\N	{}	[]	2024-11-02 00:29:01.056	2024-11-02 00:29:01.056	\N	\N
59	plugin::content-manager.explorer.delete	api::article.article	{}	["admin::is-creator"]	2024-11-02 00:29:00.621	2024-11-02 00:29:00.621	\N	\N
60	plugin::content-manager.explorer.delete	api::author.author	{}	["admin::is-creator"]	2024-11-02 00:29:00.626	2024-11-02 00:29:00.626	\N	\N
61	plugin::content-manager.explorer.delete	api::category.category	{}	["admin::is-creator"]	2024-11-02 00:29:00.63	2024-11-02 00:29:00.63	\N	\N
63	plugin::content-manager.explorer.delete	api::lead-form-submission.lead-form-submission	{}	["admin::is-creator"]	2024-11-02 00:29:00.641	2024-11-02 00:29:00.641	\N	\N
65	plugin::content-manager.explorer.delete	api::product-feature.product-feature	{}	["admin::is-creator"]	2024-11-02 00:29:00.649	2024-11-02 00:29:00.649	\N	\N
66	plugin::upload.read	\N	{}	["admin::is-creator"]	2024-11-02 00:29:00.653	2024-11-02 00:29:00.653	\N	\N
67	plugin::upload.configure-view	\N	{}	[]	2024-11-02 00:29:00.657	2024-11-02 00:29:00.657	\N	\N
68	plugin::upload.assets.create	\N	{}	[]	2024-11-02 00:29:00.662	2024-11-02 00:29:00.662	\N	\N
69	plugin::upload.assets.update	\N	{}	["admin::is-creator"]	2024-11-02 00:29:00.666	2024-11-02 00:29:00.666	\N	\N
70	plugin::upload.assets.download	\N	{}	[]	2024-11-02 00:29:00.67	2024-11-02 00:29:00.67	\N	\N
71	plugin::upload.assets.copy-link	\N	{}	[]	2024-11-02 00:29:00.674	2024-11-02 00:29:00.674	\N	\N
72	plugin::content-manager.explorer.create	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2024-11-02 00:29:00.706	2024-11-02 00:29:00.706	\N	\N
73	plugin::content-manager.explorer.create	api::article.article	{"fields": ["title", "description", "slug", "cover", "category", "blocks", "authorsBio", "seo.metaTitle", "seo.metaDescription", "seo.shareImage"]}	[]	2024-11-02 00:29:00.711	2024-11-02 00:29:00.711	\N	\N
74	plugin::content-manager.explorer.create	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2024-11-02 00:29:00.716	2024-11-02 00:29:00.716	\N	\N
75	plugin::content-manager.explorer.create	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2024-11-02 00:29:00.72	2024-11-02 00:29:00.72	\N	\N
76	plugin::content-manager.explorer.create	api::global.global	{"fields": ["metadata.metaTitle", "metadata.metaDescription", "favicon", "notificationBanner.type", "notificationBanner.heading", "notificationBanner.text", "notificationBanner.show", "notificationBanner.link.url", "notificationBanner.link.newTab", "notificationBanner.link.text", "navbar.links.url", "navbar.links.newTab", "navbar.links.text", "navbar.button.url", "navbar.button.newTab", "navbar.button.text", "navbar.button.type", "navbar.navbarLogo.logoImg", "navbar.navbarLogo.logoText", "footer.footerLogo.logoImg", "footer.footerLogo.logoText", "footer.menuLinks.url", "footer.menuLinks.newTab", "footer.menuLinks.text", "footer.legalLinks.url", "footer.legalLinks.newTab", "footer.legalLinks.text", "footer.socialLinks.url", "footer.socialLinks.newTab", "footer.socialLinks.text", "footer.socialLinks.social", "footer.categories"], "locales": ["en"]}	[]	2024-11-02 00:29:00.724	2024-11-02 00:29:00.724	\N	\N
77	plugin::content-manager.explorer.create	api::lead-form-submission.lead-form-submission	{"fields": ["email", "status"]}	[]	2024-11-02 00:29:00.728	2024-11-02 00:29:00.728	\N	\N
78	plugin::content-manager.explorer.create	api::page.page	{"fields": ["shortName", "metadata.metaTitle", "metadata.metaDescription", "contentSections", "slug", "heading", "description"], "locales": ["en"]}	[]	2024-11-02 00:29:00.731	2024-11-02 00:29:00.731	\N	\N
79	plugin::content-manager.explorer.create	api::product-feature.product-feature	{"fields": ["name"]}	[]	2024-11-02 00:29:00.735	2024-11-02 00:29:00.735	\N	\N
80	plugin::content-manager.explorer.read	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2024-11-02 00:29:00.739	2024-11-02 00:29:00.739	\N	\N
81	plugin::content-manager.explorer.read	api::article.article	{"fields": ["title", "description", "slug", "cover", "category", "blocks", "authorsBio", "seo.metaTitle", "seo.metaDescription", "seo.shareImage"]}	[]	2024-11-02 00:29:00.743	2024-11-02 00:29:00.743	\N	\N
82	plugin::content-manager.explorer.read	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2024-11-02 00:29:00.747	2024-11-02 00:29:00.747	\N	\N
83	plugin::content-manager.explorer.read	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2024-11-02 00:29:00.752	2024-11-02 00:29:00.752	\N	\N
84	plugin::content-manager.explorer.read	api::global.global	{"fields": ["metadata.metaTitle", "metadata.metaDescription", "favicon", "notificationBanner.type", "notificationBanner.heading", "notificationBanner.text", "notificationBanner.show", "notificationBanner.link.url", "notificationBanner.link.newTab", "notificationBanner.link.text", "navbar.links.url", "navbar.links.newTab", "navbar.links.text", "navbar.button.url", "navbar.button.newTab", "navbar.button.text", "navbar.button.type", "navbar.navbarLogo.logoImg", "navbar.navbarLogo.logoText", "footer.footerLogo.logoImg", "footer.footerLogo.logoText", "footer.menuLinks.url", "footer.menuLinks.newTab", "footer.menuLinks.text", "footer.legalLinks.url", "footer.legalLinks.newTab", "footer.legalLinks.text", "footer.socialLinks.url", "footer.socialLinks.newTab", "footer.socialLinks.text", "footer.socialLinks.social", "footer.categories"], "locales": ["en"]}	[]	2024-11-02 00:29:00.757	2024-11-02 00:29:00.757	\N	\N
85	plugin::content-manager.explorer.read	api::lead-form-submission.lead-form-submission	{"fields": ["email", "status"]}	[]	2024-11-02 00:29:00.768	2024-11-02 00:29:00.768	\N	\N
86	plugin::content-manager.explorer.read	api::page.page	{"fields": ["shortName", "metadata.metaTitle", "metadata.metaDescription", "contentSections", "slug", "heading", "description"], "locales": ["en"]}	[]	2024-11-02 00:29:00.772	2024-11-02 00:29:00.772	\N	\N
87	plugin::content-manager.explorer.read	api::product-feature.product-feature	{"fields": ["name"]}	[]	2024-11-02 00:29:00.777	2024-11-02 00:29:00.777	\N	\N
88	plugin::content-manager.explorer.update	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2024-11-02 00:29:00.781	2024-11-02 00:29:00.781	\N	\N
89	plugin::content-manager.explorer.update	api::article.article	{"fields": ["title", "description", "slug", "cover", "category", "blocks", "authorsBio", "seo.metaTitle", "seo.metaDescription", "seo.shareImage"]}	[]	2024-11-02 00:29:00.785	2024-11-02 00:29:00.785	\N	\N
90	plugin::content-manager.explorer.update	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2024-11-02 00:29:00.79	2024-11-02 00:29:00.79	\N	\N
91	plugin::content-manager.explorer.update	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2024-11-02 00:29:00.793	2024-11-02 00:29:00.793	\N	\N
157	admin::transfer.tokens.update	\N	{}	[]	2024-11-02 00:29:01.06	2024-11-02 00:29:01.06	\N	\N
158	admin::transfer.tokens.regenerate	\N	{}	[]	2024-11-02 00:29:01.063	2024-11-02 00:29:01.063	\N	\N
92	plugin::content-manager.explorer.update	api::global.global	{"fields": ["metadata.metaTitle", "metadata.metaDescription", "favicon", "notificationBanner.type", "notificationBanner.heading", "notificationBanner.text", "notificationBanner.show", "notificationBanner.link.url", "notificationBanner.link.newTab", "notificationBanner.link.text", "navbar.links.url", "navbar.links.newTab", "navbar.links.text", "navbar.button.url", "navbar.button.newTab", "navbar.button.text", "navbar.button.type", "navbar.navbarLogo.logoImg", "navbar.navbarLogo.logoText", "footer.footerLogo.logoImg", "footer.footerLogo.logoText", "footer.menuLinks.url", "footer.menuLinks.newTab", "footer.menuLinks.text", "footer.legalLinks.url", "footer.legalLinks.newTab", "footer.legalLinks.text", "footer.socialLinks.url", "footer.socialLinks.newTab", "footer.socialLinks.text", "footer.socialLinks.social", "footer.categories"], "locales": ["en"]}	[]	2024-11-02 00:29:00.798	2024-11-02 00:29:00.798	\N	\N
93	plugin::content-manager.explorer.update	api::lead-form-submission.lead-form-submission	{"fields": ["email", "status"]}	[]	2024-11-02 00:29:00.803	2024-11-02 00:29:00.803	\N	\N
94	plugin::content-manager.explorer.update	api::page.page	{"fields": ["shortName", "metadata.metaTitle", "metadata.metaDescription", "contentSections", "slug", "heading", "description"], "locales": ["en"]}	[]	2024-11-02 00:29:00.807	2024-11-02 00:29:00.807	\N	\N
95	plugin::content-manager.explorer.update	api::product-feature.product-feature	{"fields": ["name"]}	[]	2024-11-02 00:29:00.81	2024-11-02 00:29:00.81	\N	\N
96	plugin::content-manager.explorer.delete	plugin::users-permissions.user	{}	[]	2024-11-02 00:29:00.814	2024-11-02 00:29:00.814	\N	\N
97	plugin::content-manager.explorer.delete	api::article.article	{}	[]	2024-11-02 00:29:00.819	2024-11-02 00:29:00.819	\N	\N
98	plugin::content-manager.explorer.delete	api::author.author	{}	[]	2024-11-02 00:29:00.823	2024-11-02 00:29:00.823	\N	\N
99	plugin::content-manager.explorer.delete	api::category.category	{}	[]	2024-11-02 00:29:00.827	2024-11-02 00:29:00.827	\N	\N
100	plugin::content-manager.explorer.delete	api::global.global	{"locales": ["en"]}	[]	2024-11-02 00:29:00.831	2024-11-02 00:29:00.831	\N	\N
101	plugin::content-manager.explorer.delete	api::lead-form-submission.lead-form-submission	{}	[]	2024-11-02 00:29:00.835	2024-11-02 00:29:00.835	\N	\N
102	plugin::content-manager.explorer.delete	api::page.page	{"locales": ["en"]}	[]	2024-11-02 00:29:00.839	2024-11-02 00:29:00.839	\N	\N
103	plugin::content-manager.explorer.delete	api::product-feature.product-feature	{}	[]	2024-11-02 00:29:00.843	2024-11-02 00:29:00.843	\N	\N
104	plugin::content-manager.explorer.publish	api::article.article	{}	[]	2024-11-02 00:29:00.847	2024-11-02 00:29:00.847	\N	\N
105	plugin::content-manager.explorer.publish	api::page.page	{"locales": ["en"]}	[]	2024-11-02 00:29:00.852	2024-11-02 00:29:00.852	\N	\N
106	plugin::content-manager.explorer.publish	api::product-feature.product-feature	{}	[]	2024-11-02 00:29:00.856	2024-11-02 00:29:00.856	\N	\N
107	plugin::content-manager.single-types.configure-view	\N	{}	[]	2024-11-02 00:29:00.859	2024-11-02 00:29:00.859	\N	\N
108	plugin::content-manager.collection-types.configure-view	\N	{}	[]	2024-11-02 00:29:00.863	2024-11-02 00:29:00.863	\N	\N
109	plugin::content-manager.components.configure-layout	\N	{}	[]	2024-11-02 00:29:00.867	2024-11-02 00:29:00.867	\N	\N
110	plugin::content-type-builder.read	\N	{}	[]	2024-11-02 00:29:00.872	2024-11-02 00:29:00.872	\N	\N
111	plugin::email.settings.read	\N	{}	[]	2024-11-02 00:29:00.876	2024-11-02 00:29:00.876	\N	\N
112	plugin::upload.read	\N	{}	[]	2024-11-02 00:29:00.88	2024-11-02 00:29:00.88	\N	\N
113	plugin::upload.assets.create	\N	{}	[]	2024-11-02 00:29:00.885	2024-11-02 00:29:00.885	\N	\N
114	plugin::upload.assets.update	\N	{}	[]	2024-11-02 00:29:00.888	2024-11-02 00:29:00.888	\N	\N
115	plugin::upload.assets.download	\N	{}	[]	2024-11-02 00:29:00.892	2024-11-02 00:29:00.892	\N	\N
116	plugin::upload.assets.copy-link	\N	{}	[]	2024-11-02 00:29:00.896	2024-11-02 00:29:00.896	\N	\N
117	plugin::upload.configure-view	\N	{}	[]	2024-11-02 00:29:00.899	2024-11-02 00:29:00.899	\N	\N
118	plugin::upload.settings.read	\N	{}	[]	2024-11-02 00:29:00.903	2024-11-02 00:29:00.903	\N	\N
119	plugin::i18n.locale.create	\N	{}	[]	2024-11-02 00:29:00.907	2024-11-02 00:29:00.907	\N	\N
120	plugin::i18n.locale.read	\N	{}	[]	2024-11-02 00:29:00.912	2024-11-02 00:29:00.912	\N	\N
121	plugin::i18n.locale.update	\N	{}	[]	2024-11-02 00:29:00.916	2024-11-02 00:29:00.916	\N	\N
122	plugin::i18n.locale.delete	\N	{}	[]	2024-11-02 00:29:00.92	2024-11-02 00:29:00.92	\N	\N
123	plugin::users-permissions.roles.create	\N	{}	[]	2024-11-02 00:29:00.923	2024-11-02 00:29:00.923	\N	\N
124	plugin::users-permissions.roles.read	\N	{}	[]	2024-11-02 00:29:00.927	2024-11-02 00:29:00.927	\N	\N
125	plugin::users-permissions.roles.update	\N	{}	[]	2024-11-02 00:29:00.931	2024-11-02 00:29:00.931	\N	\N
126	plugin::users-permissions.roles.delete	\N	{}	[]	2024-11-02 00:29:00.935	2024-11-02 00:29:00.935	\N	\N
127	plugin::users-permissions.providers.read	\N	{}	[]	2024-11-02 00:29:00.939	2024-11-02 00:29:00.939	\N	\N
128	plugin::users-permissions.providers.update	\N	{}	[]	2024-11-02 00:29:00.943	2024-11-02 00:29:00.943	\N	\N
129	plugin::users-permissions.email-templates.read	\N	{}	[]	2024-11-02 00:29:00.947	2024-11-02 00:29:00.947	\N	\N
130	plugin::users-permissions.email-templates.update	\N	{}	[]	2024-11-02 00:29:00.951	2024-11-02 00:29:00.951	\N	\N
131	plugin::users-permissions.advanced-settings.read	\N	{}	[]	2024-11-02 00:29:00.954	2024-11-02 00:29:00.954	\N	\N
132	plugin::users-permissions.advanced-settings.update	\N	{}	[]	2024-11-02 00:29:00.958	2024-11-02 00:29:00.958	\N	\N
133	admin::marketplace.read	\N	{}	[]	2024-11-02 00:29:00.962	2024-11-02 00:29:00.962	\N	\N
134	admin::webhooks.create	\N	{}	[]	2024-11-02 00:29:00.966	2024-11-02 00:29:00.966	\N	\N
135	admin::webhooks.read	\N	{}	[]	2024-11-02 00:29:00.971	2024-11-02 00:29:00.971	\N	\N
136	admin::webhooks.update	\N	{}	[]	2024-11-02 00:29:00.974	2024-11-02 00:29:00.974	\N	\N
137	admin::webhooks.delete	\N	{}	[]	2024-11-02 00:29:00.978	2024-11-02 00:29:00.978	\N	\N
138	admin::users.create	\N	{}	[]	2024-11-02 00:29:00.982	2024-11-02 00:29:00.982	\N	\N
139	admin::users.read	\N	{}	[]	2024-11-02 00:29:00.986	2024-11-02 00:29:00.986	\N	\N
140	admin::users.update	\N	{}	[]	2024-11-02 00:29:00.99	2024-11-02 00:29:00.99	\N	\N
141	admin::users.delete	\N	{}	[]	2024-11-02 00:29:00.994	2024-11-02 00:29:00.994	\N	\N
142	admin::roles.create	\N	{}	[]	2024-11-02 00:29:00.998	2024-11-02 00:29:00.998	\N	\N
143	admin::roles.read	\N	{}	[]	2024-11-02 00:29:01.002	2024-11-02 00:29:01.002	\N	\N
144	admin::roles.update	\N	{}	[]	2024-11-02 00:29:01.007	2024-11-02 00:29:01.007	\N	\N
145	admin::roles.delete	\N	{}	[]	2024-11-02 00:29:01.011	2024-11-02 00:29:01.011	\N	\N
146	admin::api-tokens.access	\N	{}	[]	2024-11-02 00:29:01.015	2024-11-02 00:29:01.015	\N	\N
147	admin::api-tokens.create	\N	{}	[]	2024-11-02 00:29:01.019	2024-11-02 00:29:01.019	\N	\N
148	admin::api-tokens.read	\N	{}	[]	2024-11-02 00:29:01.022	2024-11-02 00:29:01.022	\N	\N
149	admin::api-tokens.update	\N	{}	[]	2024-11-02 00:29:01.027	2024-11-02 00:29:01.027	\N	\N
150	admin::api-tokens.regenerate	\N	{}	[]	2024-11-02 00:29:01.03	2024-11-02 00:29:01.03	\N	\N
151	admin::api-tokens.delete	\N	{}	[]	2024-11-02 00:29:01.034	2024-11-02 00:29:01.034	\N	\N
152	admin::project-settings.update	\N	{}	[]	2024-11-02 00:29:01.038	2024-11-02 00:29:01.038	\N	\N
153	admin::project-settings.read	\N	{}	[]	2024-11-02 00:29:01.042	2024-11-02 00:29:01.042	\N	\N
154	admin::transfer.tokens.access	\N	{}	[]	2024-11-02 00:29:01.046	2024-11-02 00:29:01.046	\N	\N
155	admin::transfer.tokens.create	\N	{}	[]	2024-11-02 00:29:01.05	2024-11-02 00:29:01.05	\N	\N
159	admin::transfer.tokens.delete	\N	{}	[]	2024-11-02 00:29:01.068	2024-11-02 00:29:01.068	\N	\N
\.


--
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	1	2	1
2	2	2	2
3	3	2	3
4	4	2	4
5	5	2	5
6	6	2	6
7	7	2	7
8	8	2	8
9	9	2	9
10	10	2	10
11	11	2	11
12	12	2	12
13	13	2	13
14	14	2	14
15	15	2	15
16	16	2	16
17	17	2	17
18	18	2	18
19	19	2	19
20	20	2	20
21	21	2	21
22	22	2	22
23	23	2	23
24	24	2	24
26	26	2	26
28	28	2	28
29	29	2	29
31	31	2	31
32	32	2	32
33	33	2	33
34	34	2	34
35	35	2	35
36	36	2	36
37	37	2	37
38	38	3	1
39	39	3	2
40	40	3	3
41	41	3	4
42	42	3	5
43	43	3	6
44	44	3	7
45	45	3	8
46	46	3	9
47	47	3	10
48	48	3	11
49	49	3	12
50	50	3	13
51	51	3	14
52	52	3	15
53	53	3	16
54	54	3	17
55	55	3	18
56	56	3	19
57	57	3	20
58	58	3	21
59	59	3	22
60	60	3	23
61	61	3	24
63	63	3	26
65	65	3	28
66	66	3	29
67	67	3	30
68	68	3	31
69	69	3	32
70	70	3	33
71	71	3	34
72	72	1	1
73	73	1	2
74	74	1	3
75	75	1	4
76	76	1	5
77	77	1	6
78	78	1	7
79	79	1	8
80	80	1	9
81	81	1	10
82	82	1	11
83	83	1	12
84	84	1	13
85	85	1	14
86	86	1	15
87	87	1	16
88	88	1	17
89	89	1	18
90	90	1	19
91	91	1	20
92	92	1	21
93	93	1	22
94	94	1	23
95	95	1	24
96	96	1	25
97	97	1	26
98	98	1	27
99	99	1	28
100	100	1	29
101	101	1	30
102	102	1	31
103	103	1	32
104	104	1	33
105	105	1	34
106	106	1	35
107	107	1	36
108	108	1	37
109	109	1	38
110	110	1	39
111	111	1	40
112	112	1	41
113	113	1	42
114	114	1	43
115	115	1	44
116	116	1	45
117	117	1	46
118	118	1	47
119	119	1	48
120	120	1	49
121	121	1	50
122	122	1	51
123	123	1	52
124	124	1	53
125	125	1	54
126	126	1	55
127	127	1	56
128	128	1	57
129	129	1	58
130	130	1	59
131	131	1	60
132	132	1	61
133	133	1	62
134	134	1	63
135	135	1	64
136	136	1	65
137	137	1	66
138	138	1	67
139	139	1	68
140	140	1	69
141	141	1	70
142	142	1	71
143	143	1	72
144	144	1	73
145	145	1	74
146	146	1	75
147	147	1	76
148	148	1	77
149	149	1	78
150	150	1	79
151	151	1	80
152	152	1	81
153	153	1	82
154	154	1	83
155	155	1	84
156	156	1	85
157	157	1	86
158	158	1	87
159	159	1	88
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2024-11-02 00:29:00.339	2024-11-02 00:29:00.339	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2024-11-02 00:29:00.35	2024-11-02 00:29:00.35	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2024-11-02 00:29:00.353	2024-11-02 00:29:00.353	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Shreyas	Kamath	\N	shreyas.kamath27@gmail.com	$2a$10$S.iZ50jJLSSSjMyNjIs/xOHPAEP/nz979WFEJ2SiFGNy1qUccHqQK	\N	\N	t	f	\N	2024-11-02 00:29:19.088	2024-11-02 00:29:19.088	\N	\N
\.


--
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
1	1	1	1	1
\.


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.articles (id, title, description, slug, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	Iphone se 4 set to launch soon	Iphone se 4 set to launch soon	iphone-se-45	2024-11-02 00:30:06.883	2024-11-02 19:27:57.361	2024-11-02 01:08:08.901	1	1
\.


--
-- Data for Name: articles_authors_bio_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.articles_authors_bio_links (id, article_id, author_id, article_order) FROM stdin;
1	1	1	0
\.


--
-- Data for Name: articles_category_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.articles_category_links (id, article_id, category_id, article_order) FROM stdin;
\.


--
-- Data for Name: articles_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.articles_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
3	1	1	shared.seo	seo	\N
10	1	1	shared.media	blocks	1
11	1	1	shared.rich-text	blocks	2
\.


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authors (id, name, email, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Shreyas kamath	shreyas.kamath775@gmail.com	2024-11-02 00:56:46.137	2024-11-02 01:09:29.761	1	1
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, name, slug, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Tech	\N	\N	2024-11-02 00:53:27.587	2024-11-02 00:53:27.587	1	1
\.


--
-- Data for Name: components_elements_features; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_elements_features (id, title, description, show_link, new_tab, url, text) FROM stdin;
\.


--
-- Data for Name: components_elements_logos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_elements_logos (id, title) FROM stdin;
\.


--
-- Data for Name: components_elements_notification_banners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_elements_notification_banners (id, type, heading, text, show) FROM stdin;
1	alert	Get started	with Strapi Cloud	t
\.


--
-- Data for Name: components_elements_notification_banners_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_elements_notification_banners_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	links.link	link	\N
\.


--
-- Data for Name: components_elements_plans; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_elements_plans (id, name, description, is_recommended, price, price_period) FROM stdin;
\.


--
-- Data for Name: components_elements_plans_product_features_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_elements_plans_product_features_links (id, plan_id, product_feature_id, product_feature_order) FROM stdin;
\.


--
-- Data for Name: components_layout_features; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_layout_features (id, heading, description) FROM stdin;
\.


--
-- Data for Name: components_layout_features_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_layout_features_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_layout_footers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_layout_footers (id) FROM stdin;
1
\.


--
-- Data for Name: components_layout_footers_categories_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_layout_footers_categories_links (id, footer_id, category_id, category_order) FROM stdin;
\.


--
-- Data for Name: components_layout_footers_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_layout_footers_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	2	layout.logo	footerLogo	\N
2	1	4	links.link	menuLinks	1
3	1	5	links.link	menuLinks	2
4	1	6	links.link	legalLinks	1
5	1	7	links.link	legalLinks	2
6	1	1	links.social-link	socialLinks	1
7	1	2	links.social-link	socialLinks	2
8	1	3	links.social-link	socialLinks	3
9	1	4	links.social-link	socialLinks	4
\.


--
-- Data for Name: components_layout_logos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_layout_logos (id, logo_text) FROM stdin;
1	Strapi Starter
2	Strapi Starter
\.


--
-- Data for Name: components_layout_navbars; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_layout_navbars (id) FROM stdin;
1
\.


--
-- Data for Name: components_layout_navbars_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_layout_navbars_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	2	links.link	links	1
2	1	3	links.link	links	2
3	1	1	links.button-link	button	\N
4	1	1	layout.logo	navbarLogo	\N
\.


--
-- Data for Name: components_links_buttons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_links_buttons (id, url, new_tab, text, type) FROM stdin;
1	\N	f	Join	primary
\.


--
-- Data for Name: components_links_footer_sections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_links_footer_sections (id, title) FROM stdin;
\.


--
-- Data for Name: components_links_footer_sections_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_links_footer_sections_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_links_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_links_links (id, url, new_tab, text) FROM stdin;
1	https://strapi.io/cloud	t	Strapi Cloud
2	/	f	Home
3	/blog	f	Blog
4	/	f	Home
5	/blog	f	Blog
6	/	f	Privacy Policy
7	/	f	Term Of Service
\.


--
-- Data for Name: components_links_simple_buttons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_links_simple_buttons (id, text, type) FROM stdin;
\.


--
-- Data for Name: components_links_social_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_links_social_links (id, url, new_tab, text, social) FROM stdin;
1	https://strapi.io/	t	Webstite	WEBSITE
2	https://www.youtube.com/@Strapi	t	YouTube	YOUTUBE
3	https://twitter.com/strapijs	t	Twitter	TWITTER
4	https://discord.com/invite/strapi	t	Discord	DISCORD
\.


--
-- Data for Name: components_meta_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_meta_metadata (id, meta_title, meta_description) FROM stdin;
1	Home	My homepage
\.


--
-- Data for Name: components_sections_headings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_sections_headings (id, heading, description) FROM stdin;
\.


--
-- Data for Name: components_sections_lead_forms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_sections_lead_forms (id, title, email_placeholder, location, description) FROM stdin;
\.


--
-- Data for Name: components_sections_lead_forms_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_sections_lead_forms_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_sections_pricings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_sections_pricings (id, title) FROM stdin;
\.


--
-- Data for Name: components_sections_pricings_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_sections_pricings_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_sections_rich_texts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_sections_rich_texts (id, content) FROM stdin;
\.


--
-- Data for Name: components_sections_video_embeds; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_sections_video_embeds (id, url) FROM stdin;
\.


--
-- Data for Name: components_shared_media; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_media (id) FROM stdin;
1
\.


--
-- Data for Name: components_shared_quotes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_quotes (id, title, body, author) FROM stdin;
\.


--
-- Data for Name: components_shared_rich_texts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_rich_texts (id, body) FROM stdin;
1	Apple is expected to announce the fourth generation of iPhone SE in March of next year. The upcoming ‘affordable’ iPhone is speculated to bring major changes in terms of design, performance, features and more.\n\nSeveral leaks and rumours have already surfaced online revealing the design, features and several other details of the iPhone SE4. Here’s everything that we know so far about the upcoming iPhone SE 4th-generation.\n\nPerformance\nApple has always made the SE edition as powerful as the current generation iPhone. We expect that trend to continue this year as well. Based on the leaks and rumours, the iPhone SE 4 will be powered by A18 chipset.\n\nAI support\nConsidering that the phone will be powered by the AI-supported chipset, the iPhone SE 4 will support Apple Intelligence. The performance and features are expected to remain similar to that of more outgoing regular versions of iPhones.
\.


--
-- Data for Name: components_shared_seos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_seos (id, meta_title, meta_description) FROM stdin;
1	Google pixel 9 launch for India soon!	Google pixel 9 launch for India soon!
\.


--
-- Data for Name: components_shared_sliders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_sliders (id) FROM stdin;
\.


--
-- Data for Name: components_slices_bottom_actions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_slices_bottom_actions (id, title, description) FROM stdin;
\.


--
-- Data for Name: components_slices_bottom_actions_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_slices_bottom_actions_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_slices_feature_columns; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_slices_feature_columns (id, title, description) FROM stdin;
\.


--
-- Data for Name: components_slices_feature_columns_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_slices_feature_columns_groups (id) FROM stdin;
\.


--
-- Data for Name: components_slices_feature_columns_groups_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_slices_feature_columns_groups_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_slices_feature_rows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_slices_feature_rows (id, title, description) FROM stdin;
\.


--
-- Data for Name: components_slices_feature_rows_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_slices_feature_rows_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_slices_feature_rows_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_slices_feature_rows_groups (id) FROM stdin;
\.


--
-- Data for Name: components_slices_feature_rows_groups_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_slices_feature_rows_groups_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_slices_heroes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_slices_heroes (id, title, description) FROM stdin;
\.


--
-- Data for Name: components_slices_heroes_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_slices_heroes_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_slices_large_videos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_slices_large_videos (id, title, description) FROM stdin;
\.


--
-- Data for Name: components_slices_testimonials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_slices_testimonials (id, text, author_name) FROM stdin;
\.


--
-- Data for Name: components_slices_testimonials_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_slices_testimonials_groups (id, title, description) FROM stdin;
\.


--
-- Data for Name: components_slices_testimonials_groups_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_slices_testimonials_groups_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	logo-dark.png	\N	\N	658	658	{"small": {"ext": ".png", "url": "/uploads/small_logo_dark_49ee5f25ed.png", "hash": "small_logo_dark_49ee5f25ed", "mime": "image/png", "name": "small_logo-dark.png", "path": null, "size": 32.96, "width": 500, "height": 500}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_logo_dark_49ee5f25ed.png", "hash": "thumbnail_logo_dark_49ee5f25ed", "mime": "image/png", "name": "thumbnail_logo-dark.png", "path": null, "size": 6.23, "width": 156, "height": 156}}	logo_dark_49ee5f25ed	.png	image/png	9.87	/uploads/logo_dark_49ee5f25ed.png	\N	local	\N	/	2024-11-02 00:48:07.26	2024-11-02 00:49:14.015	1	1
2	Group Copy.png	\N	\N	329	329	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Group_Copy_b23509e62a.png", "hash": "thumbnail_Group_Copy_b23509e62a", "mime": "image/png", "name": "thumbnail_Group Copy.png", "path": null, "size": 5.22, "width": 156, "height": 156}}	Group_Copy_b23509e62a	.png	image/png	3.10	/uploads/Group_Copy_b23509e62a.png	\N	local	\N	/	2024-11-02 00:53:05.018	2024-11-02 01:09:23.259	1	1
3	8DRgmpsWXEBb2JvSgd2m6P-650-80.jpg.webp	\N	\N	650	366	{"small": {"ext": ".webp", "url": "/uploads/small_8_D_Rgmps_WXE_Bb2_Jv_Sgd2m6_P_650_80_jpg_28794ed8ab.webp", "hash": "small_8_D_Rgmps_WXE_Bb2_Jv_Sgd2m6_P_650_80_jpg_28794ed8ab", "mime": "image/webp", "name": "small_8DRgmpsWXEBb2JvSgd2m6P-650-80.jpg.webp", "path": null, "size": 3.45, "width": 500, "height": 282}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_8_D_Rgmps_WXE_Bb2_Jv_Sgd2m6_P_650_80_jpg_28794ed8ab.webp", "hash": "thumbnail_8_D_Rgmps_WXE_Bb2_Jv_Sgd2m6_P_650_80_jpg_28794ed8ab", "mime": "image/webp", "name": "thumbnail_8DRgmpsWXEBb2JvSgd2m6P-650-80.jpg.webp", "path": null, "size": 1.59, "width": 245, "height": 138}}	8_D_Rgmps_WXE_Bb2_Jv_Sgd2m6_P_650_80_jpg_28794ed8ab	.webp	image/webp	4.88	/uploads/8_D_Rgmps_WXE_Bb2_Jv_Sgd2m6_P_650_80_jpg_28794ed8ab.webp	\N	local	\N	/	2024-11-02 00:55:44.447	2024-11-02 19:27:34.797	1	1
\.


--
-- Data for Name: files_folder_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
\.


--
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
1	1	1	layout.logo	logoImg	1
2	1	2	layout.logo	logoImg	1
3	2	1	api::global.global	favicon	1
6	1	1	api::author.author	avatar	1
8	3	1	shared.media	file	1
9	3	1	api::article.article	cover	1
\.


--
-- Data for Name: globals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.globals (id, created_at, updated_at, created_by_id, updated_by_id, locale) FROM stdin;
1	2024-11-02 00:53:13.907	2024-11-02 00:53:13.907	1	1	en
\.


--
-- Data for Name: globals_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.globals_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	meta.metadata	metadata	\N
2	1	1	elements.notification-banner	notificationBanner	\N
3	1	1	layout.navbar	navbar	\N
4	1	1	layout.footer	footer	\N
\.


--
-- Data for Name: globals_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.globals_localizations_links (id, global_id, inv_global_id, global_order) FROM stdin;
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2024-11-02 00:29:00.239	2024-11-02 00:29:00.239	\N	\N
\.


--
-- Data for Name: lead_form_submissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lead_form_submissions (id, email, status, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages (id, short_name, slug, heading, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: pages_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: pages_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_localizations_links (id, page_id, inv_page_id, page_order) FROM stdin;
\.


--
-- Data for Name: product_features; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_features (id, name, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	api::article.article.find	2024-11-02 00:34:39.045	2024-11-02 00:34:39.045	\N	\N
2	api::article.article.findOne	2024-11-02 00:34:39.045	2024-11-02 00:34:39.045	\N	\N
3	api::author.author.find	2024-11-02 00:34:39.045	2024-11-02 00:34:39.045	\N	\N
4	api::author.author.findOne	2024-11-02 00:34:39.045	2024-11-02 00:34:39.045	\N	\N
5	api::category.category.find	2024-11-02 00:34:39.045	2024-11-02 00:34:39.045	\N	\N
6	api::category.category.findOne	2024-11-02 00:34:39.045	2024-11-02 00:34:39.045	\N	\N
7	api::global.global.find	2024-11-02 00:34:39.045	2024-11-02 00:34:39.045	\N	\N
8	api::page.page.find	2024-11-02 00:34:39.045	2024-11-02 00:34:39.045	\N	\N
9	api::page.page.findOne	2024-11-02 00:34:39.045	2024-11-02 00:34:39.045	\N	\N
10	api::product-feature.product-feature.find	2024-11-02 00:34:39.045	2024-11-02 00:34:39.045	\N	\N
11	api::product-feature.product-feature.findOne	2024-11-02 00:34:39.045	2024-11-02 00:34:39.045	\N	\N
\.


--
-- Data for Name: strapi_api_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
1	2	1	1
2	1	1	1
3	3	1	2
4	4	1	3
5	5	1	3
6	6	1	4
7	7	1	5
8	8	1	5
9	9	1	6
10	10	1	6
11	11	1	7
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Public API Token Content	Access to public content	custom	8388ce3196ddc72dd40a040a45c212b354e62c19a17acd05efd99b6ab887a30cebbcdffdd74e21b311220ab1b004f96f8352440bca4b22ab34759905b2c30409	2024-11-02 19:45:43.858	\N	\N	2024-11-02 00:34:39.035	2024-11-02 19:45:43.859	\N	\N
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
4	plugin_content_manager_configuration_components::elements.footer-section	{"uid":"elements.footer-section","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"links":{"edit":{"label":"links","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"links","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","links"],"edit":[[{"name":"title","size":6}],[{"name":"links","size":12}]]},"isComponent":true}	object	\N	\N
5	plugin_content_manager_configuration_components::elements.notification-banner	{"uid":"elements.notification-banner","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}},"show":{"edit":{"label":"show","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"show","searchable":true,"sortable":true}},"link":{"edit":{"label":"link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"link","searchable":false,"sortable":false}}},"layouts":{"list":["id","type","heading","text"],"edit":[[{"name":"type","size":6},{"name":"heading","size":6}],[{"name":"text","size":6},{"name":"show","size":4}],[{"name":"link","size":12}]]},"isComponent":true}	object	\N	\N
7	plugin_content_manager_configuration_components::elements.testimonial	{"uid":"elements.testimonial","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"authorName","defaultSortBy":"authorName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"picture":{"edit":{"label":"picture","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"picture","searchable":false,"sortable":false}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}},"authorName":{"edit":{"label":"authorName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"authorName","searchable":true,"sortable":true}}},"layouts":{"list":["id","picture","text","authorName"],"edit":[[{"name":"picture","size":6},{"name":"text","size":6}],[{"name":"authorName","size":6}]]},"isComponent":true}	object	\N	\N
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token-permission","connection":"default","uid":"admin::api-token-permission","plugin":"admin","globalId":"AdminApiTokenPermission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token","connection":"default","uid":"admin::transfer-token","plugin":"admin","globalId":"AdminTransferToken"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token-permission","connection":"default","uid":"admin::transfer-token-permission","plugin":"admin","globalId":"AdminTransferTokenPermission"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"folder","connection":"default","uid":"plugin::upload.folder","plugin":"upload","globalId":"UploadFolder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"api::article.article":{"kind":"collectionType","collectionName":"articles","info":{"singularName":"article","pluralName":"articles","displayName":"Article","description":"Create your blog content"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"description":{"type":"text","maxLength":256,"required":true},"slug":{"type":"uid","targetField":"title"},"cover":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"category":{"type":"relation","relation":"manyToOne","target":"api::category.category","inversedBy":"articles"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider","shared.video-embed"]},"authorsBio":{"type":"relation","relation":"manyToOne","target":"api::author.author","inversedBy":"articles"},"seo":{"type":"component","repeatable":false,"component":"shared.seo"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"articles","info":{"singularName":"article","pluralName":"articles","displayName":"Article","description":"Create your blog content"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"description":{"type":"text","maxLength":256,"required":true},"slug":{"type":"uid","targetField":"title"},"cover":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"category":{"type":"relation","relation":"manyToOne","target":"api::category.category","inversedBy":"articles"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider","shared.video-embed"]},"authorsBio":{"type":"relation","relation":"manyToOne","target":"api::author.author","inversedBy":"articles"},"seo":{"type":"component","repeatable":false,"component":"shared.seo"}},"kind":"collectionType"},"modelType":"contentType","modelName":"article","connection":"default","uid":"api::article.article","apiName":"article","globalId":"Article","actions":{},"lifecycles":{}},"api::author.author":{"kind":"collectionType","collectionName":"authors","info":{"singularName":"author","pluralName":"authors","displayName":"Author","description":"Create authors for your content"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"avatar":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"email":{"type":"string"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"authorsBio"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"authors","info":{"singularName":"author","pluralName":"authors","displayName":"Author","description":"Create authors for your content"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"avatar":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"email":{"type":"string"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"authorsBio"}},"kind":"collectionType"},"modelType":"contentType","modelName":"author","connection":"default","uid":"api::author.author","apiName":"author","globalId":"Author","actions":{},"lifecycles":{}},"api::category.category":{"kind":"collectionType","collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"Category","description":"Organize your content into categories"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"slug":{"type":"uid"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"category"},"description":{"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"Category","description":"Organize your content into categories"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"slug":{"type":"uid"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"category"},"description":{"type":"text"}},"kind":"collectionType"},"modelType":"contentType","modelName":"category","connection":"default","uid":"api::category.category","apiName":"category","globalId":"Category","actions":{},"lifecycles":{}},"api::global.global":{"kind":"singleType","collectionName":"globals","info":{"singularName":"global","pluralName":"globals","displayName":"Global","name":"global","description":""},"options":{"increments":true,"timestamps":true,"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"metadata":{"type":"component","repeatable":false,"component":"meta.metadata","pluginOptions":{"i18n":{"localized":true}}},"favicon":{"type":"media","multiple":false,"required":true,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":true}}},"notificationBanner":{"type":"component","repeatable":false,"component":"elements.notification-banner","pluginOptions":{"i18n":{"localized":true}}},"navbar":{"type":"component","repeatable":false,"component":"layout.navbar","pluginOptions":{"i18n":{"localized":true}}},"footer":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"layout.footer"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::global.global"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"globals","info":{"singularName":"global","pluralName":"globals","displayName":"Global","name":"global","description":""},"options":{"increments":true,"timestamps":true,"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"metadata":{"type":"component","repeatable":false,"component":"meta.metadata","pluginOptions":{"i18n":{"localized":true}}},"favicon":{"type":"media","multiple":false,"required":true,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":true}}},"notificationBanner":{"type":"component","repeatable":false,"component":"elements.notification-banner","pluginOptions":{"i18n":{"localized":true}}},"navbar":{"type":"component","repeatable":false,"component":"layout.navbar","pluginOptions":{"i18n":{"localized":true}}},"footer":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"layout.footer"}},"kind":"singleType"},"modelType":"contentType","modelName":"global","connection":"default","uid":"api::global.global","apiName":"global","globalId":"Global","actions":{},"lifecycles":{}},"api::lead-form-submission.lead-form-submission":{"kind":"collectionType","collectionName":"lead_form_submissions","info":{"singularName":"lead-form-submission","pluralName":"lead-form-submissions","displayName":"Lead form submission","name":"lead-form-submission","description":""},"options":{"increments":true,"timestamps":true,"draftAndPublish":false},"attributes":{"email":{"type":"string"},"status":{"type":"enumeration","enum":["seen","contacted","ignored"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"lead_form_submissions","info":{"singularName":"lead-form-submission","pluralName":"lead-form-submissions","displayName":"Lead form submission","name":"lead-form-submission","description":""},"options":{"increments":true,"timestamps":true,"draftAndPublish":false},"attributes":{"email":{"type":"string"},"status":{"type":"enumeration","enum":["seen","contacted","ignored"]}},"kind":"collectionType"},"modelType":"contentType","modelName":"lead-form-submission","connection":"default","uid":"api::lead-form-submission.lead-form-submission","apiName":"lead-form-submission","globalId":"LeadFormSubmission","actions":{},"lifecycles":{}},"api::page.page":{"kind":"collectionType","collectionName":"pages","info":{"singularName":"page","pluralName":"pages","displayName":"Page","name":"page","description":""},"options":{"increments":true,"timestamps":true,"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"shortName":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"metadata":{"type":"component","repeatable":false,"component":"meta.metadata","required":true,"pluginOptions":{"i18n":{"localized":true}}},"contentSections":{"type":"dynamiczone","components":["sections.hero","sections.bottom-actions","sections.feature-columns-group","sections.feature-rows-group","sections.testimonials-group","sections.large-video","sections.rich-text","sections.pricing","sections.lead-form","sections.features","sections.heading"],"pluginOptions":{"i18n":{"localized":true}}},"slug":{"pluginOptions":{"i18n":{"localized":false}},"type":"string","regex":"^$|^[a-zA-Z/-]+$"},"heading":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"description":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::page.page"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"pages","info":{"singularName":"page","pluralName":"pages","displayName":"Page","name":"page","description":""},"options":{"increments":true,"timestamps":true,"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"shortName":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"metadata":{"type":"component","repeatable":false,"component":"meta.metadata","required":true,"pluginOptions":{"i18n":{"localized":true}}},"contentSections":{"type":"dynamiczone","components":["sections.hero","sections.bottom-actions","sections.feature-columns-group","sections.feature-rows-group","sections.testimonials-group","sections.large-video","sections.rich-text","sections.pricing","sections.lead-form","sections.features","sections.heading"],"pluginOptions":{"i18n":{"localized":true}}},"slug":{"pluginOptions":{"i18n":{"localized":false}},"type":"string","regex":"^$|^[a-zA-Z/-]+$"},"heading":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"description":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"page","connection":"default","uid":"api::page.page","apiName":"page","globalId":"Page","actions":{},"lifecycles":{}},"api::product-feature.product-feature":{"kind":"collectionType","collectionName":"product_features","info":{"singularName":"product-feature","pluralName":"product-features","displayName":"Product Feature","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"product_features","info":{"singularName":"product-feature","pluralName":"product-features","displayName":"Product Feature","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"product-feature","connection":"default","uid":"api::product-feature.product-feature","apiName":"product-feature","globalId":"ProductFeature","actions":{},"lifecycles":{}}}	object	\N	\N
41	plugin_content_manager_configuration_content_types::api::article.article	{"uid":"api::article.article","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"cover":{"edit":{"label":"cover","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cover","searchable":false,"sortable":false}},"category":{"edit":{"label":"category","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"category","searchable":true,"sortable":true}},"blocks":{"edit":{"label":"blocks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocks","searchable":false,"sortable":false}},"authorsBio":{"edit":{"label":"authorsBio","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"authorsBio","searchable":true,"sortable":true}},"seo":{"edit":{"label":"seo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"seo","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","description","slug"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"slug","size":6},{"name":"cover","size":6}],[{"name":"category","size":6}],[{"name":"blocks","size":12}],[{"name":"authorsBio","size":6}],[{"name":"seo","size":12}]]}}	object	\N	\N
10	plugin_content_manager_configuration_components::elements.logos	{"uid":"elements.logos","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"logo":{"edit":{"label":"logo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"logo","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","logo"],"edit":[[{"name":"title","size":6},{"name":"logo","size":6}]]},"isComponent":true}	object	\N	\N
12	plugin_content_manager_configuration_components::links.button-link	{"uid":"links.button-link","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"url","defaultSortBy":"url","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"newTab":{"edit":{"label":"newTab","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"newTab","searchable":true,"sortable":true}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}}},"layouts":{"list":["id","url","newTab","text"],"edit":[[{"name":"url","size":6},{"name":"newTab","size":4}],[{"name":"text","size":6},{"name":"type","size":6}]]},"isComponent":true}	object	\N	\N
22	plugin_content_manager_configuration_components::sections.heading	{"uid":"sections.heading","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}}},"layouts":{"list":["id","heading","description"],"edit":[[{"name":"heading","size":6},{"name":"description","size":6}]]},"isComponent":true}	object	\N	\N
28	plugin_content_manager_configuration_components::sections.testimonials-group	{"uid":"sections.testimonials-group","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"testimonials":{"edit":{"label":"testimonials","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"testimonials","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","description","testimonials"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"testimonials","size":12}]]},"isComponent":true}	object	\N	\N
9	plugin_content_manager_configuration_components::layout.logo	{"uid":"layout.logo","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"logoText","defaultSortBy":"logoText","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"logoImg":{"edit":{"label":"logoImg","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"logoImg","searchable":false,"sortable":false}},"logoText":{"edit":{"label":"logoText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"logoText","searchable":true,"sortable":true}}},"layouts":{"list":["id","logoImg","logoText"],"edit":[[{"name":"logoImg","size":6},{"name":"logoText","size":6}]]},"isComponent":true}	object	\N	\N
13	plugin_content_manager_configuration_components::links.button	{"uid":"links.button","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"text","defaultSortBy":"text","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}}},"layouts":{"list":["id","text","type"],"edit":[[{"name":"text","size":6},{"name":"type","size":6}]]},"isComponent":true}	object	\N	\N
14	plugin_content_manager_configuration_components::links.link	{"uid":"links.link","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"url","defaultSortBy":"url","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"newTab":{"edit":{"label":"newTab","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"newTab","searchable":true,"sortable":true}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}}},"layouts":{"list":["id","url","newTab","text"],"edit":[[{"name":"url","size":6},{"name":"newTab","size":4}],[{"name":"text","size":6}]]},"isComponent":true}	object	\N	\N
16	plugin_content_manager_configuration_components::meta.metadata	{"uid":"meta.metadata","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"metaTitle","defaultSortBy":"metaTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"metaTitle":{"edit":{"label":"metaTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaTitle","searchable":true,"sortable":true}},"metaDescription":{"edit":{"label":"metaDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaDescription","searchable":true,"sortable":true}}},"layouts":{"list":["id","metaTitle","metaDescription"],"edit":[[{"name":"metaTitle","size":6},{"name":"metaDescription","size":6}]]},"isComponent":true}	object	\N	\N
17	plugin_content_manager_configuration_components::sections.bottom-actions	{"uid":"sections.bottom-actions","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"buttons":{"edit":{"label":"buttons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttons","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","buttons","description"],"edit":[[{"name":"title","size":6}],[{"name":"buttons","size":12}],[{"name":"description","size":6}]]},"isComponent":true}	object	\N	\N
18	plugin_content_manager_configuration_components::sections.feature-columns-group	{"uid":"sections.feature-columns-group","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"features":{"edit":{"label":"features","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"features","searchable":false,"sortable":false}}},"layouts":{"list":["id","features"],"edit":[[{"name":"features","size":12}]]},"isComponent":true}	object	\N	\N
35	plugin_content_manager_configuration_content_types::admin::permission	{"uid":"admin::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]}}	object	\N	\N
43	plugin_content_manager_configuration_content_types::api::lead-form-submission.lead-form-submission	{"uid":"api::lead-form-submission.lead-form-submission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"email","defaultSortBy":"email","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","email","status","createdAt"],"edit":[[{"name":"email","size":6},{"name":"status","size":6}]]}}	object	\N	\N
19	plugin_content_manager_configuration_components::sections.feature-rows-group	{"uid":"sections.feature-rows-group","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"features":{"edit":{"label":"features","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"features","searchable":false,"sortable":false}}},"layouts":{"list":["id","features"],"edit":[[{"name":"features","size":12}]]},"isComponent":true}	object	\N	\N
27	plugin_content_manager_configuration_components::sections.rich-text	{"uid":"sections.rich-text","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"content":{"edit":{"label":"content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"content","searchable":false,"sortable":false}}},"layouts":{"list":["id"],"edit":[[{"name":"content","size":12}]]},"isComponent":true}	object	\N	\N
34	plugin_content_manager_configuration_components::shared.video-embed	{"uid":"shared.video-embed","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"url","defaultSortBy":"url","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}}},"layouts":{"list":["id","url"],"edit":[[{"name":"url","size":6}]]},"isComponent":true}	object	\N	\N
36	plugin_content_manager_configuration_content_types::plugin::upload.file	{"uid":"plugin::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]}}	object	\N	\N
44	plugin_content_manager_configuration_content_types::api::product-feature.product-feature	{"uid":"api::product-feature.product-feature","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","createdAt","updatedAt"],"edit":[[{"name":"name","size":6}]]}}	object	\N	\N
58	plugin_i18n_default_locale	"en"	string	\N	\N
59	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"enabled":false,"icon":"","key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]}}	object	\N	\N
60	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
61	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
21	plugin_content_manager_configuration_components::sections.features	{"uid":"sections.features","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"feature":{"edit":{"label":"feature","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"feature","searchable":false,"sortable":false}}},"layouts":{"list":["id","heading","description","feature"],"edit":[[{"name":"heading","size":6},{"name":"description","size":6}],[{"name":"feature","size":12}]]},"isComponent":true}	object	\N	\N
29	plugin_content_manager_configuration_components::shared.media	{"uid":"shared.media","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"file":{"edit":{"label":"file","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"file","searchable":false,"sortable":false}}},"layouts":{"list":["id","file"],"edit":[[{"name":"file","size":6}]]},"isComponent":true}	object	\N	\N
37	plugin_content_manager_configuration_content_types::admin::user	{"uid":"admin::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]}}	object	\N	\N
38	plugin_content_manager_configuration_content_types::admin::role	{"uid":"admin::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]}}	object	\N	\N
45	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"uid":"admin::api-token-permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]}}	object	\N	\N
49	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"uid":"plugin::upload.folder","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]}}	object	\N	\N
30	plugin_content_manager_configuration_components::shared.quote	{"uid":"shared.quote","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"body":{"edit":{"label":"body","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"body","searchable":true,"sortable":true}},"author":{"edit":{"label":"author","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"author","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","body","author"],"edit":[[{"name":"title","size":6},{"name":"body","size":6}],[{"name":"author","size":6}]]},"isComponent":true}	object	\N	\N
40	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"uid":"admin::transfer-token-permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]}}	object	\N	\N
47	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"uid":"plugin::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]}}	object	\N	\N
51	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"uid":"plugin::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]}}	object	\N	\N
24	plugin_content_manager_configuration_components::sections.large-video	{"uid":"sections.large-video","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"video":{"edit":{"label":"video","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"video","searchable":false,"sortable":false}},"poster":{"edit":{"label":"poster","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"poster","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","description","video"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"video","size":6},{"name":"poster","size":6}]]},"isComponent":true}	object	\N	\N
31	plugin_content_manager_configuration_components::shared.rich-text	{"uid":"shared.rich-text","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"body":{"edit":{"label":"body","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"body","searchable":false,"sortable":false}}},"layouts":{"list":["id"],"edit":[[{"name":"body","size":12}]]},"isComponent":true}	object	\N	\N
39	plugin_content_manager_configuration_content_types::admin::transfer-token	{"uid":"admin::transfer-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]}}	object	\N	\N
46	plugin_content_manager_configuration_content_types::admin::api-token	{"uid":"admin::api-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]}}	object	\N	\N
50	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"uid":"plugin::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object	\N	\N
54	plugin_content_manager_configuration_content_types::api::page.page	{"uid":"api::page.page","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"shortName","defaultSortBy":"shortName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"shortName":{"edit":{"label":"shortName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"shortName","searchable":true,"sortable":true}},"metadata":{"edit":{"label":"metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metadata","searchable":false,"sortable":false}},"contentSections":{"edit":{"label":"contentSections","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentSections","searchable":false,"sortable":false}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","shortName","metadata","slug"],"edit":[[{"name":"shortName","size":6}],[{"name":"metadata","size":12}],[{"name":"contentSections","size":12}],[{"name":"slug","size":6},{"name":"heading","size":6}],[{"name":"description","size":6}]]}}	object	\N	\N
32	plugin_content_manager_configuration_components::shared.seo	{"uid":"shared.seo","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"metaTitle","defaultSortBy":"metaTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"metaTitle":{"edit":{"label":"metaTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaTitle","searchable":true,"sortable":true}},"metaDescription":{"edit":{"label":"metaDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaDescription","searchable":true,"sortable":true}},"shareImage":{"edit":{"label":"shareImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"shareImage","searchable":false,"sortable":false}}},"layouts":{"list":["id","metaTitle","metaDescription","shareImage"],"edit":[[{"name":"metaTitle","size":6},{"name":"metaDescription","size":6}],[{"name":"shareImage","size":6}]]},"isComponent":true}	object	\N	\N
42	plugin_content_manager_configuration_content_types::api::author.author	{"uid":"api::author.author","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"avatar":{"edit":{"label":"avatar","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"avatar","searchable":false,"sortable":false}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"articles":{"edit":{"label":"articles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"articles","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","avatar","email"],"edit":[[{"name":"name","size":6},{"name":"avatar","size":6}],[{"name":"email","size":6},{"name":"articles","size":6}]]}}	object	\N	\N
26	plugin_content_manager_configuration_components::sections.pricing	{"uid":"sections.pricing","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"plans":{"edit":{"label":"plans","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"plans","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","plans"],"edit":[[{"name":"title","size":6}],[{"name":"plans","size":12}]]},"isComponent":true}	object	\N	\N
33	plugin_content_manager_configuration_components::shared.slider	{"uid":"shared.slider","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"files","searchable":false,"sortable":false}}},"layouts":{"list":["id","files"],"edit":[[{"name":"files","size":6}]]},"isComponent":true}	object	\N	\N
62	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null}}	object	\N	\N
48	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"uid":"plugin::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]}}	object	\N	\N
52	plugin_content_manager_configuration_content_types::api::category.category	{"uid":"api::category.category","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"articles":{"edit":{"label":"articles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"articles","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","slug","articles"],"edit":[[{"name":"name","size":6},{"name":"slug","size":6}],[{"name":"articles","size":6},{"name":"description","size":6}]]}}	object	\N	\N
53	plugin_content_manager_configuration_content_types::api::global.global	{"uid":"api::global.global","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"metadata":{"edit":{"label":"metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metadata","searchable":false,"sortable":false}},"favicon":{"edit":{"label":"favicon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"favicon","searchable":false,"sortable":false}},"notificationBanner":{"edit":{"label":"notificationBanner","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"notificationBanner","searchable":false,"sortable":false}},"navbar":{"edit":{"label":"navbar","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"navbar","searchable":false,"sortable":false}},"footer":{"edit":{"label":"footer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"footer","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","metadata","favicon","notificationBanner"],"edit":[[{"name":"metadata","size":12}],[{"name":"favicon","size":6}],[{"name":"notificationBanner","size":12}],[{"name":"navbar","size":12}],[{"name":"footer","size":12}]]}}	object	\N	\N
55	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
56	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
57	plugin_upload_metrics	{"weeklySchedule":"0 34 0 * * 6","lastWeeklyUpdate":1730487840019}	object	\N	\N
2	plugin_content_manager_configuration_components::elements.feature-column	{"uid":"elements.feature-column","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"icon":{"edit":{"label":"icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"icon","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","description","icon"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"icon","size":6}]]},"isComponent":true}	object	\N	\N
11	plugin_content_manager_configuration_components::elements.feature-row	{"uid":"elements.feature-row","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"media":{"edit":{"label":"media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"media","searchable":false,"sortable":false}},"link":{"edit":{"label":"link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"link","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","description","media"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"media","size":6}],[{"name":"link","size":12}]]},"isComponent":true}	object	\N	\N
3	plugin_content_manager_configuration_components::elements.feature	{"uid":"elements.feature","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"media":{"edit":{"label":"media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"media","searchable":false,"sortable":false}},"showLink":{"edit":{"label":"showLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"showLink","searchable":true,"sortable":true}},"newTab":{"edit":{"label":"newTab","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"newTab","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","description","media"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"media","size":6},{"name":"showLink","size":4}],[{"name":"newTab","size":4},{"name":"url","size":6}],[{"name":"text","size":6}]]},"isComponent":true}	object	\N	\N
6	plugin_content_manager_configuration_components::elements.plan	{"uid":"elements.plan","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"isRecommended":{"edit":{"label":"isRecommended","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isRecommended","searchable":true,"sortable":true}},"price":{"edit":{"label":"price","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"price","searchable":true,"sortable":true}},"pricePeriod":{"edit":{"label":"pricePeriod","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pricePeriod","searchable":true,"sortable":true}},"product_features":{"edit":{"label":"product_features","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"product_features","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","description","isRecommended"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"isRecommended","size":4},{"name":"price","size":4}],[{"name":"pricePeriod","size":6},{"name":"product_features","size":6}]]},"isComponent":true}	object	\N	\N
8	plugin_content_manager_configuration_components::layout.footer	{"uid":"layout.footer","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"footerLogo":{"edit":{"label":"footerLogo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"footerLogo","searchable":false,"sortable":false}},"menuLinks":{"edit":{"label":"menuLinks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"menuLinks","searchable":false,"sortable":false}},"legalLinks":{"edit":{"label":"legalLinks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"legalLinks","searchable":false,"sortable":false}},"socialLinks":{"edit":{"label":"socialLinks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"socialLinks","searchable":false,"sortable":false}},"categories":{"edit":{"label":"categories","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"categories","searchable":false,"sortable":false}}},"layouts":{"list":["id","footerLogo","menuLinks","legalLinks"],"edit":[[{"name":"footerLogo","size":12}],[{"name":"menuLinks","size":12}],[{"name":"legalLinks","size":12}],[{"name":"socialLinks","size":12}],[{"name":"categories","size":6}]]},"isComponent":true}	object	\N	\N
20	plugin_content_manager_configuration_components::layout.navbar	{"uid":"layout.navbar","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"links":{"edit":{"label":"links","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"links","searchable":false,"sortable":false}},"button":{"edit":{"label":"button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"button","searchable":false,"sortable":false}},"navbarLogo":{"edit":{"label":"navbarLogo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"navbarLogo","searchable":false,"sortable":false}}},"layouts":{"list":["id","links","button","navbarLogo"],"edit":[[{"name":"links","size":12}],[{"name":"button","size":12}],[{"name":"navbarLogo","size":12}]]},"isComponent":true}	object	\N	\N
25	plugin_content_manager_configuration_components::sections.lead-form	{"uid":"sections.lead-form","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"emailPlaceholder":{"edit":{"label":"emailPlaceholder","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"emailPlaceholder","searchable":true,"sortable":true}},"submitButton":{"edit":{"label":"submitButton","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"submitButton","searchable":false,"sortable":false}},"location":{"edit":{"label":"location","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"location","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","emailPlaceholder","submitButton"],"edit":[[{"name":"title","size":6},{"name":"emailPlaceholder","size":6}],[{"name":"submitButton","size":12}],[{"name":"location","size":6},{"name":"description","size":6}]]},"isComponent":true}	object	\N	\N
15	plugin_content_manager_configuration_components::links.social-link	{"uid":"links.social-link","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"url","defaultSortBy":"url","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"newTab":{"edit":{"label":"newTab","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"newTab","searchable":true,"sortable":true}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}},"social":{"edit":{"label":"social","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"social","searchable":true,"sortable":true}}},"layouts":{"list":["id","url","newTab","text"],"edit":[[{"name":"url","size":6},{"name":"newTab","size":4}],[{"name":"text","size":6},{"name":"social","size":6}]]},"isComponent":true}	object	\N	\N
23	plugin_content_manager_configuration_components::sections.hero	{"uid":"sections.hero","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"picture":{"edit":{"label":"picture","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"picture","searchable":false,"sortable":false}},"buttons":{"edit":{"label":"buttons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttons","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","description","picture"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"picture","size":6}],[{"name":"buttons","size":12}]]},"isComponent":true}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
1	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles","indexes":[{"type":"unique","name":"articles_slug_unique","columns":["slug"]},{"name":"articles_created_by_id_fk","columns":["created_by_id"]},{"name":"articles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"articles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"articles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false,"unique":true},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"authors","indexes":[{"name":"authors_created_by_id_fk","columns":["created_by_id"]},{"name":"authors_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"authors_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"authors_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"categories","indexes":[{"type":"unique","name":"categories_slug_unique","columns":["slug"]},{"name":"categories_created_by_id_fk","columns":["created_by_id"]},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"categories_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false,"unique":true},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"globals","indexes":[{"name":"globals_created_by_id_fk","columns":["created_by_id"]},{"name":"globals_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"globals_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"globals_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"lead_form_submissions","indexes":[{"name":"lead_form_submissions_created_by_id_fk","columns":["created_by_id"]},{"name":"lead_form_submissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"lead_form_submissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"lead_form_submissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pages","indexes":[{"name":"pages_created_by_id_fk","columns":["created_by_id"]},{"name":"pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"short_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"product_features","indexes":[{"name":"product_features_created_by_id_fk","columns":["created_by_id"]},{"name":"product_features_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"product_features_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"product_features_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_slices_feature_columns","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_slices_feature_rows","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_elements_features","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"show_link","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"new_tab","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_links_footer_sections","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_elements_logos","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_elements_notification_banners","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"show","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_elements_plans","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_recommended","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"price","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"price_period","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_slices_testimonials","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"author_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_layout_footers","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_layout_logos","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"logo_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_layout_navbars","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_links_buttons","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"new_tab","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_links_simple_buttons","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_links_links","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"new_tab","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_links_social_links","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"new_tab","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"social","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_meta_metadata","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"meta_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_slices_bottom_actions","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_slices_feature_columns_groups","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_slices_feature_rows_groups","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_layout_features","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_sections_headings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_slices_heroes","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_slices_large_videos","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_sections_lead_forms","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email_placeholder","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"location","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_sections_pricings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_sections_rich_texts","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_slices_testimonials_groups","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_media","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_shared_quotes","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"body","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"author","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_rich_texts","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"body","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_seos","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"meta_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_sliders","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_sections_video_embeds","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"admin_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]},{"name":"admin_users_roles_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_links_order_fk","columns":["role_order"]},{"name":"admin_users_roles_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_links","indexes":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_links_unique","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_links_order_inv_fk","columns":["api_token_permission_order"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_links","indexes":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_links_unique","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_links_order_inv_fk","columns":["transfer_token_permission_order"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]},{"name":"files_related_morphs_order_index","columns":["order"],"type":null},{"name":"files_related_morphs_id_column_index","columns":["related_id"],"type":null}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_links","indexes":[{"name":"files_folder_links_fk","columns":["file_id"]},{"name":"files_folder_links_inv_fk","columns":["folder_id"]},{"name":"files_folder_links_unique","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_links_order_inv_fk","columns":["file_order"]}],"foreignKeys":[{"name":"files_folder_links_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_links_inv_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_links","indexes":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"]},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_links_unique","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_links_order_inv_fk","columns":["folder_order"]}],"foreignKeys":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"up_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]},{"name":"up_users_role_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles_components","indexes":[{"name":"articles_field_index","columns":["field"],"type":null},{"name":"articles_component_type_index","columns":["component_type"],"type":null},{"name":"articles_entity_fk","columns":["entity_id"]},{"name":"articles_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"articles_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles_category_links","indexes":[{"name":"articles_category_links_fk","columns":["article_id"]},{"name":"articles_category_links_inv_fk","columns":["category_id"]},{"name":"articles_category_links_unique","columns":["article_id","category_id"],"type":"unique"},{"name":"articles_category_links_order_inv_fk","columns":["article_order"]}],"foreignKeys":[{"name":"articles_category_links_fk","columns":["article_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"},{"name":"articles_category_links_inv_fk","columns":["category_id"],"referencedColumns":["id"],"referencedTable":"categories","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"category_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"article_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles_authors_bio_links","indexes":[{"name":"articles_authors_bio_links_fk","columns":["article_id"]},{"name":"articles_authors_bio_links_inv_fk","columns":["author_id"]},{"name":"articles_authors_bio_links_unique","columns":["article_id","author_id"],"type":"unique"},{"name":"articles_authors_bio_links_order_inv_fk","columns":["article_order"]}],"foreignKeys":[{"name":"articles_authors_bio_links_fk","columns":["article_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"},{"name":"articles_authors_bio_links_inv_fk","columns":["author_id"],"referencedColumns":["id"],"referencedTable":"authors","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"author_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"article_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"globals_components","indexes":[{"name":"globals_field_index","columns":["field"],"type":null},{"name":"globals_component_type_index","columns":["component_type"],"type":null},{"name":"globals_entity_fk","columns":["entity_id"]},{"name":"globals_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"globals_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"globals","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"globals_localizations_links","indexes":[{"name":"globals_localizations_links_fk","columns":["global_id"]},{"name":"globals_localizations_links_inv_fk","columns":["inv_global_id"]},{"name":"globals_localizations_links_unique","columns":["global_id","inv_global_id"],"type":"unique"},{"name":"globals_localizations_links_order_fk","columns":["global_order"]}],"foreignKeys":[{"name":"globals_localizations_links_fk","columns":["global_id"],"referencedColumns":["id"],"referencedTable":"globals","onDelete":"CASCADE"},{"name":"globals_localizations_links_inv_fk","columns":["inv_global_id"],"referencedColumns":["id"],"referencedTable":"globals","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"global_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_global_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"global_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pages_components","indexes":[{"name":"pages_field_index","columns":["field"],"type":null},{"name":"pages_component_type_index","columns":["component_type"],"type":null},{"name":"pages_entity_fk","columns":["entity_id"]},{"name":"pages_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"pages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pages_localizations_links","indexes":[{"name":"pages_localizations_links_fk","columns":["page_id"]},{"name":"pages_localizations_links_inv_fk","columns":["inv_page_id"]},{"name":"pages_localizations_links_unique","columns":["page_id","inv_page_id"],"type":"unique"},{"name":"pages_localizations_links_order_fk","columns":["page_order"]}],"foreignKeys":[{"name":"pages_localizations_links_fk","columns":["page_id"],"referencedColumns":["id"],"referencedTable":"pages","onDelete":"CASCADE"},{"name":"pages_localizations_links_inv_fk","columns":["inv_page_id"],"referencedColumns":["id"],"referencedTable":"pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"page_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_slices_feature_rows_components","indexes":[{"name":"components_slices_feature_rows_field_index","columns":["field"],"type":null},{"name":"components_slices_feature_rows_component_type_index","columns":["component_type"],"type":null},{"name":"components_slices_feature_rows_entity_fk","columns":["entity_id"]},{"name":"components_slices_feature_rows_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_slices_feature_rows_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_slices_feature_rows","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_links_footer_sections_components","indexes":[{"name":"components_links_footer_sections_field_index","columns":["field"],"type":null},{"name":"components_links_footer_sections_component_type_index","columns":["component_type"],"type":null},{"name":"components_links_footer_sections_entity_fk","columns":["entity_id"]},{"name":"components_links_footer_sections_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_links_footer_sections_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_links_footer_sections","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_elements_notification_banners_components","indexes":[{"name":"components_elements_notification_banners_field_index","columns":["field"],"type":null},{"name":"components_elements_notification_banners_component_type_index","columns":["component_type"],"type":null},{"name":"components_elements_notification_banners_entity_fk","columns":["entity_id"]},{"name":"components_elements_notification_banners_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_elements_notification_banners_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_elements_notification_banners","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_elements_plans_product_features_links","indexes":[{"name":"components_elements_plans_product_features_links_fk","columns":["plan_id"]},{"name":"components_elements_plans_product_features_links_inv_fk","columns":["product_feature_id"]},{"name":"components_elements_plans_product_features_links_unique","columns":["plan_id","product_feature_id"],"type":"unique"},{"name":"components_elements_plans_product_features_links_order_fk","columns":["product_feature_order"]}],"foreignKeys":[{"name":"components_elements_plans_product_features_links_fk","columns":["plan_id"],"referencedColumns":["id"],"referencedTable":"components_elements_plans","onDelete":"CASCADE"},{"name":"components_elements_plans_product_features_links_inv_fk","columns":["product_feature_id"],"referencedColumns":["id"],"referencedTable":"product_features","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"plan_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"product_feature_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"product_feature_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_layout_footers_components","indexes":[{"name":"components_layout_footers_field_index","columns":["field"],"type":null},{"name":"components_layout_footers_component_type_index","columns":["component_type"],"type":null},{"name":"components_layout_footers_entity_fk","columns":["entity_id"]},{"name":"components_layout_footers_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_layout_footers_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_layout_footers","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_layout_footers_categories_links","indexes":[{"name":"components_layout_footers_categories_links_fk","columns":["footer_id"]},{"name":"components_layout_footers_categories_links_inv_fk","columns":["category_id"]},{"name":"components_layout_footers_categories_links_unique","columns":["footer_id","category_id"],"type":"unique"},{"name":"components_layout_footers_categories_links_order_fk","columns":["category_order"]}],"foreignKeys":[{"name":"components_layout_footers_categories_links_fk","columns":["footer_id"],"referencedColumns":["id"],"referencedTable":"components_layout_footers","onDelete":"CASCADE"},{"name":"components_layout_footers_categories_links_inv_fk","columns":["category_id"],"referencedColumns":["id"],"referencedTable":"categories","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"footer_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"category_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"category_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_layout_navbars_components","indexes":[{"name":"components_layout_navbars_field_index","columns":["field"],"type":null},{"name":"components_layout_navbars_component_type_index","columns":["component_type"],"type":null},{"name":"components_layout_navbars_entity_fk","columns":["entity_id"]},{"name":"components_layout_navbars_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_layout_navbars_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_layout_navbars","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_slices_bottom_actions_components","indexes":[{"name":"components_slices_bottom_actions_field_index","columns":["field"],"type":null},{"name":"components_slices_bottom_actions_component_type_index","columns":["component_type"],"type":null},{"name":"components_slices_bottom_actions_entity_fk","columns":["entity_id"]},{"name":"components_slices_bottom_actions_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_slices_bottom_actions_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_slices_bottom_actions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_slices_feature_columns_groups_components","indexes":[{"name":"components_slices_feature_columns_groups_field_index","columns":["field"],"type":null},{"name":"components_slices_feature_columns_groups_component_type_index","columns":["component_type"],"type":null},{"name":"components_slices_feature_columns_groups_entity_fk","columns":["entity_id"]},{"name":"components_slices_feature_columns_groups_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_slices_feature_columns_groups_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_slices_feature_columns_groups","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_slices_feature_rows_groups_components","indexes":[{"name":"components_slices_feature_rows_groups_field_index","columns":["field"],"type":null},{"name":"components_slices_feature_rows_groups_component_type_index","columns":["component_type"],"type":null},{"name":"components_slices_feature_rows_groups_entity_fk","columns":["entity_id"]},{"name":"components_slices_feature_rows_groups_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_slices_feature_rows_groups_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_slices_feature_rows_groups","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_layout_features_components","indexes":[{"name":"components_layout_features_field_index","columns":["field"],"type":null},{"name":"components_layout_features_component_type_index","columns":["component_type"],"type":null},{"name":"components_layout_features_entity_fk","columns":["entity_id"]},{"name":"components_layout_features_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_layout_features_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_layout_features","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_slices_heroes_components","indexes":[{"name":"components_slices_heroes_field_index","columns":["field"],"type":null},{"name":"components_slices_heroes_component_type_index","columns":["component_type"],"type":null},{"name":"components_slices_heroes_entity_fk","columns":["entity_id"]},{"name":"components_slices_heroes_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_slices_heroes_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_slices_heroes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_sections_lead_forms_components","indexes":[{"name":"components_sections_lead_forms_field_index","columns":["field"],"type":null},{"name":"components_sections_lead_forms_component_type_index","columns":["component_type"],"type":null},{"name":"components_sections_lead_forms_entity_fk","columns":["entity_id"]},{"name":"components_sections_lead_forms_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_sections_lead_forms_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_sections_lead_forms","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_sections_pricings_components","indexes":[{"name":"components_sections_pricings_field_index","columns":["field"],"type":null},{"name":"components_sections_pricings_component_type_index","columns":["component_type"],"type":null},{"name":"components_sections_pricings_entity_fk","columns":["entity_id"]},{"name":"components_sections_pricings_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_sections_pricings_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_sections_pricings","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_slices_testimonials_groups_components","indexes":[{"name":"components_slices_testimonials_groups_field_index","columns":["field"],"type":null},{"name":"components_slices_testimonials_groups_component_type_index","columns":["component_type"],"type":null},{"name":"components_slices_testimonials_groups_entity_fk","columns":["entity_id"]},{"name":"components_slices_testimonials_groups_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_slices_testimonials_groups_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_slices_testimonials_groups","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2024-11-02 00:28:59.696	a7d9f257100d2233d23e3dcd91faa878
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::users-permissions.user.me	2024-11-02 00:29:00.285	2024-11-02 00:29:00.285	\N	\N
2	plugin::users-permissions.auth.changePassword	2024-11-02 00:29:00.285	2024-11-02 00:29:00.285	\N	\N
3	plugin::users-permissions.auth.callback	2024-11-02 00:29:00.299	2024-11-02 00:29:00.299	\N	\N
4	plugin::users-permissions.auth.connect	2024-11-02 00:29:00.299	2024-11-02 00:29:00.299	\N	\N
5	plugin::users-permissions.auth.forgotPassword	2024-11-02 00:29:00.299	2024-11-02 00:29:00.299	\N	\N
7	plugin::users-permissions.auth.register	2024-11-02 00:29:00.299	2024-11-02 00:29:00.299	\N	\N
9	plugin::users-permissions.auth.sendEmailConfirmation	2024-11-02 00:29:00.299	2024-11-02 00:29:00.299	\N	\N
6	plugin::users-permissions.auth.resetPassword	2024-11-02 00:29:00.299	2024-11-02 00:29:00.299	\N	\N
8	plugin::users-permissions.auth.emailConfirmation	2024-11-02 00:29:00.299	2024-11-02 00:29:00.299	\N	\N
\.


--
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	1	1	1
2	2	1	1
3	3	2	1
4	4	2	1
5	5	2	2
6	7	2	2
7	9	2	2
8	8	2	2
9	6	2	2
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	2024-11-02 00:29:00.275	2024-11-02 00:29:00.275	\N	\N
2	Public	Default role given to unauthenticated user.	public	2024-11-02 00:29:00.278	2024-11-02 00:29:00.278	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: upload_folders_parent_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
\.


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 159, true);


--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 159, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);


--
-- Name: articles_authors_bio_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.articles_authors_bio_links_id_seq', 1, true);


--
-- Name: articles_category_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.articles_category_links_id_seq', 1, false);


--
-- Name: articles_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.articles_components_id_seq', 12, true);


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.articles_id_seq', 1, true);


--
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.authors_id_seq', 1, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, true);


--
-- Name: components_elements_features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_elements_features_id_seq', 1, false);


--
-- Name: components_elements_logos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_elements_logos_id_seq', 1, false);


--
-- Name: components_elements_notification_banners_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_elements_notification_banners_components_id_seq', 1, true);


--
-- Name: components_elements_notification_banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_elements_notification_banners_id_seq', 1, true);


--
-- Name: components_elements_plans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_elements_plans_id_seq', 1, false);


--
-- Name: components_elements_plans_product_features_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_elements_plans_product_features_links_id_seq', 1, false);


--
-- Name: components_layout_features_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_layout_features_components_id_seq', 1, false);


--
-- Name: components_layout_features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_layout_features_id_seq', 1, false);


--
-- Name: components_layout_footers_categories_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_layout_footers_categories_links_id_seq', 1, false);


--
-- Name: components_layout_footers_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_layout_footers_components_id_seq', 9, true);


--
-- Name: components_layout_footers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_layout_footers_id_seq', 1, true);


--
-- Name: components_layout_logos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_layout_logos_id_seq', 2, true);


--
-- Name: components_layout_navbars_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_layout_navbars_components_id_seq', 4, true);


--
-- Name: components_layout_navbars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_layout_navbars_id_seq', 1, true);


--
-- Name: components_links_buttons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_links_buttons_id_seq', 1, true);


--
-- Name: components_links_footer_sections_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_links_footer_sections_components_id_seq', 1, false);


--
-- Name: components_links_footer_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_links_footer_sections_id_seq', 1, false);


--
-- Name: components_links_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_links_links_id_seq', 7, true);


--
-- Name: components_links_simple_buttons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_links_simple_buttons_id_seq', 1, false);


--
-- Name: components_links_social_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_links_social_links_id_seq', 4, true);


--
-- Name: components_meta_metadata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_meta_metadata_id_seq', 1, true);


--
-- Name: components_sections_headings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_sections_headings_id_seq', 1, false);


--
-- Name: components_sections_lead_forms_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_sections_lead_forms_components_id_seq', 1, false);


--
-- Name: components_sections_lead_forms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_sections_lead_forms_id_seq', 1, false);


--
-- Name: components_sections_pricings_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_sections_pricings_components_id_seq', 1, false);


--
-- Name: components_sections_pricings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_sections_pricings_id_seq', 1, false);


--
-- Name: components_sections_rich_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_sections_rich_texts_id_seq', 1, false);


--
-- Name: components_sections_video_embeds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_sections_video_embeds_id_seq', 1, false);


--
-- Name: components_shared_media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_media_id_seq', 1, true);


--
-- Name: components_shared_quotes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_quotes_id_seq', 1, false);


--
-- Name: components_shared_rich_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_rich_texts_id_seq', 1, true);


--
-- Name: components_shared_seos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_seos_id_seq', 1, true);


--
-- Name: components_shared_sliders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_sliders_id_seq', 1, false);


--
-- Name: components_slices_bottom_actions_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_slices_bottom_actions_components_id_seq', 1, false);


--
-- Name: components_slices_bottom_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_slices_bottom_actions_id_seq', 1, false);


--
-- Name: components_slices_feature_columns_groups_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_slices_feature_columns_groups_components_id_seq', 1, false);


--
-- Name: components_slices_feature_columns_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_slices_feature_columns_groups_id_seq', 1, false);


--
-- Name: components_slices_feature_columns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_slices_feature_columns_id_seq', 1, false);


--
-- Name: components_slices_feature_rows_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_slices_feature_rows_components_id_seq', 1, false);


--
-- Name: components_slices_feature_rows_groups_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_slices_feature_rows_groups_components_id_seq', 1, false);


--
-- Name: components_slices_feature_rows_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_slices_feature_rows_groups_id_seq', 1, false);


--
-- Name: components_slices_feature_rows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_slices_feature_rows_id_seq', 1, false);


--
-- Name: components_slices_heroes_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_slices_heroes_components_id_seq', 1, false);


--
-- Name: components_slices_heroes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_slices_heroes_id_seq', 1, false);


--
-- Name: components_slices_large_videos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_slices_large_videos_id_seq', 1, false);


--
-- Name: components_slices_testimonials_groups_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_slices_testimonials_groups_components_id_seq', 1, false);


--
-- Name: components_slices_testimonials_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_slices_testimonials_groups_id_seq', 1, false);


--
-- Name: components_slices_testimonials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_slices_testimonials_id_seq', 1, false);


--
-- Name: files_folder_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_id_seq', 3, true);


--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 9, true);


--
-- Name: globals_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.globals_components_id_seq', 4, true);


--
-- Name: globals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.globals_id_seq', 1, true);


--
-- Name: globals_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.globals_localizations_links_id_seq', 1, false);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: lead_form_submissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lead_form_submissions_id_seq', 1, false);


--
-- Name: pages_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pages_components_id_seq', 1, false);


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pages_id_seq', 1, false);


--
-- Name: pages_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pages_localizations_links_id_seq', 1, false);


--
-- Name: product_features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_features_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 11, true);


--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 11, true);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, true);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 62, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 1, true);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 9, true);


--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 9, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, false);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);


--
-- Name: articles_authors_bio_links articles_authors_bio_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles_authors_bio_links
    ADD CONSTRAINT articles_authors_bio_links_pkey PRIMARY KEY (id);


--
-- Name: articles_authors_bio_links articles_authors_bio_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles_authors_bio_links
    ADD CONSTRAINT articles_authors_bio_links_unique UNIQUE (article_id, author_id);


--
-- Name: articles_category_links articles_category_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles_category_links
    ADD CONSTRAINT articles_category_links_pkey PRIMARY KEY (id);


--
-- Name: articles_category_links articles_category_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles_category_links
    ADD CONSTRAINT articles_category_links_unique UNIQUE (article_id, category_id);


--
-- Name: articles_components articles_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles_components
    ADD CONSTRAINT articles_components_pkey PRIMARY KEY (id);


--
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: articles articles_slug_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_slug_unique UNIQUE (slug);


--
-- Name: articles_components articles_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles_components
    ADD CONSTRAINT articles_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: categories categories_slug_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_slug_unique UNIQUE (slug);


--
-- Name: components_elements_features components_elements_features_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_elements_features
    ADD CONSTRAINT components_elements_features_pkey PRIMARY KEY (id);


--
-- Name: components_elements_logos components_elements_logos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_elements_logos
    ADD CONSTRAINT components_elements_logos_pkey PRIMARY KEY (id);


--
-- Name: components_elements_notification_banners_components components_elements_notification_banners_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_elements_notification_banners_components
    ADD CONSTRAINT components_elements_notification_banners_components_pkey PRIMARY KEY (id);


--
-- Name: components_elements_notification_banners components_elements_notification_banners_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_elements_notification_banners
    ADD CONSTRAINT components_elements_notification_banners_pkey PRIMARY KEY (id);


--
-- Name: components_elements_notification_banners_components components_elements_notification_banners_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_elements_notification_banners_components
    ADD CONSTRAINT components_elements_notification_banners_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_elements_plans components_elements_plans_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_elements_plans
    ADD CONSTRAINT components_elements_plans_pkey PRIMARY KEY (id);


--
-- Name: components_elements_plans_product_features_links components_elements_plans_product_features_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_elements_plans_product_features_links
    ADD CONSTRAINT components_elements_plans_product_features_links_pkey PRIMARY KEY (id);


--
-- Name: components_elements_plans_product_features_links components_elements_plans_product_features_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_elements_plans_product_features_links
    ADD CONSTRAINT components_elements_plans_product_features_links_unique UNIQUE (plan_id, product_feature_id);


--
-- Name: components_layout_features_components components_layout_features_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_layout_features_components
    ADD CONSTRAINT components_layout_features_components_pkey PRIMARY KEY (id);


--
-- Name: components_layout_features components_layout_features_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_layout_features
    ADD CONSTRAINT components_layout_features_pkey PRIMARY KEY (id);


--
-- Name: components_layout_features_components components_layout_features_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_layout_features_components
    ADD CONSTRAINT components_layout_features_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_layout_footers_categories_links components_layout_footers_categories_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_layout_footers_categories_links
    ADD CONSTRAINT components_layout_footers_categories_links_pkey PRIMARY KEY (id);


--
-- Name: components_layout_footers_categories_links components_layout_footers_categories_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_layout_footers_categories_links
    ADD CONSTRAINT components_layout_footers_categories_links_unique UNIQUE (footer_id, category_id);


--
-- Name: components_layout_footers_components components_layout_footers_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_layout_footers_components
    ADD CONSTRAINT components_layout_footers_components_pkey PRIMARY KEY (id);


--
-- Name: components_layout_footers components_layout_footers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_layout_footers
    ADD CONSTRAINT components_layout_footers_pkey PRIMARY KEY (id);


--
-- Name: components_layout_footers_components components_layout_footers_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_layout_footers_components
    ADD CONSTRAINT components_layout_footers_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_layout_logos components_layout_logos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_layout_logos
    ADD CONSTRAINT components_layout_logos_pkey PRIMARY KEY (id);


--
-- Name: components_layout_navbars_components components_layout_navbars_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_layout_navbars_components
    ADD CONSTRAINT components_layout_navbars_components_pkey PRIMARY KEY (id);


--
-- Name: components_layout_navbars components_layout_navbars_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_layout_navbars
    ADD CONSTRAINT components_layout_navbars_pkey PRIMARY KEY (id);


--
-- Name: components_layout_navbars_components components_layout_navbars_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_layout_navbars_components
    ADD CONSTRAINT components_layout_navbars_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_links_buttons components_links_buttons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_links_buttons
    ADD CONSTRAINT components_links_buttons_pkey PRIMARY KEY (id);


--
-- Name: components_links_footer_sections_components components_links_footer_sections_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_links_footer_sections_components
    ADD CONSTRAINT components_links_footer_sections_components_pkey PRIMARY KEY (id);


--
-- Name: components_links_footer_sections components_links_footer_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_links_footer_sections
    ADD CONSTRAINT components_links_footer_sections_pkey PRIMARY KEY (id);


--
-- Name: components_links_footer_sections_components components_links_footer_sections_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_links_footer_sections_components
    ADD CONSTRAINT components_links_footer_sections_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_links_links components_links_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_links_links
    ADD CONSTRAINT components_links_links_pkey PRIMARY KEY (id);


--
-- Name: components_links_simple_buttons components_links_simple_buttons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_links_simple_buttons
    ADD CONSTRAINT components_links_simple_buttons_pkey PRIMARY KEY (id);


--
-- Name: components_links_social_links components_links_social_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_links_social_links
    ADD CONSTRAINT components_links_social_links_pkey PRIMARY KEY (id);


--
-- Name: components_meta_metadata components_meta_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_meta_metadata
    ADD CONSTRAINT components_meta_metadata_pkey PRIMARY KEY (id);


--
-- Name: components_sections_headings components_sections_headings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_sections_headings
    ADD CONSTRAINT components_sections_headings_pkey PRIMARY KEY (id);


--
-- Name: components_sections_lead_forms_components components_sections_lead_forms_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_sections_lead_forms_components
    ADD CONSTRAINT components_sections_lead_forms_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_lead_forms components_sections_lead_forms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_sections_lead_forms
    ADD CONSTRAINT components_sections_lead_forms_pkey PRIMARY KEY (id);


--
-- Name: components_sections_lead_forms_components components_sections_lead_forms_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_sections_lead_forms_components
    ADD CONSTRAINT components_sections_lead_forms_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_sections_pricings_components components_sections_pricings_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_sections_pricings_components
    ADD CONSTRAINT components_sections_pricings_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_pricings components_sections_pricings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_sections_pricings
    ADD CONSTRAINT components_sections_pricings_pkey PRIMARY KEY (id);


--
-- Name: components_sections_pricings_components components_sections_pricings_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_sections_pricings_components
    ADD CONSTRAINT components_sections_pricings_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_sections_rich_texts components_sections_rich_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_sections_rich_texts
    ADD CONSTRAINT components_sections_rich_texts_pkey PRIMARY KEY (id);


--
-- Name: components_sections_video_embeds components_sections_video_embeds_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_sections_video_embeds
    ADD CONSTRAINT components_sections_video_embeds_pkey PRIMARY KEY (id);


--
-- Name: components_shared_media components_shared_media_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_media
    ADD CONSTRAINT components_shared_media_pkey PRIMARY KEY (id);


--
-- Name: components_shared_quotes components_shared_quotes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_quotes
    ADD CONSTRAINT components_shared_quotes_pkey PRIMARY KEY (id);


--
-- Name: components_shared_rich_texts components_shared_rich_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_rich_texts
    ADD CONSTRAINT components_shared_rich_texts_pkey PRIMARY KEY (id);


--
-- Name: components_shared_seos components_shared_seos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_seos
    ADD CONSTRAINT components_shared_seos_pkey PRIMARY KEY (id);


--
-- Name: components_shared_sliders components_shared_sliders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_sliders
    ADD CONSTRAINT components_shared_sliders_pkey PRIMARY KEY (id);


--
-- Name: components_slices_bottom_actions_components components_slices_bottom_actions_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_bottom_actions_components
    ADD CONSTRAINT components_slices_bottom_actions_components_pkey PRIMARY KEY (id);


--
-- Name: components_slices_bottom_actions components_slices_bottom_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_bottom_actions
    ADD CONSTRAINT components_slices_bottom_actions_pkey PRIMARY KEY (id);


--
-- Name: components_slices_bottom_actions_components components_slices_bottom_actions_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_bottom_actions_components
    ADD CONSTRAINT components_slices_bottom_actions_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_slices_feature_columns_groups_components components_slices_feature_columns_groups_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_feature_columns_groups_components
    ADD CONSTRAINT components_slices_feature_columns_groups_components_pkey PRIMARY KEY (id);


--
-- Name: components_slices_feature_columns_groups components_slices_feature_columns_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_feature_columns_groups
    ADD CONSTRAINT components_slices_feature_columns_groups_pkey PRIMARY KEY (id);


--
-- Name: components_slices_feature_columns_groups_components components_slices_feature_columns_groups_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_feature_columns_groups_components
    ADD CONSTRAINT components_slices_feature_columns_groups_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_slices_feature_columns components_slices_feature_columns_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_feature_columns
    ADD CONSTRAINT components_slices_feature_columns_pkey PRIMARY KEY (id);


--
-- Name: components_slices_feature_rows_components components_slices_feature_rows_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_feature_rows_components
    ADD CONSTRAINT components_slices_feature_rows_components_pkey PRIMARY KEY (id);


--
-- Name: components_slices_feature_rows_groups_components components_slices_feature_rows_groups_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_feature_rows_groups_components
    ADD CONSTRAINT components_slices_feature_rows_groups_components_pkey PRIMARY KEY (id);


--
-- Name: components_slices_feature_rows_groups components_slices_feature_rows_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_feature_rows_groups
    ADD CONSTRAINT components_slices_feature_rows_groups_pkey PRIMARY KEY (id);


--
-- Name: components_slices_feature_rows_groups_components components_slices_feature_rows_groups_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_feature_rows_groups_components
    ADD CONSTRAINT components_slices_feature_rows_groups_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_slices_feature_rows components_slices_feature_rows_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_feature_rows
    ADD CONSTRAINT components_slices_feature_rows_pkey PRIMARY KEY (id);


--
-- Name: components_slices_feature_rows_components components_slices_feature_rows_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_feature_rows_components
    ADD CONSTRAINT components_slices_feature_rows_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_slices_heroes_components components_slices_heroes_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_heroes_components
    ADD CONSTRAINT components_slices_heroes_components_pkey PRIMARY KEY (id);


--
-- Name: components_slices_heroes components_slices_heroes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_heroes
    ADD CONSTRAINT components_slices_heroes_pkey PRIMARY KEY (id);


--
-- Name: components_slices_heroes_components components_slices_heroes_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_heroes_components
    ADD CONSTRAINT components_slices_heroes_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_slices_large_videos components_slices_large_videos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_large_videos
    ADD CONSTRAINT components_slices_large_videos_pkey PRIMARY KEY (id);


--
-- Name: components_slices_testimonials_groups_components components_slices_testimonials_groups_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_testimonials_groups_components
    ADD CONSTRAINT components_slices_testimonials_groups_components_pkey PRIMARY KEY (id);


--
-- Name: components_slices_testimonials_groups components_slices_testimonials_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_testimonials_groups
    ADD CONSTRAINT components_slices_testimonials_groups_pkey PRIMARY KEY (id);


--
-- Name: components_slices_testimonials_groups_components components_slices_testimonials_groups_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_testimonials_groups_components
    ADD CONSTRAINT components_slices_testimonials_groups_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_slices_testimonials components_slices_testimonials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_testimonials
    ADD CONSTRAINT components_slices_testimonials_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_morphs files_related_morphs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);


--
-- Name: globals_components globals_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.globals_components
    ADD CONSTRAINT globals_components_pkey PRIMARY KEY (id);


--
-- Name: globals_localizations_links globals_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.globals_localizations_links
    ADD CONSTRAINT globals_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: globals_localizations_links globals_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.globals_localizations_links
    ADD CONSTRAINT globals_localizations_links_unique UNIQUE (global_id, inv_global_id);


--
-- Name: globals globals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_pkey PRIMARY KEY (id);


--
-- Name: globals_components globals_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.globals_components
    ADD CONSTRAINT globals_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: lead_form_submissions lead_form_submissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lead_form_submissions
    ADD CONSTRAINT lead_form_submissions_pkey PRIMARY KEY (id);


--
-- Name: pages_components pages_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_components
    ADD CONSTRAINT pages_components_pkey PRIMARY KEY (id);


--
-- Name: pages_localizations_links pages_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_localizations_links
    ADD CONSTRAINT pages_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: pages_localizations_links pages_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_localizations_links
    ADD CONSTRAINT pages_localizations_links_unique UNIQUE (page_id, inv_page_id);


--
-- Name: pages pages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: pages_components pages_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_components
    ADD CONSTRAINT pages_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: product_features product_features_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_features
    ADD CONSTRAINT product_features_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- Name: admin_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- Name: admin_users_roles_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);


--
-- Name: admin_users_roles_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: articles_authors_bio_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX articles_authors_bio_links_fk ON public.articles_authors_bio_links USING btree (article_id);


--
-- Name: articles_authors_bio_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX articles_authors_bio_links_inv_fk ON public.articles_authors_bio_links USING btree (author_id);


--
-- Name: articles_authors_bio_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX articles_authors_bio_links_order_inv_fk ON public.articles_authors_bio_links USING btree (article_order);


--
-- Name: articles_category_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX articles_category_links_fk ON public.articles_category_links USING btree (article_id);


--
-- Name: articles_category_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX articles_category_links_inv_fk ON public.articles_category_links USING btree (category_id);


--
-- Name: articles_category_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX articles_category_links_order_inv_fk ON public.articles_category_links USING btree (article_order);


--
-- Name: articles_component_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX articles_component_type_index ON public.articles_components USING btree (component_type);


--
-- Name: articles_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX articles_created_by_id_fk ON public.articles USING btree (created_by_id);


--
-- Name: articles_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX articles_entity_fk ON public.articles_components USING btree (entity_id);


--
-- Name: articles_field_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX articles_field_index ON public.articles_components USING btree (field);


--
-- Name: articles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX articles_updated_by_id_fk ON public.articles USING btree (updated_by_id);


--
-- Name: authors_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authors_created_by_id_fk ON public.authors USING btree (created_by_id);


--
-- Name: authors_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authors_updated_by_id_fk ON public.authors USING btree (updated_by_id);


--
-- Name: categories_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_created_by_id_fk ON public.categories USING btree (created_by_id);


--
-- Name: categories_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_updated_by_id_fk ON public.categories USING btree (updated_by_id);


--
-- Name: components_elements_notification_banners_component_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_elements_notification_banners_component_type_index ON public.components_elements_notification_banners_components USING btree (component_type);


--
-- Name: components_elements_notification_banners_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_elements_notification_banners_entity_fk ON public.components_elements_notification_banners_components USING btree (entity_id);


--
-- Name: components_elements_notification_banners_field_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_elements_notification_banners_field_index ON public.components_elements_notification_banners_components USING btree (field);


--
-- Name: components_elements_plans_product_features_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_elements_plans_product_features_links_fk ON public.components_elements_plans_product_features_links USING btree (plan_id);


--
-- Name: components_elements_plans_product_features_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_elements_plans_product_features_links_inv_fk ON public.components_elements_plans_product_features_links USING btree (product_feature_id);


--
-- Name: components_elements_plans_product_features_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_elements_plans_product_features_links_order_fk ON public.components_elements_plans_product_features_links USING btree (product_feature_order);


--
-- Name: components_layout_features_component_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_layout_features_component_type_index ON public.components_layout_features_components USING btree (component_type);


--
-- Name: components_layout_features_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_layout_features_entity_fk ON public.components_layout_features_components USING btree (entity_id);


--
-- Name: components_layout_features_field_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_layout_features_field_index ON public.components_layout_features_components USING btree (field);


--
-- Name: components_layout_footers_categories_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_layout_footers_categories_links_fk ON public.components_layout_footers_categories_links USING btree (footer_id);


--
-- Name: components_layout_footers_categories_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_layout_footers_categories_links_inv_fk ON public.components_layout_footers_categories_links USING btree (category_id);


--
-- Name: components_layout_footers_categories_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_layout_footers_categories_links_order_fk ON public.components_layout_footers_categories_links USING btree (category_order);


--
-- Name: components_layout_footers_component_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_layout_footers_component_type_index ON public.components_layout_footers_components USING btree (component_type);


--
-- Name: components_layout_footers_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_layout_footers_entity_fk ON public.components_layout_footers_components USING btree (entity_id);


--
-- Name: components_layout_footers_field_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_layout_footers_field_index ON public.components_layout_footers_components USING btree (field);


--
-- Name: components_layout_navbars_component_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_layout_navbars_component_type_index ON public.components_layout_navbars_components USING btree (component_type);


--
-- Name: components_layout_navbars_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_layout_navbars_entity_fk ON public.components_layout_navbars_components USING btree (entity_id);


--
-- Name: components_layout_navbars_field_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_layout_navbars_field_index ON public.components_layout_navbars_components USING btree (field);


--
-- Name: components_links_footer_sections_component_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_links_footer_sections_component_type_index ON public.components_links_footer_sections_components USING btree (component_type);


--
-- Name: components_links_footer_sections_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_links_footer_sections_entity_fk ON public.components_links_footer_sections_components USING btree (entity_id);


--
-- Name: components_links_footer_sections_field_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_links_footer_sections_field_index ON public.components_links_footer_sections_components USING btree (field);


--
-- Name: components_sections_lead_forms_component_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_sections_lead_forms_component_type_index ON public.components_sections_lead_forms_components USING btree (component_type);


--
-- Name: components_sections_lead_forms_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_sections_lead_forms_entity_fk ON public.components_sections_lead_forms_components USING btree (entity_id);


--
-- Name: components_sections_lead_forms_field_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_sections_lead_forms_field_index ON public.components_sections_lead_forms_components USING btree (field);


--
-- Name: components_sections_pricings_component_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_sections_pricings_component_type_index ON public.components_sections_pricings_components USING btree (component_type);


--
-- Name: components_sections_pricings_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_sections_pricings_entity_fk ON public.components_sections_pricings_components USING btree (entity_id);


--
-- Name: components_sections_pricings_field_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_sections_pricings_field_index ON public.components_sections_pricings_components USING btree (field);


--
-- Name: components_slices_bottom_actions_component_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_slices_bottom_actions_component_type_index ON public.components_slices_bottom_actions_components USING btree (component_type);


--
-- Name: components_slices_bottom_actions_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_slices_bottom_actions_entity_fk ON public.components_slices_bottom_actions_components USING btree (entity_id);


--
-- Name: components_slices_bottom_actions_field_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_slices_bottom_actions_field_index ON public.components_slices_bottom_actions_components USING btree (field);


--
-- Name: components_slices_feature_columns_groups_component_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_slices_feature_columns_groups_component_type_index ON public.components_slices_feature_columns_groups_components USING btree (component_type);


--
-- Name: components_slices_feature_columns_groups_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_slices_feature_columns_groups_entity_fk ON public.components_slices_feature_columns_groups_components USING btree (entity_id);


--
-- Name: components_slices_feature_columns_groups_field_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_slices_feature_columns_groups_field_index ON public.components_slices_feature_columns_groups_components USING btree (field);


--
-- Name: components_slices_feature_rows_component_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_slices_feature_rows_component_type_index ON public.components_slices_feature_rows_components USING btree (component_type);


--
-- Name: components_slices_feature_rows_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_slices_feature_rows_entity_fk ON public.components_slices_feature_rows_components USING btree (entity_id);


--
-- Name: components_slices_feature_rows_field_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_slices_feature_rows_field_index ON public.components_slices_feature_rows_components USING btree (field);


--
-- Name: components_slices_feature_rows_groups_component_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_slices_feature_rows_groups_component_type_index ON public.components_slices_feature_rows_groups_components USING btree (component_type);


--
-- Name: components_slices_feature_rows_groups_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_slices_feature_rows_groups_entity_fk ON public.components_slices_feature_rows_groups_components USING btree (entity_id);


--
-- Name: components_slices_feature_rows_groups_field_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_slices_feature_rows_groups_field_index ON public.components_slices_feature_rows_groups_components USING btree (field);


--
-- Name: components_slices_heroes_component_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_slices_heroes_component_type_index ON public.components_slices_heroes_components USING btree (component_type);


--
-- Name: components_slices_heroes_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_slices_heroes_entity_fk ON public.components_slices_heroes_components USING btree (entity_id);


--
-- Name: components_slices_heroes_field_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_slices_heroes_field_index ON public.components_slices_heroes_components USING btree (field);


--
-- Name: components_slices_testimonials_groups_component_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_slices_testimonials_groups_component_type_index ON public.components_slices_testimonials_groups_components USING btree (component_type);


--
-- Name: components_slices_testimonials_groups_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_slices_testimonials_groups_entity_fk ON public.components_slices_testimonials_groups_components USING btree (entity_id);


--
-- Name: components_slices_testimonials_groups_field_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_slices_testimonials_groups_field_index ON public.components_slices_testimonials_groups_components USING btree (field);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_folder_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);


--
-- Name: files_folder_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);


--
-- Name: files_folder_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);


--
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- Name: files_related_morphs_id_column_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);


--
-- Name: files_related_morphs_order_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: globals_component_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX globals_component_type_index ON public.globals_components USING btree (component_type);


--
-- Name: globals_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX globals_created_by_id_fk ON public.globals USING btree (created_by_id);


--
-- Name: globals_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX globals_entity_fk ON public.globals_components USING btree (entity_id);


--
-- Name: globals_field_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX globals_field_index ON public.globals_components USING btree (field);


--
-- Name: globals_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX globals_localizations_links_fk ON public.globals_localizations_links USING btree (global_id);


--
-- Name: globals_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX globals_localizations_links_inv_fk ON public.globals_localizations_links USING btree (inv_global_id);


--
-- Name: globals_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX globals_localizations_links_order_fk ON public.globals_localizations_links USING btree (global_order);


--
-- Name: globals_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX globals_updated_by_id_fk ON public.globals USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: lead_form_submissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lead_form_submissions_created_by_id_fk ON public.lead_form_submissions USING btree (created_by_id);


--
-- Name: lead_form_submissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lead_form_submissions_updated_by_id_fk ON public.lead_form_submissions USING btree (updated_by_id);


--
-- Name: pages_component_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_component_type_index ON public.pages_components USING btree (component_type);


--
-- Name: pages_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_created_by_id_fk ON public.pages USING btree (created_by_id);


--
-- Name: pages_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_entity_fk ON public.pages_components USING btree (entity_id);


--
-- Name: pages_field_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_field_index ON public.pages_components USING btree (field);


--
-- Name: pages_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_localizations_links_fk ON public.pages_localizations_links USING btree (page_id);


--
-- Name: pages_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_localizations_links_inv_fk ON public.pages_localizations_links USING btree (inv_page_id);


--
-- Name: pages_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_localizations_links_order_fk ON public.pages_localizations_links USING btree (page_order);


--
-- Name: pages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_updated_by_id_fk ON public.pages USING btree (updated_by_id);


--
-- Name: product_features_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_features_created_by_id_fk ON public.product_features USING btree (created_by_id);


--
-- Name: product_features_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_features_updated_by_id_fk ON public.product_features USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- Name: strapi_transfer_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);


--
-- Name: strapi_transfer_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);


--
-- Name: strapi_transfer_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);


--
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- Name: up_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- Name: up_users_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_parent_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);


--
-- Name: upload_folders_parent_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: articles_authors_bio_links articles_authors_bio_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles_authors_bio_links
    ADD CONSTRAINT articles_authors_bio_links_fk FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;


--
-- Name: articles_authors_bio_links articles_authors_bio_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles_authors_bio_links
    ADD CONSTRAINT articles_authors_bio_links_inv_fk FOREIGN KEY (author_id) REFERENCES public.authors(id) ON DELETE CASCADE;


--
-- Name: articles_category_links articles_category_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles_category_links
    ADD CONSTRAINT articles_category_links_fk FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;


--
-- Name: articles_category_links articles_category_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles_category_links
    ADD CONSTRAINT articles_category_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: articles articles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: articles_components articles_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles_components
    ADD CONSTRAINT articles_entity_fk FOREIGN KEY (entity_id) REFERENCES public.articles(id) ON DELETE CASCADE;


--
-- Name: articles articles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: authors authors_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: authors authors_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: categories categories_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: categories categories_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: components_elements_notification_banners_components components_elements_notification_banners_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_elements_notification_banners_components
    ADD CONSTRAINT components_elements_notification_banners_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_elements_notification_banners(id) ON DELETE CASCADE;


--
-- Name: components_elements_plans_product_features_links components_elements_plans_product_features_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_elements_plans_product_features_links
    ADD CONSTRAINT components_elements_plans_product_features_links_fk FOREIGN KEY (plan_id) REFERENCES public.components_elements_plans(id) ON DELETE CASCADE;


--
-- Name: components_elements_plans_product_features_links components_elements_plans_product_features_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_elements_plans_product_features_links
    ADD CONSTRAINT components_elements_plans_product_features_links_inv_fk FOREIGN KEY (product_feature_id) REFERENCES public.product_features(id) ON DELETE CASCADE;


--
-- Name: components_layout_features_components components_layout_features_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_layout_features_components
    ADD CONSTRAINT components_layout_features_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_layout_features(id) ON DELETE CASCADE;


--
-- Name: components_layout_footers_categories_links components_layout_footers_categories_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_layout_footers_categories_links
    ADD CONSTRAINT components_layout_footers_categories_links_fk FOREIGN KEY (footer_id) REFERENCES public.components_layout_footers(id) ON DELETE CASCADE;


--
-- Name: components_layout_footers_categories_links components_layout_footers_categories_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_layout_footers_categories_links
    ADD CONSTRAINT components_layout_footers_categories_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: components_layout_footers_components components_layout_footers_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_layout_footers_components
    ADD CONSTRAINT components_layout_footers_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_layout_footers(id) ON DELETE CASCADE;


--
-- Name: components_layout_navbars_components components_layout_navbars_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_layout_navbars_components
    ADD CONSTRAINT components_layout_navbars_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_layout_navbars(id) ON DELETE CASCADE;


--
-- Name: components_links_footer_sections_components components_links_footer_sections_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_links_footer_sections_components
    ADD CONSTRAINT components_links_footer_sections_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_links_footer_sections(id) ON DELETE CASCADE;


--
-- Name: components_sections_lead_forms_components components_sections_lead_forms_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_sections_lead_forms_components
    ADD CONSTRAINT components_sections_lead_forms_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_sections_lead_forms(id) ON DELETE CASCADE;


--
-- Name: components_sections_pricings_components components_sections_pricings_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_sections_pricings_components
    ADD CONSTRAINT components_sections_pricings_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_sections_pricings(id) ON DELETE CASCADE;


--
-- Name: components_slices_bottom_actions_components components_slices_bottom_actions_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_bottom_actions_components
    ADD CONSTRAINT components_slices_bottom_actions_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_slices_bottom_actions(id) ON DELETE CASCADE;


--
-- Name: components_slices_feature_columns_groups_components components_slices_feature_columns_groups_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_feature_columns_groups_components
    ADD CONSTRAINT components_slices_feature_columns_groups_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_slices_feature_columns_groups(id) ON DELETE CASCADE;


--
-- Name: components_slices_feature_rows_components components_slices_feature_rows_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_feature_rows_components
    ADD CONSTRAINT components_slices_feature_rows_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_slices_feature_rows(id) ON DELETE CASCADE;


--
-- Name: components_slices_feature_rows_groups_components components_slices_feature_rows_groups_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_feature_rows_groups_components
    ADD CONSTRAINT components_slices_feature_rows_groups_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_slices_feature_rows_groups(id) ON DELETE CASCADE;


--
-- Name: components_slices_heroes_components components_slices_heroes_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_heroes_components
    ADD CONSTRAINT components_slices_heroes_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_slices_heroes(id) ON DELETE CASCADE;


--
-- Name: components_slices_testimonials_groups_components components_slices_testimonials_groups_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_slices_testimonials_groups_components
    ADD CONSTRAINT components_slices_testimonials_groups_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_slices_testimonials_groups(id) ON DELETE CASCADE;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_links files_folder_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_links files_folder_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: globals globals_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: globals_components globals_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.globals_components
    ADD CONSTRAINT globals_entity_fk FOREIGN KEY (entity_id) REFERENCES public.globals(id) ON DELETE CASCADE;


--
-- Name: globals_localizations_links globals_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.globals_localizations_links
    ADD CONSTRAINT globals_localizations_links_fk FOREIGN KEY (global_id) REFERENCES public.globals(id) ON DELETE CASCADE;


--
-- Name: globals_localizations_links globals_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.globals_localizations_links
    ADD CONSTRAINT globals_localizations_links_inv_fk FOREIGN KEY (inv_global_id) REFERENCES public.globals(id) ON DELETE CASCADE;


--
-- Name: globals globals_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: lead_form_submissions lead_form_submissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lead_form_submissions
    ADD CONSTRAINT lead_form_submissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: lead_form_submissions lead_form_submissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lead_form_submissions
    ADD CONSTRAINT lead_form_submissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: pages pages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: pages_components pages_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_components
    ADD CONSTRAINT pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_localizations_links pages_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_localizations_links
    ADD CONSTRAINT pages_localizations_links_fk FOREIGN KEY (page_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_localizations_links pages_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_localizations_links
    ADD CONSTRAINT pages_localizations_links_inv_fk FOREIGN KEY (inv_page_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages pages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: product_features product_features_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_features
    ADD CONSTRAINT product_features_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: product_features product_features_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_features
    ADD CONSTRAINT product_features_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

