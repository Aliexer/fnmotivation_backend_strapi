--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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
-- Name: article; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.article (
    id integer NOT NULL,
    title character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    content text,
    body text,
    slug character varying(255),
    intro text,
    published boolean,
    type character varying(255),
    author_id bigint,
    category_id integer,
    likes integer,
    "outer" boolean,
    outer_image character varying(255),
    outer_url character varying(255),
    thumb character varying(255),
    show_share_popup boolean,
    article_category integer,
    article_author integer,
    comment integer,
    published_at timestamp with time zone
);


ALTER TABLE public.article OWNER TO postgres;

--
-- Name: article-tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."article-tags" (
    id integer NOT NULL,
    title character varying(255),
    slug character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    article integer,
    article_id bigint
);


ALTER TABLE public."article-tags" OWNER TO postgres;

--
-- Name: article-tags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."article-tags_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."article-tags_id_seq" OWNER TO postgres;

--
-- Name: article-tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."article-tags_id_seq" OWNED BY public."article-tags".id;


--
-- Name: article__article_tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.article__article_tags (
    id integer NOT NULL,
    article_id integer,
    "article-tag_id" integer
);


ALTER TABLE public.article__article_tags OWNER TO postgres;

--
-- Name: article__article_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.article__article_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.article__article_tags_id_seq OWNER TO postgres;

--
-- Name: article__article_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.article__article_tags_id_seq OWNED BY public.article__article_tags.id;


--
-- Name: article__comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.article__comments (
    id integer NOT NULL,
    article_id integer,
    comment_id integer
);


ALTER TABLE public.article__comments OWNER TO postgres;

--
-- Name: article__comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.article__comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.article__comments_id_seq OWNER TO postgres;

--
-- Name: article__comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.article__comments_id_seq OWNED BY public.article__comments.id;


--
-- Name: article_bookmark; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.article_bookmark (
    id integer NOT NULL,
    user_id integer,
    article_id integer,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.article_bookmark OWNER TO postgres;

--
-- Name: article_bookmark_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.article_bookmark_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.article_bookmark_id_seq OWNER TO postgres;

--
-- Name: article_bookmark_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.article_bookmark_id_seq OWNED BY public.article_bookmark.id;


--
-- Name: article_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.article_category (
    id integer NOT NULL,
    title character varying(255),
    slug character varying(255),
    color character varying(255),
    thumb character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.article_category OWNER TO postgres;

--
-- Name: article_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.article_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.article_category_id_seq OWNER TO postgres;

--
-- Name: article_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.article_category_id_seq OWNED BY public.article_category.id;


--
-- Name: article_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.article_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.article_id_seq OWNER TO postgres;

--
-- Name: article_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.article_id_seq OWNED BY public.article.id;


--
-- Name: article_like; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.article_like (
    id integer NOT NULL,
    article_id character varying(255),
    user_id character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.article_like OWNER TO postgres;

--
-- Name: article_like_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.article_like_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.article_like_id_seq OWNER TO postgres;

--
-- Name: article_like_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.article_like_id_seq OWNED BY public.article_like.id;


--
-- Name: articles_article_categories__article_categories_articles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.articles_article_categories__article_categories_articles (
    id integer NOT NULL,
    "article-category_id" integer,
    article_id integer
);


ALTER TABLE public.articles_article_categories__article_categories_articles OWNER TO postgres;

--
-- Name: articles_article_categories__article_categories_articles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.articles_article_categories__article_categories_articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_article_categories__article_categories_articles_id_seq OWNER TO postgres;

--
-- Name: articles_article_categories__article_categories_articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.articles_article_categories__article_categories_articles_id_seq OWNED BY public.articles_article_categories__article_categories_articles.id;


--
-- Name: articles_article_tags__article_tags_articles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.articles_article_tags__article_tags_articles (
    id integer NOT NULL,
    article_id integer,
    "article-tag_id" integer
);


ALTER TABLE public.articles_article_tags__article_tags_articles OWNER TO postgres;

--
-- Name: articles_article_tags__article_tags_articles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.articles_article_tags__article_tags_articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_article_tags__article_tags_articles_id_seq OWNER TO postgres;

--
-- Name: articles_article_tags__article_tags_articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.articles_article_tags__article_tags_articles_id_seq OWNED BY public.articles_article_tags__article_tags_articles.id;


--
-- Name: comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comment (
    id integer NOT NULL,
    content text,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    users_permissions_user integer,
    article integer,
    published boolean
);


ALTER TABLE public.comment OWNER TO postgres;

--
-- Name: comment__comment_replies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comment__comment_replies (
    id integer NOT NULL,
    comment_id integer,
    "comment-reply_id" integer
);


ALTER TABLE public.comment__comment_replies OWNER TO postgres;

--
-- Name: comment__comment_replies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comment__comment_replies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comment__comment_replies_id_seq OWNER TO postgres;

--
-- Name: comment__comment_replies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comment__comment_replies_id_seq OWNED BY public.comment__comment_replies.id;


--
-- Name: comment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comment_id_seq OWNER TO postgres;

--
-- Name: comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comment_id_seq OWNED BY public.comment.id;


--
-- Name: comment_reply; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comment_reply (
    id integer NOT NULL,
    content text,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    comment integer,
    users_permissions_user integer
);


ALTER TABLE public.comment_reply OWNER TO postgres;

--
-- Name: comment_reply_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comment_reply_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comment_reply_id_seq OWNER TO postgres;

--
-- Name: comment_reply_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comment_reply_id_seq OWNED BY public.comment_reply.id;


--
-- Name: contact_us; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contact_us (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255),
    subject character varying(255),
    message text,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.contact_us OWNER TO postgres;

--
-- Name: contact_us_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contact_us_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_us_id_seq OWNER TO postgres;

--
-- Name: contact_us_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contact_us_id_seq OWNED BY public.contact_us.id;


--
-- Name: core_store; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.core_store OWNER TO postgres;

--
-- Name: core_store_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_store_id_seq OWNER TO postgres;

--
-- Name: core_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;


--
-- Name: link_preview; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.link_preview (
    id integer NOT NULL,
    url character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.link_preview OWNER TO postgres;

--
-- Name: link_preview_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.link_preview_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.link_preview_id_seq OWNER TO postgres;

--
-- Name: link_preview_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.link_preview_id_seq OWNED BY public.link_preview.id;


--
-- Name: notification; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notification (
    id integer NOT NULL,
    object_id integer,
    text character varying(255),
    read boolean,
    content_type_id integer,
    user_from_id integer,
    user_to_id integer,
    admin_level boolean,
    link character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.notification OWNER TO postgres;

--
-- Name: notification_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.notification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notification_id_seq OWNER TO postgres;

--
-- Name: notification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.notification_id_seq OWNED BY public.notification.id;


--
-- Name: strapi_administrator; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "registrationToken" character varying(255),
    "isActive" boolean,
    blocked boolean
);


ALTER TABLE public.strapi_administrator OWNER TO postgres;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_administrator_id_seq OWNER TO postgres;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;


--
-- Name: strapi_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_permission (
    id integer NOT NULL,
    action character varying(255) NOT NULL,
    subject character varying(255),
    fields jsonb,
    conditions jsonb,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_permission OWNER TO postgres;

--
-- Name: strapi_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_permission_id_seq OWNER TO postgres;

--
-- Name: strapi_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_permission_id_seq OWNED BY public.strapi_permission.id;


--
-- Name: strapi_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_role OWNER TO postgres;

--
-- Name: strapi_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_role_id_seq OWNER TO postgres;

--
-- Name: strapi_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_role_id_seq OWNED BY public.strapi_role.id;


--
-- Name: strapi_users_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_users_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);


ALTER TABLE public.strapi_users_roles OWNER TO postgres;

--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_users_roles_id_seq OWNER TO postgres;

--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_users_roles_id_seq OWNED BY public.strapi_users_roles.id;


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
-- Name: subscribe_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subscribe_category (
    id integer NOT NULL,
    user_id bigint,
    category_id bigint,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.subscribe_category OWNER TO postgres;

--
-- Name: subscribe_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subscribe_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscribe_category_id_seq OWNER TO postgres;

--
-- Name: subscribe_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subscribe_category_id_seq OWNED BY public.subscribe_category.id;


--
-- Name: subscriber_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subscriber_categories (
    id integer NOT NULL,
    user_id bigint,
    category_id bigint,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.subscriber_categories OWNER TO postgres;

--
-- Name: subscriber_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subscriber_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscriber_categories_id_seq OWNER TO postgres;

--
-- Name: subscriber_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subscriber_categories_id_seq OWNED BY public.subscriber_categories.id;


--
-- Name: subscriber_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subscriber_category (
    id integer NOT NULL,
    category_id bigint,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_id bigint
);


ALTER TABLE public.subscriber_category OWNER TO postgres;

--
-- Name: subscriber_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subscriber_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscriber_category_id_seq OWNER TO postgres;

--
-- Name: subscriber_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subscriber_category_id_seq OWNED BY public.subscriber_category.id;


--
-- Name: upload_file; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.upload_file OWNER TO postgres;

--
-- Name: upload_file_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_id_seq OWNER TO postgres;

--
-- Name: upload_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;


--
-- Name: upload_file_morph; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);


ALTER TABLE public.upload_file_morph OWNER TO postgres;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_morph_id_seq OWNER TO postgres;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;


--
-- Name: user_follow; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_follow (
    id integer NOT NULL,
    from_customer_id integer,
    to_customer_id integer,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.user_follow OWNER TO postgres;

--
-- Name: user_follow_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_follow_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_follow_id_seq OWNER TO postgres;

--
-- Name: user_follow_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_follow_id_seq OWNED BY public.user_follow.id;


--
-- Name: users-permissions_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer,
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_permission" OWNER TO postgres;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_permission_id_seq" OWNER TO postgres;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;


--
-- Name: users-permissions_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255),
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_role" OWNER TO postgres;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_role_id_seq" OWNER TO postgres;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;


--
-- Name: users-permissions_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "confirmationToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    fullname character varying(255),
    birthday character varying(255),
    gender character varying(255),
    last_login timestamp with time zone
);


ALTER TABLE public."users-permissions_user" OWNER TO postgres;

--
-- Name: users-permissions_user__subscriber_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."users-permissions_user__subscriber_categories" (
    id integer NOT NULL,
    "users-permissions_user_id" integer,
    "subscriber-category_id" integer
);


ALTER TABLE public."users-permissions_user__subscriber_categories" OWNER TO postgres;

--
-- Name: users-permissions_user__subscriber_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."users-permissions_user__subscriber_categories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_user__subscriber_categories_id_seq" OWNER TO postgres;

--
-- Name: users-permissions_user__subscriber_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."users-permissions_user__subscriber_categories_id_seq" OWNED BY public."users-permissions_user__subscriber_categories".id;


--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_user_id_seq" OWNER TO postgres;

--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;


--
-- Name: article id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article ALTER COLUMN id SET DEFAULT nextval('public.article_id_seq'::regclass);


--
-- Name: article-tags id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."article-tags" ALTER COLUMN id SET DEFAULT nextval('public."article-tags_id_seq"'::regclass);


--
-- Name: article__article_tags id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article__article_tags ALTER COLUMN id SET DEFAULT nextval('public.article__article_tags_id_seq'::regclass);


--
-- Name: article__comments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article__comments ALTER COLUMN id SET DEFAULT nextval('public.article__comments_id_seq'::regclass);


--
-- Name: article_bookmark id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_bookmark ALTER COLUMN id SET DEFAULT nextval('public.article_bookmark_id_seq'::regclass);


--
-- Name: article_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_category ALTER COLUMN id SET DEFAULT nextval('public.article_category_id_seq'::regclass);


--
-- Name: article_like id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_like ALTER COLUMN id SET DEFAULT nextval('public.article_like_id_seq'::regclass);


--
-- Name: articles_article_categories__article_categories_articles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles_article_categories__article_categories_articles ALTER COLUMN id SET DEFAULT nextval('public.articles_article_categories__article_categories_articles_id_seq'::regclass);


--
-- Name: articles_article_tags__article_tags_articles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles_article_tags__article_tags_articles ALTER COLUMN id SET DEFAULT nextval('public.articles_article_tags__article_tags_articles_id_seq'::regclass);


--
-- Name: comment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment ALTER COLUMN id SET DEFAULT nextval('public.comment_id_seq'::regclass);


--
-- Name: comment__comment_replies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment__comment_replies ALTER COLUMN id SET DEFAULT nextval('public.comment__comment_replies_id_seq'::regclass);


--
-- Name: comment_reply id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment_reply ALTER COLUMN id SET DEFAULT nextval('public.comment_reply_id_seq'::regclass);


--
-- Name: contact_us id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_us ALTER COLUMN id SET DEFAULT nextval('public.contact_us_id_seq'::regclass);


--
-- Name: core_store id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);


--
-- Name: link_preview id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.link_preview ALTER COLUMN id SET DEFAULT nextval('public.link_preview_id_seq'::regclass);


--
-- Name: notification id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notification ALTER COLUMN id SET DEFAULT nextval('public.notification_id_seq'::regclass);


--
-- Name: strapi_administrator id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);


--
-- Name: strapi_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_permission ALTER COLUMN id SET DEFAULT nextval('public.strapi_permission_id_seq'::regclass);


--
-- Name: strapi_role id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role ALTER COLUMN id SET DEFAULT nextval('public.strapi_role_id_seq'::regclass);


--
-- Name: strapi_users_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_users_roles ALTER COLUMN id SET DEFAULT nextval('public.strapi_users_roles_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: subscribe_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscribe_category ALTER COLUMN id SET DEFAULT nextval('public.subscribe_category_id_seq'::regclass);


--
-- Name: subscriber_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscriber_categories ALTER COLUMN id SET DEFAULT nextval('public.subscriber_categories_id_seq'::regclass);


--
-- Name: subscriber_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscriber_category ALTER COLUMN id SET DEFAULT nextval('public.subscriber_category_id_seq'::regclass);


--
-- Name: upload_file id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);


--
-- Name: upload_file_morph id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);


--
-- Name: user_follow id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_follow ALTER COLUMN id SET DEFAULT nextval('public.user_follow_id_seq'::regclass);


--
-- Name: users-permissions_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);


--
-- Name: users-permissions_role id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);


--
-- Name: users-permissions_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);


--
-- Name: users-permissions_user__subscriber_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user__subscriber_categories" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user__subscriber_categories_id_seq"'::regclass);


--
-- Data for Name: article; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.article (id, title, created_by, updated_by, created_at, updated_at, content, body, slug, intro, published, type, author_id, category_id, likes, "outer", outer_image, outer_url, thumb, show_share_popup, article_category, article_author, comment, published_at) FROM stdin;
20	Second Article	1	1	2020-11-15 16:06:47.517+02	2020-11-27 04:35:16.444+02	\N	Web pages development - HTML is used to create pages which are rendered over the web. Almost every page of web is having html tags in it to render its details in browser.\n\nInternet Navigation - HTML provides tags which are used to navigate from one page to another and is heavily used in internet navigation.\n\nResponsive UI - HTML pages now-a-days works well on all platform, mobile, tabs, desktop or laptops owing to responsive design strategy.\n\nOffline support HTML pages once loaded can be made available offline on the machine without any need of internet.	smoking	Web pages development - HTML is used to create pages which are rendered over the web. Almost every page of web is having html tags in it to render its details in browser.\n	f	B	\N	\N	4	f	image2	http://HealthyCare.com	image2	t	6	8	\N	2020-11-15 16:06:47.517+02
24	title	\N	1	2020-11-17 14:35:02.102+02	2020-11-27 16:45:53.833+02	\N	body	\N	short	f	\N	\N	\N	\N	f	\N	\N	\N	t	11	4	20	2020-11-17 14:35:02.102+02
27	My first Story Using Client Com	\N	1	2020-11-17 14:55:47.076+02	2020-11-28 02:21:40.986+02	\N	It was very difficult to implement image uploading using Strapi.\nHew!!!!!\n	\N	Strapi Image Uploading Technology	t	\N	\N	\N	27	f	\N	\N	\N	t	4	16	1	2020-11-17 14:55:47.076+02
57	test post	\N	\N	2020-12-07 17:14:20.06+02	2020-12-07 17:14:20.07+02	\N	test test 	\N	this is great	\N	\N	\N	\N	0	f	\N	\N	\N	\N	12	25	\N	2020-12-07 17:14:20.051+02
58	test post	\N	\N	2020-12-07 17:14:27.879+02	2020-12-07 17:14:27.886+02	\N	test test 	\N	this is great	\N	\N	\N	\N	0	f	\N	\N	\N	\N	12	25	\N	2020-12-07 17:14:27.87+02
54	Why Stress Happens and How to Manage It | Everyday Health	\N	1	2020-11-25 23:43:32.27+02	2020-12-11 19:47:24.768+02	\N	\N	\N	A little bit of stress is a good thing, but feeling stressed out is not. Learn about the symptoms of stress, how stress affects you, and how you can manage it.	f	\N	\N	\N	1	t	https://images.everydayhealth.com/images/site-images/eh_social_300.png	https://www.everydayhealth.com/stress/guide/	\N	\N	9	3	\N	2020-11-25 23:43:32.27+02
30	Heart Disease	\N	1	2020-11-17 22:40:18.659+02	2020-12-11 19:47:24.768+02	\N	dfdsfds	\N	short	t	\N	\N	\N	1	f	\N	\N	\N	\N	4	3	\N	2020-11-17 22:40:18.659+02
29	How can we avoid Hear Disease	\N	1	2020-11-17 22:34:22.367+02	2020-12-11 19:47:24.768+02	\N	hahahahahah1111	\N	Strapi Image Uploading Technology	f	\N	\N	\N	\N	f	\N	\N	\N	\N	5	3	\N	2020-11-17 22:34:22.367+02
53	Article Tags Work?	\N	1	2020-11-23 23:24:48.983+02	2020-12-12 18:05:19.428+02	\N	Article tags Test.	\N	Surprising	t	\N	\N	\N	0	f	\N	\N	\N	\N	10	3	34	2020-11-27 17:59:43.13+02
56	publish	\N	1	2020-11-27 04:40:57.637+02	2020-12-11 19:47:24.768+02	\N	publish	\N	publish	t	\N	\N	\N	1	f	\N	\N	\N	\N	4	3	25	2020-11-27 05:26:28.983+02
55	Mental Healthy	\N	1	2020-11-27 02:39:06.401+02	2020-12-12 19:47:14.288+02	\N	Mental Healthy	\N	Surprising	f	\N	\N	\N	0	f	\N	\N	\N	\N	14	3	35	2020-11-27 02:39:06.401+02
59	Rig Lynx Announces Digital Marketing and Software Development Partnership with IAWCI	\N	\N	2020-12-07 18:34:17.856+02	2020-12-13 19:25:14.862+02	\N	\N	\N	Houston, Texas, December 1, 2021: IAWCI (International Association of Well Control Instructors) announced today a partnership with Rig Lynx, a specialized social network and provider of specialized marketing solutions for the oil and gas industry.  IAWCI efforts are focused on improving the Oil and Gas Industry safety and environmental track record through improved Well Control training.  Working with the accrediting organizations, IAWCI members, consisting of Instructors, Providers and Subject Matter Experts, are working to enhance well control training, bringing it current with today’s industry practices and challenges.  Through this partnership Rig Lynx will provide IAWCI with specialized digital marketing solutions and software development.	\N	\N	\N	\N	1	t	https://riglynxassets.s3.amazonaws.com/uploads/blog_images/96af7f8fcf4ae3d1516c8e99442015f6.png	https://riglynx.com/rig-lynx-announces-digital-marketing-and-software-development-partnership-with-iawci	\N	\N	13	26	\N	2020-12-07 18:34:17.843+02
\.


--
-- Data for Name: article-tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."article-tags" (id, title, slug, published_at, created_by, updated_by, created_at, updated_at, article, article_id) FROM stdin;
40	T	\N	2020-11-24 00:03:07.856+02	\N	1	2020-11-24 00:03:07.864+02	2020-11-24 00:21:00.438+02	\N	23
42	Heart Deases	\N	2020-11-24 00:14:29.612+02	\N	1	2020-11-24 00:14:29.617+02	2020-11-24 00:21:09.679+02	\N	27
41	Stress	\N	2020-11-24 00:11:04.517+02	\N	1	2020-11-24 00:11:04.527+02	2020-11-24 00:21:31.87+02	\N	27
43	mental	\N	2020-11-27 02:39:06.555+02	\N	\N	2020-11-27 02:39:06.559+02	2020-11-27 02:39:06.559+02	\N	55
44	halthy	\N	2020-11-27 02:39:06.595+02	\N	\N	2020-11-27 02:39:06.598+02	2020-11-27 02:39:06.598+02	\N	55
45	tags	\N	2020-11-27 04:40:57.749+02	\N	\N	2020-11-27 04:40:57.754+02	2020-11-27 04:40:57.754+02	\N	56
46	publish	\N	2020-11-27 04:40:57.767+02	\N	\N	2020-11-27 04:40:57.77+02	2020-11-27 04:40:57.77+02	\N	56
\.


--
-- Data for Name: article__article_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.article__article_tags (id, article_id, "article-tag_id") FROM stdin;
\.


--
-- Data for Name: article__comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.article__comments (id, article_id, comment_id) FROM stdin;
\.


--
-- Data for Name: article_bookmark; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.article_bookmark (id, user_id, article_id, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
5	3	20	2020-11-26 08:42:14.933+02	\N	\N	2020-11-26 08:42:14.947+02	2020-11-26 08:42:14.947+02
6	16	53	2020-11-27 02:41:34.472+02	\N	\N	2020-11-27 02:41:34.475+02	2020-11-27 02:41:34.475+02
7	16	24	2020-11-27 02:41:45.539+02	\N	\N	2020-11-27 02:41:45.542+02	2020-11-27 02:41:45.542+02
8	8	27	2020-11-28 02:21:46.535+02	\N	\N	2020-11-28 02:21:46.54+02	2020-11-28 02:21:46.54+02
9	24	56	2020-11-28 07:48:47.09+02	\N	\N	2020-11-28 07:48:47.093+02	2020-11-28 07:48:47.093+02
10	25	53	2020-12-07 17:15:08.184+02	\N	\N	2020-12-07 17:15:08.187+02	2020-12-07 17:15:08.187+02
20	32	55	2020-12-12 20:17:58.081+02	\N	\N	2020-12-12 20:17:58.089+02	2020-12-12 20:17:58.089+02
\.


--
-- Data for Name: article_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.article_category (id, title, slug, color, thumb, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
13	Eating Disorder	eating-disorder	#DCDCDC	articles/eating_disorder.png	2020-11-18 00:56:19.86+02	1	1	2020-11-18 00:55:36.742+02	2020-11-18 03:39:06.186+02
6	Weight Issues	weight-issues	"#D39ADC"	articles/Weight_issues.png	2020-11-15 15:57:51.966+02	1	1	2020-11-15 15:56:09.864+02	2020-11-15 15:57:51.987+02
4	Heart Disease	heart-disease	#54DCAF	articles/Heart_disease.png	2020-11-15 15:57:34.01+02	1	1	2020-11-15 15:54:51.047+02	2020-11-16 01:32:01.388+02
8	Alcohol Addiction	alcohol-addiction	#DCD684	articles/Alcohol_addiction.png	2020-11-18 00:56:07.47+02	1	1	2020-11-18 00:53:32.305+02	2020-11-18 00:56:07.497+02
11	Anxiety	anxiety	#DC852D	articles/Anxiety.png	2020-11-18 00:56:11.657+02	1	1	2020-11-18 00:54:49.652+02	2020-11-18 00:56:11.686+02
10	Depression	depression	#DC3BDC	articles/Depression.png	2020-11-18 00:56:14.505+02	1	1	2020-11-18 00:54:30.07+02	2020-11-18 00:56:14.532+02
7	Drug Addiction	drug-addiction	#56DCB8	articles/Drug_addiction.png	2020-11-18 00:56:17.229+02	1	1	2020-11-18 00:53:00.358+02	2020-11-18 00:56:17.259+02
12	Insecurity	insecurity	#DCDCDC	articles/Insecurity.png	2020-11-18 00:56:22.891+02	1	1	2020-11-18 00:55:13.251+02	2020-11-18 00:56:22.92+02
14	Mental Health	mental-health	#DCDCDC	articles/Mental_helth.png	2020-11-18 00:56:25.771+02	1	1	2020-11-18 00:55:57.315+02	2020-11-18 00:56:25.803+02
9	Stress	stress	#2ED6DC	articles/Stress.png	2020-11-18 00:56:28.948+02	1	1	2020-11-18 00:53:54.535+02	2020-11-18 00:56:28.975+02
5	Smoking	smoking	"#72D1DC"	articles/smoking.png	2020-11-15 15:57:38.837+02	1	1	2020-11-15 15:55:39.044+02	2020-11-18 01:58:02.356+02
\.


--
-- Data for Name: article_like; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.article_like (id, article_id, user_id, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
30	59	39	2020-12-13 19:25:14.745+02	\N	\N	2020-12-13 19:25:14.755+02	2020-12-13 19:25:14.755+02
\.


--
-- Data for Name: articles_article_categories__article_categories_articles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.articles_article_categories__article_categories_articles (id, "article-category_id", article_id) FROM stdin;
1	4	19
\.


--
-- Data for Name: articles_article_tags__article_tags_articles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.articles_article_tags__article_tags_articles (id, article_id, "article-tag_id") FROM stdin;
\.


--
-- Data for Name: comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comment (id, content, published_at, created_by, updated_by, created_at, updated_at, users_permissions_user, article, published) FROM stdin;
1	My first comment!	2020-11-27 05:50:32.264+02	\N	1	2020-11-19 07:01:08.477+02	2020-11-27 16:45:41.103+02	8	27	t
2	Hello, Nice to meet you.\nI agree with you.\nI will be along with you.\nRegards!	2020-11-19 13:56:39.116+02	\N	1	2020-11-19 13:56:39.127+02	2020-11-27 16:45:46.763+02	16	\N	f
24	test?	2020-11-28 07:36:40.639+02	\N	\N	2020-11-28 07:36:40.643+02	2020-11-28 07:39:23.193+02	24	\N	f
25	again test	2020-11-28 07:39:23.182+02	\N	\N	2020-11-28 07:39:23.186+02	2020-11-28 07:39:23.196+02	24	56	f
20	Almost there!!! Go award.	2020-11-22 22:39:47.608+02	\N	1	2020-11-22 22:39:47.623+02	2020-12-11 19:47:24.77+02	3	24	f
26	first comment	2020-12-12 17:05:34.197+02	\N	\N	2020-12-12 17:05:34.203+02	2020-12-12 21:45:56.603+02	\N	\N	f
27	Great	2020-12-12 17:36:54.043+02	\N	\N	2020-12-12 17:36:54.05+02	2020-12-12 21:45:56.603+02	\N	\N	f
29	hello	2020-12-12 17:39:44.852+02	\N	1	2020-12-12 17:39:44.857+02	2020-12-12 21:45:56.603+02	\N	\N	t
28	I fixed text leaving after commet	2020-12-12 17:38:29.125+02	\N	1	2020-12-12 17:38:29.132+02	2020-12-12 21:45:56.603+02	\N	\N	t
30	Ok, good	2020-12-12 17:48:36.714+02	\N	\N	2020-12-12 17:48:36.72+02	2020-12-12 21:45:56.603+02	\N	\N	f
31	again	2020-12-12 17:57:12.451+02	\N	\N	2020-12-12 17:57:12.456+02	2020-12-12 21:45:56.603+02	\N	\N	f
32	again again	2020-12-12 17:57:32.144+02	\N	\N	2020-12-12 17:57:32.15+02	2020-12-12 21:45:56.603+02	\N	\N	f
33	again again again	2020-12-12 17:59:10.85+02	\N	\N	2020-12-12 17:59:10.855+02	2020-12-12 21:45:56.603+02	\N	\N	f
34	again again again again\n	2020-12-12 18:05:19.41+02	\N	\N	2020-12-12 18:05:19.415+02	2020-12-12 21:45:56.603+02	\N	53	f
35	mental healthy comment	2020-12-12 18:13:37.195+02	\N	\N	2020-12-12 18:13:37.212+02	2020-12-12 21:45:56.603+02	\N	55	f
\.


--
-- Data for Name: comment__comment_replies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comment__comment_replies (id, comment_id, "comment-reply_id") FROM stdin;
\.


--
-- Data for Name: comment_reply; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comment_reply (id, content, published_at, created_by, updated_by, created_at, updated_at, comment, users_permissions_user) FROM stdin;
1	Wow, Great! we are friends from now!! @^@	2020-11-19 19:31:47.704+02	\N	\N	2020-11-19 19:31:47.719+02	2020-12-11 19:47:24.773+02	2	3
\.


--
-- Data for Name: contact_us; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contact_us (id, name, email, subject, message, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
1	aphrodite	aphrodite@gmail.com	test	test	2020-11-25 00:56:09.668+02	\N	\N	2020-11-25 00:56:09.682+02	2020-11-25 00:56:09.682+02
\.


--
-- Data for Name: core_store; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
75	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true}	object	development	
78	plugin_content_manager_configuration_content_types::application::article-like.article-like	{"uid":"application::article-like.article-like","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"article_id":{"edit":{"label":"Article_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Article_id","searchable":true,"sortable":true}},"user_id":{"edit":{"label":"User_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"User_id","searchable":true,"sortable":true}},"published_at":{"edit":{"label":"Published_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Published_at","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","article_id","user_id","published_at"],"editRelations":[],"edit":[[{"name":"article_id","size":4},{"name":"user_id","size":4}]]}}	object		
81	plugin_content_manager_configuration_content_types::application::article.article	{"uid":"application::article.article","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"body":{"edit":{"label":"Body","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Body","searchable":false,"sortable":false}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"intro":{"edit":{"label":"Intro","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Intro","searchable":false,"sortable":false}},"published":{"edit":{"label":"Published","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Published","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"likes":{"edit":{"label":"Likes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Likes","searchable":true,"sortable":true}},"outer":{"edit":{"label":"Outer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Outer","searchable":true,"sortable":true}},"outer_image":{"edit":{"label":"Outer_image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Outer_image","searchable":true,"sortable":true}},"outer_url":{"edit":{"label":"Outer_url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Outer_url","searchable":true,"sortable":true}},"show_share_popup":{"edit":{"label":"Show_share_popup","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Show_share_popup","searchable":true,"sortable":true}},"article_author":{"edit":{"label":"Article_author","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Article_author","searchable":false,"sortable":false}},"article_category":{"edit":{"label":"Article_category","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"Article_category","searchable":false,"sortable":false}},"thumb":{"edit":{"label":"Thumb","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Thumb","searchable":false,"sortable":false}},"comment":{"edit":{"label":"Comment","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"Comment","searchable":false,"sortable":false}},"published_at":{"edit":{"label":"Published_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Published_at","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","slug","published"],"editRelations":["article_author","article_category","comment"],"edit":[[{"name":"title","size":6}],[{"name":"body","size":12}],[{"name":"slug","size":6}],[{"name":"intro","size":12}],[{"name":"published","size":4},{"name":"type","size":6}],[{"name":"likes","size":4},{"name":"outer","size":4}],[{"name":"outer_image","size":6},{"name":"outer_url","size":6}],[{"name":"show_share_popup","size":4},{"name":"thumb","size":6}]]}}	object		
88	plugin_content_manager_configuration_content_types::application::user-follow.user-follow	{"uid":"application::user-follow.user-follow","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"from_customer_id":{"edit":{"label":"From_customer_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"From_customer_id","searchable":true,"sortable":true}},"to_customer_id":{"edit":{"label":"To_customer_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"To_customer_id","searchable":true,"sortable":true}},"published_at":{"edit":{"label":"Published_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Published_at","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","from_customer_id","to_customer_id","published_at"],"editRelations":[],"edit":[[{"name":"from_customer_id","size":4},{"name":"to_customer_id","size":4}]]}}	object		
68	model_def_strapi::permission	{"uid":"strapi::permission","collectionName":"strapi_permission","kind":"collectionType","info":{"name":"Permission","description":""},"options":{"timestamps":["created_at","updated_at"]},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"fields":{"type":"json","configurable":false,"required":false,"default":[]},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"model":"role","plugin":"admin"}}}	object	\N	\N
83	plugin_content_manager_configuration_content_types::application::comment.comment	{"uid":"application::comment.comment","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":false,"sortable":false}},"users_permissions_user":{"edit":{"label":"Users_permissions_user","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users_permissions_user","searchable":false,"sortable":false}},"comment_replies":{"edit":{"label":"Comment_replies","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"Comment_replies","searchable":false,"sortable":false}},"article":{"edit":{"label":"Article","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"Article","searchable":false,"sortable":false}},"published":{"edit":{"label":"Published","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Published","searchable":true,"sortable":true}},"published_at":{"edit":{"label":"Published_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Published_at","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","published","published_at","created_at"],"editRelations":["users_permissions_user","comment_replies","article"],"edit":[[{"name":"content","size":12}],[{"name":"published","size":4}]]}}	object		
93	plugin_content_manager_configuration_content_types::plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"controller":{"edit":{"label":"Controller","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Controller","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"policy":{"edit":{"label":"Policy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Policy","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":false,"sortable":false}}},"layouts":{"list":["id","type","controller","action"],"editRelations":["role"],"edit":[[{"name":"type","size":6},{"name":"controller","size":6}],[{"name":"action","size":6},{"name":"enabled","size":4}],[{"name":"policy","size":6}]]}}	object		
69	model_def_strapi::role	{"uid":"strapi::role","collectionName":"strapi_role","kind":"collectionType","info":{"name":"Role","description":""},"options":{"timestamps":["created_at","updated_at"]},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"collection":"user","via":"roles","plugin":"admin","attribute":"user","column":"id","isVirtual":true},"permissions":{"configurable":false,"plugin":"admin","collection":"permission","via":"role","isVirtual":true}}}	object	\N	\N
82	plugin_content_manager_configuration_content_types::application::comment-reply.comment-reply	{"uid":"application::comment-reply.comment-reply","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":false,"sortable":false}},"comment":{"edit":{"label":"Comment","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"Comment","searchable":false,"sortable":false}},"users_permissions_user":{"edit":{"label":"Users_permissions_user","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users_permissions_user","searchable":false,"sortable":false}},"published_at":{"edit":{"label":"Published_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Published_at","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","published_at","created_at","updated_at"],"editRelations":["comment","users_permissions_user"],"edit":[[{"name":"content","size":12}]]}}	object		
86	plugin_content_manager_configuration_content_types::application::notification.notification	{"uid":"application::notification.notification","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"text","defaultSortBy":"text","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"object_id":{"edit":{"label":"Object_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Object_id","searchable":true,"sortable":true}},"text":{"edit":{"label":"Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Text","searchable":true,"sortable":true}},"read":{"edit":{"label":"Read","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Read","searchable":true,"sortable":true}},"content_type_id":{"edit":{"label":"Content_type_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content_type_id","searchable":true,"sortable":true}},"user_from_id":{"edit":{"label":"User_from_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"User_from_id","searchable":true,"sortable":true}},"user_to_id":{"edit":{"label":"User_to_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"User_to_id","searchable":true,"sortable":true}},"admin_level":{"edit":{"label":"Admin_level","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Admin_level","searchable":true,"sortable":true}},"link":{"edit":{"label":"Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Link","searchable":true,"sortable":true}},"published_at":{"edit":{"label":"Published_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Published_at","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","object_id","text","read"],"editRelations":[],"edit":[[{"name":"object_id","size":4},{"name":"text","size":6}],[{"name":"read","size":4},{"name":"content_type_id","size":4},{"name":"user_from_id","size":4}],[{"name":"user_to_id","size":4},{"name":"admin_level","size":4}],[{"name":"link","size":6}]]}}	object		
92	plugin_content_manager_configuration_content_types::plugins::upload.file	{"uid":"plugins::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"AlternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AlternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"Caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"Width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Width","searchable":true,"sortable":true}},"height":{"edit":{"label":"Height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"Formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"Hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"Ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"Mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"Size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Size","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"PreviewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreviewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"Provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider_metadata","searchable":false,"sortable":false}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"Related","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":["related"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}	object		
96	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object		
97	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object		
76	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"/auth/discord/callback","scope":["identify","email"],"redirectUri":"http://localhost:1337/connect/discord/callback"},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"/auth/facebook/callback","scope":["email"],"redirectUri":"http://localhost:1337/connect/facebook/callback"},"google":{"enabled":true,"icon":"google","key":"990486815864-ulj5e4986l0cr8fqsinut6k410globr4.apps.googleusercontent.com","secret":"nyyir5K-4ddzm2WiAkfeLMD7","callback":"http://localhost:3000/connect/google/redirect","scope":["email"],"redirectUri":"http://localhost:1337/connect/google/callback"},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"/auth/github/callback","scope":["user","user:email"],"redirectUri":"http://localhost:1337/connect/github/callback"},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"/auth/microsoft/callback","scope":["user.read"],"redirectUri":"http://localhost:1337/connect/microsoft/callback"},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"/auth/twitter/callback","redirectUri":"http://localhost:1337/connect/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"/auth/instagram/callback","redirectUri":"http://localhost:1337/connect/instagram/callback"},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"/auth/vk/callback","scope":["email"],"redirectUri":"http://localhost:1337/connect/vk/callback"},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"/auth/twitch/callback","scope":["user:read:email"],"redirectUri":"http://localhost:1337/connect/twitch/callback"},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"],"redirectUri":"http://localhost:1337/connect/linkedin/callback"},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"/auth/cognito/callback","scope":["email","openid","profile"],"redirectUri":"http://localhost:1337/connect/cognito/callback"}}	object		
77	plugin_content_manager_configuration_content_types::application::article-category.article-category	{"uid":"application::article-category.article-category","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"color":{"edit":{"label":"Color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Color","searchable":true,"sortable":true}},"articles":{"edit":{"label":"Articles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"Articles","searchable":false,"sortable":false}},"thumb":{"edit":{"label":"Thumb","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Thumb","searchable":true,"sortable":true}},"published_at":{"edit":{"label":"Published_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Published_at","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","slug","color"],"editRelations":["articles"],"edit":[[{"name":"title","size":6},{"name":"slug","size":6}],[{"name":"color","size":6},{"name":"thumb","size":6}]]}}	object		
90	plugin_content_manager_configuration_content_types::strapi::permission	{"uid":"strapi::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"Subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subject","searchable":true,"sortable":true}},"fields":{"edit":{"label":"Fields","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Fields","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"Conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","created_at"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"fields","size":12}],[{"name":"conditions","size":12}]]}}	object		
79	plugin_content_manager_configuration_content_types::application::article-tags.article-tags	{"uid":"application::article-tags.article-tags","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"article_id":{"edit":{"label":"Article_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Article_id","searchable":true,"sortable":true}},"published_at":{"edit":{"label":"Published_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Published_at","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","slug","article_id"],"editRelations":[],"edit":[[{"name":"title","size":6},{"name":"slug","size":6}],[{"name":"article_id","size":4}]]}}	object		
89	plugin_content_manager_configuration_content_types::strapi::role	{"uid":"strapi::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"Users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}	object		
80	plugin_content_manager_configuration_content_types::application::article-bookmark.article-bookmark	{"uid":"application::article-bookmark.article-bookmark","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"user_id":{"edit":{"label":"User_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"User_id","searchable":true,"sortable":true}},"article_id":{"edit":{"label":"Article_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Article_id","searchable":true,"sortable":true}},"published_at":{"edit":{"label":"Published_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Published_at","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","user_id","article_id","published_at"],"editRelations":[],"edit":[[{"name":"user_id","size":4},{"name":"article_id","size":4}]]}}	object		
84	plugin_content_manager_configuration_content_types::application::contact-us.contact-us	{"uid":"application::contact-us.contact-us","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"subject":{"edit":{"label":"Subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subject","searchable":true,"sortable":true}},"message":{"edit":{"label":"Message","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Message","searchable":false,"sortable":false}},"published_at":{"edit":{"label":"Published_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Published_at","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","email","subject"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"email","size":6}],[{"name":"subject","size":6}],[{"name":"message","size":12}]]}}	object		
91	plugin_content_manager_configuration_content_types::strapi::user	{"uid":"strapi::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"Firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"Lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"RegistrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RegistrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"IsActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"Roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4}]]}}	object		
94	plugin_content_manager_configuration_content_types::plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"type"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}	object		
85	plugin_content_manager_configuration_content_types::application::link-preview.link-preview	{"uid":"application::link-preview.link-preview","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"url","defaultSortBy":"url","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"published_at":{"edit":{"label":"Published_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Published_at","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","url","published_at","created_at"],"editRelations":[],"edit":[[{"name":"url","size":6}]]}}	object		
95	plugin_content_manager_configuration_content_types::plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"ConfirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ConfirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":false,"sortable":false}},"fullname":{"edit":{"label":"Fullname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Fullname","searchable":true,"sortable":true}},"birthday":{"edit":{"label":"Birthday","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Birthday","searchable":true,"sortable":true}},"gender":{"edit":{"label":"Gender","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Gender","searchable":true,"sortable":true}},"articles":{"edit":{"label":"Articles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"Articles","searchable":false,"sortable":false}},"comments":{"edit":{"label":"Comments","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"Comments","searchable":false,"sortable":false}},"comment_replies":{"edit":{"label":"Comment_replies","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"Comment_replies","searchable":false,"sortable":false}},"last_login":{"edit":{"label":"Last_login","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Last_login","searchable":true,"sortable":true}},"avatar":{"edit":{"label":"Avatar","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Avatar","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role","articles","comments","comment_replies"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"fullname","size":6}],[{"name":"birthday","size":6},{"name":"gender","size":6}],[{"name":"last_login","size":6},{"name":"avatar","size":6}]]}}	object		
87	plugin_content_manager_configuration_content_types::application::subscribe-category.subscribe-category	{"uid":"application::subscribe-category.subscribe-category","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"user_id":{"edit":{"label":"User_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"User_id","searchable":true,"sortable":true}},"category_id":{"edit":{"label":"Category_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Category_id","searchable":true,"sortable":true}},"published_at":{"edit":{"label":"Published_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Published_at","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","user_id","category_id","published_at"],"editRelations":[],"edit":[[{"name":"user_id","size":4},{"name":"category_id","size":4}]]}}	object		
56	model_def_application::article-category.article-category	{"uid":"application::article-category.article-category","collectionName":"article_category","kind":"collectionType","info":{"name":"Article Category","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"attributes":{"title":{"type":"string","maxLength":50,"required":true,"unique":true},"slug":{"type":"string","maxLength":50},"color":{"type":"string","maxLength":18},"articles":{"via":"article_category","collection":"article","isVirtual":true},"thumb":{"type":"string"},"published_at":{"type":"datetime","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
66	model_def_application::user-follow.user-follow	{"uid":"application::user-follow.user-follow","collectionName":"user_follow","kind":"collectionType","info":{"name":"user follow"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"attributes":{"from_customer_id":{"type":"integer","required":true},"to_customer_id":{"type":"integer","required":true},"published_at":{"type":"datetime","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
62	model_def_application::contact-us.contact-us	{"uid":"application::contact-us.contact-us","collectionName":"contact_us","kind":"collectionType","info":{"name":"Contact Us"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"attributes":{"name":{"type":"string","required":true},"email":{"type":"email","required":true},"subject":{"type":"string"},"message":{"type":"richtext","required":true},"published_at":{"type":"datetime","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
63	model_def_application::link-preview.link-preview	{"uid":"application::link-preview.link-preview","collectionName":"link_preview","kind":"collectionType","info":{"name":"Link Preview"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"attributes":{"url":{"type":"string"},"published_at":{"type":"datetime","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
64	model_def_application::notification.notification	{"uid":"application::notification.notification","collectionName":"notification","kind":"collectionType","info":{"name":"notification"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"attributes":{"object_id":{"type":"integer"},"text":{"type":"string"},"read":{"type":"boolean","default":false},"content_type_id":{"type":"integer"},"user_from_id":{"type":"integer"},"user_to_id":{"type":"integer"},"admin_level":{"type":"boolean","default":false},"link":{"type":"string"},"published_at":{"type":"datetime","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
65	model_def_application::subscribe-category.subscribe-category	{"uid":"application::subscribe-category.subscribe-category","collectionName":"subscribe_category","kind":"collectionType","info":{"name":"SubscribeCategory"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"attributes":{"user_id":{"type":"biginteger","default":"0","required":true},"category_id":{"type":"biginteger","default":"0","required":true},"published_at":{"type":"datetime","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
67	model_def_strapi::webhooks	{"uid":"strapi::webhooks","collectionName":"strapi_webhooks","info":{"name":"Strapi webhooks","description":""},"options":{"timestamps":false},"attributes":{"name":{"type":"string"},"url":{"type":"text"},"headers":{"type":"json"},"events":{"type":"json"},"enabled":{"type":"boolean"}}}	object	\N	\N
70	model_def_strapi::user	{"uid":"strapi::user","collectionName":"strapi_administrator","kind":"collectionType","info":{"name":"User","description":""},"options":{"timestamps":false},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"collection":"role","collectionName":"strapi_users_roles","via":"users","dominant":true,"plugin":"admin","configurable":false,"private":true,"attribute":"role","column":"id","isVirtual":true},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true}}}	object	\N	\N
72	model_def_plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","collectionName":"users-permissions_permission","kind":"collectionType","info":{"name":"permission","description":""},"options":{"timestamps":false},"attributes":{"type":{"type":"string","required":true,"configurable":false},"controller":{"type":"string","required":true,"configurable":false},"action":{"type":"string","required":true,"configurable":false},"enabled":{"type":"boolean","required":true,"configurable":false},"policy":{"type":"string","configurable":false},"role":{"model":"role","via":"permissions","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
58	model_def_application::article-tags.article-tags	{"uid":"application::article-tags.article-tags","collectionName":"article-tags","kind":"collectionType","info":{"name":"Article Tags","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"attributes":{"title":{"type":"string","required":true},"slug":{"type":"uid"},"article_id":{"type":"integer","required":true},"published_at":{"type":"datetime","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
60	model_def_application::comment-reply.comment-reply	{"uid":"application::comment-reply.comment-reply","collectionName":"comment_reply","kind":"collectionType","info":{"name":"Comment Reply","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"attributes":{"content":{"type":"richtext","required":true},"comment":{"via":"comment_replies","model":"comment"},"users_permissions_user":{"via":"comment_replies","plugin":"users-permissions","model":"user"},"published_at":{"type":"datetime","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
54	model_def_strapi::core-store	{"uid":"strapi::core-store","collectionName":"core_store","info":{"name":"core_store","description":""},"options":{"timestamps":false},"attributes":{"key":{"type":"string"},"value":{"type":"text"},"type":{"type":"string"},"environment":{"type":"string"},"tag":{"type":"string"}}}	object	\N	\N
55	model_def_application::article-bookmark.article-bookmark	{"uid":"application::article-bookmark.article-bookmark","collectionName":"article_bookmark","kind":"collectionType","info":{"name":"Article Bookmark"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"attributes":{"user_id":{"type":"integer","required":true},"article_id":{"required":true,"type":"integer"},"published_at":{"type":"datetime","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
73	model_def_plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","collectionName":"users-permissions_role","kind":"collectionType","info":{"name":"role","description":""},"options":{"timestamps":false},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"collection":"permission","via":"role","plugin":"users-permissions","configurable":false,"isVirtual":true},"users":{"collection":"user","via":"role","configurable":false,"plugin":"users-permissions","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
71	model_def_plugins::upload.file	{"uid":"plugins::upload.file","collectionName":"upload_file","kind":"collectionType","info":{"name":"file","description":""},"options":{"timestamps":["created_at","updated_at"]},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
59	model_def_application::article.article	{"uid":"application::article.article","collectionName":"article","kind":"collectionType","info":{"name":"article","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"attributes":{"title":{"type":"string","unique":false,"required":true},"body":{"type":"richtext"},"slug":{"type":"uid"},"intro":{"type":"richtext"},"published":{"type":"boolean"},"type":{"type":"string"},"likes":{"type":"integer","default":0},"outer":{"type":"boolean"},"outer_image":{"type":"string","maxLength":500},"outer_url":{"type":"string"},"show_share_popup":{"type":"boolean"},"article_author":{"plugin":"users-permissions","model":"user","via":"articles"},"article_category":{"model":"article-category","via":"articles"},"thumb":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false},"comment":{"via":"article","model":"comment"},"published_at":{"type":"datetime","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
61	model_def_application::comment.comment	{"uid":"application::comment.comment","collectionName":"comment","kind":"collectionType","info":{"name":"Comment","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"attributes":{"content":{"type":"richtext","required":true},"users_permissions_user":{"plugin":"users-permissions","model":"user","via":"comments"},"comment_replies":{"collection":"comment-reply","via":"comment","isVirtual":true},"article":{"model":"article","via":"comment"},"published":{"type":"boolean","default":false},"published_at":{"type":"datetime","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
57	model_def_application::article-like.article-like	{"uid":"application::article-like.article-like","collectionName":"article_like","kind":"collectionType","info":{"name":"Article Like","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"attributes":{"article_id":{"required":true,"type":"biginteger"},"user_id":{"type":"biginteger","required":true},"published_at":{"type":"datetime","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
74	model_def_plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","collectionName":"users-permissions_user","kind":"collectionType","info":{"name":"user","description":""},"options":{"draftAndPublish":false,"timestamps":["created_at","updated_at"]},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"model":"role","via":"users","plugin":"users-permissions","configurable":false},"fullname":{"type":"string"},"birthday":{"type":"string"},"gender":{"type":"string"},"articles":{"via":"article_author","collection":"article","isVirtual":true},"comments":{"via":"users_permissions_user","collection":"comment","isVirtual":true},"comment_replies":{"collection":"comment-reply","via":"users_permissions_user","isVirtual":true},"last_login":{"type":"datetime"},"avatar":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
\.


--
-- Data for Name: link_preview; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.link_preview (id, url, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: notification; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notification (id, object_id, text, read, content_type_id, user_from_id, user_to_id, admin_level, link, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
1	\N	Your article was disapproved.	f	\N	\N	3	\N	\N	2020-11-27 05:25:50.534+02	\N	\N	2020-11-27 05:25:50.537+02	2020-11-27 05:25:50.537+02
2	\N	Your article was approved.	f	\N	\N	3	\N	\N	2020-11-27 05:26:29.121+02	\N	\N	2020-11-27 05:26:29.123+02	2020-11-27 05:26:29.123+02
3	\N	Your comment My first comment! was disapproved.	f	\N	\N	8	\N	\N	2020-11-27 05:50:29.613+02	\N	\N	2020-11-27 05:50:29.616+02	2020-11-27 05:50:29.616+02
4	\N	Your comment My first comment! was approved.	f	\N	\N	8	\N	\N	2020-11-27 05:50:32.408+02	\N	\N	2020-11-27 05:50:32.411+02	2020-11-27 05:50:32.411+02
5	\N	Your article "Article Tags Work?" was disapproved.	f	\N	\N	3	\N	\N	2020-11-27 05:51:56.628+02	\N	\N	2020-11-27 05:51:56.632+02	2020-11-27 05:51:56.632+02
6	\N	Your article "Article Tags Work?" was approved.	f	\N	\N	3	\N	\N	2020-11-27 05:51:59.195+02	\N	\N	2020-11-27 05:51:59.202+02	2020-11-27 05:51:59.202+02
7	\N	A new user "user3" created	f	\N	23	\N	\N	\N	2020-11-27 06:21:56.915+02	\N	\N	2020-11-27 06:21:56.919+02	2020-11-27 06:21:56.919+02
8	\N	Your article "Article Tags Work?" was disapproved.	f	\N	\N	3	\N	\N	2020-11-27 17:59:34.736+02	\N	\N	2020-11-27 17:59:34.738+02	2020-11-27 17:59:34.738+02
9	\N	Your article "Article Tags Work?" was approved.	f	\N	\N	3	\N	\N	2020-11-27 17:59:43.322+02	\N	\N	2020-11-27 17:59:43.323+02	2020-11-27 17:59:43.323+02
10	\N	A new user "BrownA" created	f	\N	24	\N	\N	\N	2020-11-28 07:13:24.716+02	\N	\N	2020-11-28 07:13:24.718+02	2020-11-28 07:13:24.718+02
11	\N	A new comment "test?" was created.	f	\N	24	\N	\N	\N	2020-11-28 07:36:40.682+02	\N	\N	2020-11-28 07:36:40.684+02	2020-11-28 07:36:40.684+02
12	\N	A new comment "again test" was created.	f	\N	24	\N	\N	\N	2020-11-28 07:39:23.222+02	\N	\N	2020-11-28 07:39:23.223+02	2020-11-28 07:39:23.223+02
13	\N	A new user "albrown" created	f	\N	25	\N	\N	\N	2020-12-07 17:13:46.798+02	\N	\N	2020-12-07 17:13:46.8+02	2020-12-07 17:13:46.8+02
14	\N	A new article "test post" was created.	f	\N	25	\N	\N	\N	2020-12-07 17:14:20.121+02	\N	\N	2020-12-07 17:14:20.122+02	2020-12-07 17:14:20.122+02
15	\N	A new article "test post" was created.	f	\N	25	\N	\N	\N	2020-12-07 17:14:27.927+02	\N	\N	2020-12-07 17:14:27.928+02	2020-12-07 17:14:27.928+02
16	\N	A new user "ankeshvaishnav" created	f	\N	26	\N	\N	\N	2020-12-07 18:28:43.562+02	\N	\N	2020-12-07 18:28:43.564+02	2020-12-07 18:28:43.564+02
17	\N	A new article "Rig Lynx Announces Digital Marketing and Software Development Partnership with IAWCI" was created.	f	\N	26	\N	\N	\N	2020-12-07 18:34:17.914+02	\N	\N	2020-12-07 18:34:17.916+02	2020-12-07 18:34:17.916+02
18	\N	A new user "jaymin_navadiya" created	f	\N	27	\N	\N	\N	2020-12-10 08:43:09.37+02	\N	\N	2020-12-10 08:43:09.374+02	2020-12-10 08:43:09.374+02
19	\N	A new user "jaymin_navadiya_1" created	f	\N	28	\N	\N	\N	2020-12-10 08:44:13.787+02	\N	\N	2020-12-10 08:44:13.789+02	2020-12-10 08:44:13.789+02
20	\N	A new user "hellow1" created	f	\N	30	\N	\N	\N	2020-12-10 08:46:38.047+02	\N	\N	2020-12-10 08:46:38.048+02	2020-12-10 08:46:38.048+02
21	\N	A new user "erinik" created	f	\N	31	\N	\N	\N	2020-12-10 10:57:40.535+02	\N	\N	2020-12-10 10:57:40.537+02	2020-12-10 10:57:40.537+02
22	\N	A new user "james6@gmail.com" created	f	\N	32	\N	\N	\N	2020-12-11 11:58:57.539+02	\N	\N	2020-12-11 11:58:57.556+02	2020-12-11 11:58:57.556+02
23	\N	A new user "james6" created	f	\N	33	\N	\N	\N	2020-12-11 17:27:26.259+02	\N	\N	2020-12-11 17:27:26.291+02	2020-12-11 17:27:26.291+02
24	\N	A new user "james6" created	f	\N	36	\N	\N	\N	2020-12-11 17:35:31.915+02	\N	\N	2020-12-11 17:35:31.958+02	2020-12-11 17:35:31.958+02
25	\N	A new user "new1" created	f	\N	37	\N	\N	\N	2020-12-11 17:54:34.466+02	\N	\N	2020-12-11 17:54:34.483+02	2020-12-11 17:54:34.483+02
26	\N	A new article "First Post" was created.	f	\N	32	\N	\N	\N	2020-12-11 19:15:45.401+02	\N	\N	2020-12-11 19:15:45.404+02	2020-12-11 19:15:45.404+02
27	\N	A new comment "first comment" was created.	f	\N	32	\N	\N	\N	2020-12-12 17:05:34.289+02	\N	\N	2020-12-12 17:05:34.291+02	2020-12-12 17:05:34.291+02
28	\N	A new comment "Great" was created.	f	\N	32	\N	\N	\N	2020-12-12 17:36:54.145+02	\N	\N	2020-12-12 17:36:54.151+02	2020-12-12 17:36:54.151+02
29	\N	A new comment "I fixed text leaving after commet" was created.	f	\N	32	\N	\N	\N	2020-12-12 17:38:29.227+02	\N	\N	2020-12-12 17:38:29.23+02	2020-12-12 17:38:29.23+02
30	\N	A new comment "hello" was created.	f	\N	32	\N	\N	\N	2020-12-12 17:39:44.957+02	\N	\N	2020-12-12 17:39:44.959+02	2020-12-12 17:39:44.959+02
31	\N	A new comment "Ok, good" was created.	f	\N	32	\N	\N	\N	2020-12-12 17:48:36.819+02	\N	\N	2020-12-12 17:48:36.821+02	2020-12-12 17:48:36.821+02
32	\N	A new comment "again" was created.	f	\N	32	\N	\N	\N	2020-12-12 17:57:12.543+02	\N	\N	2020-12-12 17:57:12.545+02	2020-12-12 17:57:12.545+02
33	\N	A new comment "again again" was created.	f	\N	32	\N	\N	\N	2020-12-12 17:57:32.239+02	\N	\N	2020-12-12 17:57:32.241+02	2020-12-12 17:57:32.241+02
34	\N	A new comment "again again again" was created.	f	\N	32	\N	\N	\N	2020-12-12 17:59:10.948+02	\N	\N	2020-12-12 17:59:10.954+02	2020-12-12 17:59:10.954+02
35	\N	A new comment "again again again again\n" was created.	f	\N	32	\N	\N	\N	2020-12-12 18:05:19.496+02	\N	\N	2020-12-12 18:05:19.498+02	2020-12-12 18:05:19.498+02
36	\N	A new comment "mental healthy comment" was created.	f	\N	32	\N	\N	\N	2020-12-12 18:13:37.3+02	\N	\N	2020-12-12 18:13:37.305+02	2020-12-12 18:13:37.305+02
37	\N	A new user "james6@gmail.com" created	f	\N	39	\N	\N	\N	2020-12-12 21:47:51.741+02	\N	\N	2020-12-12 21:47:51.797+02	2020-12-12 21:47:51.797+02
\.


--
-- Data for Name: strapi_administrator; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_administrator (id, firstname, lastname, username, email, password, "resetPasswordToken", "registrationToken", "isActive", blocked) FROM stdin;
1	John	Doe	fnmotivation	fnmotivation@gmail.com	$2a$10$Mh0txN0lTo6ebCGl7N3UBeT.NhQ8nGhJy349Mr4n82hOwl006aTDe	\N	\N	t	\N
2	Erini	Karpadaki	erinik	ckjaner2@gmail.com	$2a$10$6hUvvheD8E4oqb8KGmg2qOfvBYvjkO79AyCcDIL1MRSvG66uH2go2	\N	f48d5997ea1ce707f14bb5684ab1e087a94afcdf	t	\N
\.


--
-- Data for Name: strapi_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_permission (id, action, subject, fields, conditions, role, created_at, updated_at) FROM stdin;
1	plugins::upload.read	\N	\N	[]	2	2020-11-03 00:06:04.741+02	2020-11-03 00:06:04.77+02
2	plugins::upload.assets.create	\N	\N	[]	2	2020-11-03 00:06:04.742+02	2020-11-03 00:06:04.77+02
3	plugins::upload.assets.update	\N	\N	[]	2	2020-11-03 00:06:04.743+02	2020-11-03 00:06:04.771+02
4	plugins::upload.assets.download	\N	\N	[]	2	2020-11-03 00:06:04.743+02	2020-11-03 00:06:04.771+02
5	plugins::upload.assets.copy-link	\N	\N	[]	2	2020-11-03 00:06:04.744+02	2020-11-03 00:06:04.778+02
6	plugins::upload.read	\N	\N	["admin::is-creator"]	3	2020-11-03 00:06:04.833+02	2020-11-03 00:06:04.86+02
7	plugins::upload.assets.create	\N	\N	[]	3	2020-11-03 00:06:04.833+02	2020-11-03 00:06:04.86+02
8	plugins::upload.assets.update	\N	\N	["admin::is-creator"]	3	2020-11-03 00:06:04.834+02	2020-11-03 00:06:04.861+02
9	plugins::upload.assets.download	\N	\N	[]	3	2020-11-03 00:06:04.834+02	2020-11-03 00:06:04.861+02
10	plugins::upload.assets.copy-link	\N	\N	[]	3	2020-11-03 00:06:04.835+02	2020-11-03 00:06:04.861+02
251	plugins::content-manager.explorer.create	application::subscribe-category.subscribe-category	["user_id", "category_id"]	[]	1	2020-11-21 05:48:11.364+02	2020-11-21 05:48:11.394+02
14	plugins::content-manager.explorer.delete	plugins::users-permissions.user	\N	[]	1	2020-11-03 00:06:04.951+02	2020-11-03 00:06:05.002+02
15	plugins::content-type-builder.read	\N	\N	[]	1	2020-11-03 00:06:04.951+02	2020-11-03 00:06:05.003+02
16	plugins::upload.read	\N	\N	[]	1	2020-11-03 00:06:04.952+02	2020-11-03 00:06:05.003+02
17	plugins::upload.assets.create	\N	\N	[]	1	2020-11-03 00:06:04.952+02	2020-11-03 00:06:05.004+02
18	plugins::upload.assets.update	\N	\N	[]	1	2020-11-03 00:06:04.952+02	2020-11-03 00:06:05.004+02
19	plugins::upload.assets.download	\N	\N	[]	1	2020-11-03 00:06:04.953+02	2020-11-03 00:06:05.004+02
20	plugins::upload.assets.copy-link	\N	\N	[]	1	2020-11-03 00:06:04.953+02	2020-11-03 00:06:05.005+02
21	plugins::upload.settings.read	\N	\N	[]	1	2020-11-03 00:06:05.084+02	2020-11-03 00:06:05.125+02
22	plugins::content-manager.single-types.configure-view	\N	\N	[]	1	2020-11-03 00:06:05.097+02	2020-11-03 00:06:05.152+02
23	plugins::content-manager.collection-types.configure-view	\N	\N	[]	1	2020-11-03 00:06:05.098+02	2020-11-03 00:06:05.152+02
24	plugins::content-manager.components.configure-layout	\N	\N	[]	1	2020-11-03 00:06:05.098+02	2020-11-03 00:06:05.153+02
25	plugins::users-permissions.roles.create	\N	\N	[]	1	2020-11-03 00:06:05.098+02	2020-11-03 00:06:05.153+02
26	plugins::users-permissions.roles.read	\N	\N	[]	1	2020-11-03 00:06:05.099+02	2020-11-03 00:06:05.153+02
27	plugins::users-permissions.roles.update	\N	\N	[]	1	2020-11-03 00:06:05.099+02	2020-11-03 00:06:05.154+02
28	plugins::users-permissions.roles.delete	\N	\N	[]	1	2020-11-03 00:06:05.11+02	2020-11-03 00:06:05.169+02
29	plugins::users-permissions.providers.read	\N	\N	[]	1	2020-11-03 00:06:05.11+02	2020-11-03 00:06:05.169+02
30	plugins::users-permissions.providers.update	\N	\N	[]	1	2020-11-03 00:06:05.11+02	2020-11-03 00:06:05.17+02
31	plugins::users-permissions.email-templates.read	\N	\N	[]	1	2020-11-03 00:06:05.24+02	2020-11-03 00:06:05.285+02
32	plugins::users-permissions.email-templates.update	\N	\N	[]	1	2020-11-03 00:06:05.254+02	2020-11-03 00:06:05.311+02
33	plugins::users-permissions.advanced-settings.read	\N	\N	[]	1	2020-11-03 00:06:05.255+02	2020-11-03 00:06:05.312+02
34	plugins::users-permissions.advanced-settings.update	\N	\N	[]	1	2020-11-03 00:06:05.255+02	2020-11-03 00:06:05.312+02
35	admin::marketplace.read	\N	\N	[]	1	2020-11-03 00:06:05.255+02	2020-11-03 00:06:05.312+02
36	admin::marketplace.plugins.install	\N	\N	[]	1	2020-11-03 00:06:05.256+02	2020-11-03 00:06:05.313+02
37	admin::marketplace.plugins.uninstall	\N	\N	[]	1	2020-11-03 00:06:05.256+02	2020-11-03 00:06:05.313+02
38	admin::webhooks.create	\N	\N	[]	1	2020-11-03 00:06:05.257+02	2020-11-03 00:06:05.313+02
39	admin::webhooks.read	\N	\N	[]	1	2020-11-03 00:06:05.258+02	2020-11-03 00:06:05.314+02
40	admin::webhooks.update	\N	\N	[]	1	2020-11-03 00:06:05.258+02	2020-11-03 00:06:05.314+02
41	admin::webhooks.delete	\N	\N	[]	1	2020-11-03 00:06:05.394+02	2020-11-03 00:06:05.404+02
42	admin::users.create	\N	\N	[]	1	2020-11-03 00:06:05.401+02	2020-11-03 00:06:05.412+02
43	admin::users.read	\N	\N	[]	1	2020-11-03 00:06:05.431+02	2020-11-03 00:06:05.479+02
44	admin::users.update	\N	\N	[]	1	2020-11-03 00:06:05.431+02	2020-11-03 00:06:05.479+02
45	admin::users.delete	\N	\N	[]	1	2020-11-03 00:06:05.432+02	2020-11-03 00:06:05.48+02
46	admin::roles.create	\N	\N	[]	1	2020-11-03 00:06:05.432+02	2020-11-03 00:06:05.48+02
47	admin::roles.read	\N	\N	[]	1	2020-11-03 00:06:05.433+02	2020-11-03 00:06:05.48+02
48	admin::roles.update	\N	\N	[]	1	2020-11-03 00:06:05.433+02	2020-11-03 00:06:05.481+02
49	admin::roles.delete	\N	\N	[]	1	2020-11-03 00:06:05.433+02	2020-11-03 00:06:05.481+02
50	plugins::content-manager.explorer.create	plugins::users-permissions.user	["blocked", "confirmationToken", "confirmed", "email", "password", "provider", "resetPasswordToken", "role", "username"]	["admin::is-creator"]	3	2020-11-03 01:01:54.794+02	2020-11-03 01:01:54.811+02
51	plugins::content-manager.explorer.read	plugins::users-permissions.user	["blocked", "confirmationToken", "confirmed", "email", "password", "provider", "resetPasswordToken", "role", "username"]	["admin::is-creator"]	3	2020-11-03 01:01:54.795+02	2020-11-03 01:01:54.812+02
52	plugins::content-manager.explorer.update	plugins::users-permissions.user	["blocked", "confirmationToken", "confirmed", "email", "password", "provider", "resetPasswordToken", "role", "username"]	["admin::is-creator"]	3	2020-11-03 01:01:54.832+02	2020-11-03 01:01:54.843+02
53	plugins::content-manager.explorer.delete	plugins::users-permissions.user	\N	["admin::is-creator"]	3	2020-11-03 01:01:54.84+02	2020-11-03 01:01:54.853+02
220	plugins::content-manager.explorer.update	application::comment-reply.comment-reply	["content", "comment", "users_permissions_user"]	[]	1	2020-11-19 17:49:57.338+02	2020-11-19 17:49:57.372+02
284	plugins::content-manager.explorer.delete	application::article-bookmark.article-bookmark	\N	[]	1	2020-11-24 18:35:20.854+02	2020-11-24 18:35:20.947+02
287	plugins::content-manager.explorer.read	application::user-follow.user-follow	["from_customer_id", "to_customer_id"]	[]	1	2020-11-24 20:36:10.026+02	2020-11-24 20:36:10.052+02
257	plugins::content-manager.explorer.read	application::link-preview.link-preview	["url"]	[]	1	2020-11-21 12:59:04.669+02	2020-11-21 12:59:04.694+02
232	plugins::content-manager.explorer.publish	application::article-like.article-like	\N	[]	1	2020-11-20 14:08:05.084+02	2020-11-20 14:08:05.113+02
293	plugins::content-manager.explorer.read	application::contact-us.contact-us	["name", "email", "subject", "message"]	[]	1	2020-11-25 00:20:48.656+02	2020-11-25 00:20:48.685+02
62	plugins::content-manager.explorer.delete	application::article.article	\N	[]	1	2020-11-03 03:50:50.832+02	2020-11-03 03:50:50.854+02
303	plugins::content-manager.explorer.create	application::comment.comment	["content", "users_permissions_user", "comment_replies", "article", "published"]	[]	1	2020-11-27 15:07:12.049+02	2020-11-27 15:07:12.062+02
298	plugins::content-manager.explorer.read	application::notification.notification	["object_id", "text", "read", "content_type_id", "user_from_id", "user_to_id", "admin_level", "link"]	[]	1	2020-11-27 03:36:27.393+02	2020-11-27 03:36:27.474+02
252	plugins::content-manager.explorer.read	application::subscribe-category.subscribe-category	["user_id", "category_id"]	[]	1	2020-11-21 05:48:11.365+02	2020-11-21 05:48:11.395+02
258	plugins::content-manager.explorer.update	application::link-preview.link-preview	["url"]	[]	1	2020-11-21 12:59:04.67+02	2020-11-21 12:59:04.694+02
240	plugins::content-manager.explorer.update	plugins::users-permissions.user	["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "fullname", "birthday", "gender", "articles", "comments", "comment_replies", "last_login", "avatar"]	[]	1	2020-11-21 02:39:06.48+02	2020-11-21 03:22:44.877+02
157	plugins::content-manager.explorer.publish	application::comment.comment	\N	[]	1	2020-11-19 05:24:09.005+02	2020-11-19 05:24:09.036+02
265	plugins::content-manager.explorer.publish	application::article-tags.article-tags	\N	[]	1	2020-11-23 20:36:40.527+02	2020-11-23 20:36:40.571+02
279	plugins::content-manager.explorer.update	application::article.article	["title", "body", "slug", "intro", "published", "type", "likes", "outer", "outer_image", "outer_url", "show_share_popup", "article_author", "article_category", "thumb", "comment"]	[]	1	2020-11-23 22:44:07.082+02	2020-11-23 22:44:07.117+02
270	plugins::content-manager.explorer.update	application::article-tags.article-tags	["title", "slug", "article_id"]	[]	1	2020-11-23 20:38:13.64+02	2020-11-23 23:53:21.573+02
281	plugins::content-manager.explorer.create	application::article-bookmark.article-bookmark	["user_id", "article_id"]	[]	1	2020-11-24 18:35:20.853+02	2020-11-24 18:35:20.921+02
288	plugins::content-manager.explorer.update	application::user-follow.user-follow	["from_customer_id", "to_customer_id"]	[]	1	2020-11-24 20:36:10.026+02	2020-11-24 20:36:10.052+02
294	plugins::content-manager.explorer.update	application::contact-us.contact-us	["name", "email", "subject", "message"]	[]	1	2020-11-25 00:20:48.657+02	2020-11-25 00:20:48.685+02
299	plugins::content-manager.explorer.update	application::notification.notification	["object_id", "text", "read", "content_type_id", "user_from_id", "user_to_id", "admin_level", "link"]	[]	1	2020-11-27 03:36:27.393+02	2020-11-27 03:36:27.482+02
304	plugins::content-manager.explorer.read	application::comment.comment	["content", "users_permissions_user", "comment_replies", "article", "published"]	[]	1	2020-11-27 15:07:12.05+02	2020-11-27 15:07:12.062+02
253	plugins::content-manager.explorer.update	application::subscribe-category.subscribe-category	["user_id", "category_id"]	[]	1	2020-11-21 05:48:11.366+02	2020-11-21 05:48:11.395+02
228	plugins::content-manager.explorer.create	application::article-like.article-like	["article_id", "user_id"]	[]	1	2020-11-20 14:08:05.082+02	2020-11-20 14:50:44.221+02
216	plugins::content-manager.explorer.create	application::comment-reply.comment-reply	["content", "comment", "users_permissions_user"]	[]	1	2020-11-19 17:49:57.336+02	2020-11-19 17:49:57.371+02
259	plugins::content-manager.explorer.delete	application::link-preview.link-preview	\N	[]	1	2020-11-21 12:59:04.67+02	2020-11-21 12:59:04.694+02
239	plugins::content-manager.explorer.read	plugins::users-permissions.user	["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "fullname", "birthday", "gender", "articles", "comments", "comment_replies", "last_login", "avatar"]	[]	1	2020-11-21 02:39:06.479+02	2020-11-21 03:22:44.876+02
266	plugins::content-manager.explorer.create	application::article-tags.article-tags	["title", "slug", "article_id"]	[]	1	2020-11-23 20:38:13.639+02	2020-11-23 23:53:21.573+02
282	plugins::content-manager.explorer.read	application::article-bookmark.article-bookmark	["user_id", "article_id"]	[]	1	2020-11-24 18:35:20.853+02	2020-11-24 18:35:20.922+02
289	plugins::content-manager.explorer.delete	application::user-follow.user-follow	\N	[]	1	2020-11-24 20:36:10.027+02	2020-11-24 20:36:10.052+02
295	plugins::content-manager.explorer.delete	application::contact-us.contact-us	\N	[]	1	2020-11-25 00:20:48.657+02	2020-11-25 00:20:48.686+02
300	plugins::content-manager.explorer.delete	application::notification.notification	\N	[]	1	2020-11-27 03:36:27.394+02	2020-11-27 03:36:27.483+02
305	plugins::content-manager.explorer.update	application::comment.comment	["content", "users_permissions_user", "comment_replies", "article", "published"]	[]	1	2020-11-27 15:07:12.05+02	2020-11-27 15:07:12.068+02
80	plugins::content-manager.explorer.publish	application::article-category.article-category	\N	[]	1	2020-11-14 17:26:30.576+02	2020-11-14 17:26:30.61+02
172	plugins::content-manager.explorer.delete	application::comment-reply.comment-reply	\N	[]	1	2020-11-19 05:32:35.258+02	2020-11-19 05:32:35.289+02
254	plugins::content-manager.explorer.delete	application::subscribe-category.subscribe-category	\N	[]	1	2020-11-21 05:48:11.366+02	2020-11-21 05:48:11.395+02
229	plugins::content-manager.explorer.read	application::article-like.article-like	["article_id", "user_id"]	[]	1	2020-11-20 14:08:05.083+02	2020-11-20 14:50:44.224+02
135	plugins::content-manager.explorer.create	application::article-category.article-category	["title", "slug", "color", "articles", "thumb"]	[]	1	2020-11-16 01:35:39.528+02	2020-11-16 01:35:39.542+02
260	plugins::content-manager.explorer.publish	application::link-preview.link-preview	\N	[]	1	2020-11-21 12:59:04.671+02	2020-11-21 12:59:04.701+02
275	plugins::content-manager.explorer.create	application::article.article	["title", "body", "slug", "intro", "published", "type", "likes", "outer", "outer_image", "outer_url", "show_share_popup", "article_author", "article_category", "thumb", "comment"]	[]	1	2020-11-23 22:44:07.081+02	2020-11-23 22:44:07.116+02
283	plugins::content-manager.explorer.update	application::article-bookmark.article-bookmark	["user_id", "article_id"]	[]	1	2020-11-24 18:35:20.854+02	2020-11-24 18:35:20.934+02
264	plugins::content-manager.explorer.delete	application::article-tags.article-tags	\N	[]	1	2020-11-23 20:36:40.526+02	2020-11-23 20:36:40.566+02
290	plugins::content-manager.explorer.publish	application::user-follow.user-follow	\N	[]	1	2020-11-24 20:36:10.028+02	2020-11-24 20:36:10.059+02
296	plugins::content-manager.explorer.publish	application::contact-us.contact-us	\N	[]	1	2020-11-25 00:20:48.658+02	2020-11-25 00:20:48.694+02
301	plugins::content-manager.explorer.publish	application::notification.notification	\N	[]	1	2020-11-27 03:36:27.394+02	2020-11-27 03:36:27.483+02
79	plugins::content-manager.explorer.delete	application::article-category.article-category	\N	[]	1	2020-11-14 17:26:30.576+02	2020-11-14 17:26:30.61+02
173	plugins::content-manager.explorer.publish	application::comment-reply.comment-reply	\N	[]	1	2020-11-19 05:32:35.259+02	2020-11-19 05:32:35.292+02
255	plugins::content-manager.explorer.publish	application::subscribe-category.subscribe-category	\N	[]	1	2020-11-21 05:48:11.366+02	2020-11-21 05:48:11.402+02
230	plugins::content-manager.explorer.update	application::article-like.article-like	["article_id", "user_id"]	[]	1	2020-11-20 14:08:05.083+02	2020-11-20 14:50:44.228+02
268	plugins::content-manager.explorer.read	application::article-tags.article-tags	["title", "slug", "article_id"]	[]	1	2020-11-23 20:38:13.639+02	2020-11-23 23:53:21.577+02
136	plugins::content-manager.explorer.read	application::article-category.article-category	["title", "slug", "color", "articles", "thumb"]	[]	1	2020-11-16 01:35:39.528+02	2020-11-16 01:35:39.543+02
218	plugins::content-manager.explorer.read	application::comment-reply.comment-reply	["content", "comment", "users_permissions_user"]	[]	1	2020-11-19 17:49:57.337+02	2020-11-19 17:49:57.371+02
285	plugins::content-manager.explorer.publish	application::article-bookmark.article-bookmark	\N	[]	1	2020-11-24 18:35:20.854+02	2020-11-24 18:35:20.933+02
297	plugins::content-manager.explorer.create	application::notification.notification	["object_id", "text", "read", "content_type_id", "user_from_id", "user_to_id", "admin_level", "link"]	[]	1	2020-11-27 03:36:27.393+02	2020-11-27 03:36:27.483+02
256	plugins::content-manager.explorer.create	application::link-preview.link-preview	["url"]	[]	1	2020-11-21 12:59:04.669+02	2020-11-21 12:59:04.693+02
238	plugins::content-manager.explorer.create	plugins::users-permissions.user	["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "fullname", "birthday", "gender", "articles", "comments", "comment_replies", "last_login", "avatar"]	[]	1	2020-11-21 02:39:06.479+02	2020-11-21 03:22:44.878+02
277	plugins::content-manager.explorer.read	application::article.article	["title", "body", "slug", "intro", "published", "type", "likes", "outer", "outer_image", "outer_url", "show_share_popup", "article_author", "article_category", "thumb", "comment"]	[]	1	2020-11-23 22:44:07.082+02	2020-11-23 22:44:07.117+02
137	plugins::content-manager.explorer.update	application::article-category.article-category	["title", "slug", "color", "articles", "thumb"]	[]	1	2020-11-16 01:35:39.529+02	2020-11-16 01:35:39.546+02
286	plugins::content-manager.explorer.create	application::user-follow.user-follow	["from_customer_id", "to_customer_id"]	[]	1	2020-11-24 20:36:10.026+02	2020-11-24 20:36:10.051+02
292	plugins::content-manager.explorer.create	application::contact-us.contact-us	["name", "email", "subject", "message"]	[]	1	2020-11-25 00:20:48.656+02	2020-11-25 00:20:48.685+02
158	plugins::content-manager.explorer.delete	application::comment.comment	\N	[]	1	2020-11-19 05:24:09.005+02	2020-11-19 05:24:09.03+02
302	plugins::content-manager.explorer.publish	application::article.article	\N	[]	1	2020-11-27 04:43:07.206+02	2020-11-27 04:43:07.214+02
231	plugins::content-manager.explorer.delete	application::article-like.article-like	\N	[]	1	2020-11-20 14:08:05.083+02	2020-11-20 14:08:05.107+02
\.


--
-- Data for Name: strapi_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_role (id, name, code, description, created_at, updated_at) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2020-11-03 00:06:04.637+02	2020-11-03 00:06:04.637+02
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2020-11-03 00:06:04.679+02	2020-11-03 00:06:04.679+02
3	Author	strapi-author	Authors can manage the content they have created.	2020-11-03 00:06:04.704+02	2020-11-03 00:06:04.704+02
\.


--
-- Data for Name: strapi_users_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_users_roles (id, user_id, role_id) FROM stdin;
1	1	1
2	2	1
3	2	3
4	2	2
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
1	My first Webhook	http://localhost:1337/notifications-article-publish	{}	["entry.publish", "entry.unpublish", "entry.create", "entry.update", "entry.delete", "media.create", "media.update", "media.delete"]	t
\.


--
-- Data for Name: subscribe_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subscribe_category (id, user_id, category_id, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
35	17	6	2020-11-26 03:03:15.313+02	\N	\N	2020-11-26 03:03:15.324+02	2020-11-26 03:03:15.324+02
36	17	4	2020-11-26 03:03:15.362+02	\N	\N	2020-11-26 03:03:15.365+02	2020-11-26 03:03:15.365+02
37	17	11	2020-11-26 03:03:15.377+02	\N	\N	2020-11-26 03:03:15.379+02	2020-11-26 03:03:15.379+02
59	3	6	2020-11-27 21:40:54.644+02	\N	\N	2020-11-27 21:40:54.647+02	2020-11-27 21:40:54.647+02
60	3	14	2020-11-27 21:40:54.658+02	\N	\N	2020-11-27 21:40:54.66+02	2020-11-27 21:40:54.66+02
61	3	12	2020-11-27 21:40:54.683+02	\N	\N	2020-11-27 21:40:54.686+02	2020-11-27 21:40:54.686+02
62	24	4	2020-11-28 07:17:42.08+02	\N	\N	2020-11-28 07:17:42.084+02	2020-11-28 07:17:42.084+02
63	24	7	2020-11-28 07:17:42.095+02	\N	\N	2020-11-28 07:17:42.098+02	2020-11-28 07:17:42.098+02
64	24	12	2020-11-28 07:17:42.117+02	\N	\N	2020-11-28 07:17:42.12+02	2020-11-28 07:17:42.12+02
65	25	4	2020-12-07 17:13:53.935+02	\N	\N	2020-12-07 17:13:53.943+02	2020-12-07 17:13:53.943+02
66	25	12	2020-12-07 17:13:53.954+02	\N	\N	2020-12-07 17:13:53.957+02	2020-12-07 17:13:53.957+02
67	25	10	2020-12-07 17:13:53.975+02	\N	\N	2020-12-07 17:13:53.978+02	2020-12-07 17:13:53.978+02
68	26	13	2020-12-07 18:28:59.718+02	\N	\N	2020-12-07 18:28:59.721+02	2020-12-07 18:28:59.721+02
69	26	6	2020-12-07 18:28:59.731+02	\N	\N	2020-12-07 18:28:59.734+02	2020-12-07 18:28:59.734+02
70	26	4	2020-12-07 18:28:59.751+02	\N	\N	2020-12-07 18:28:59.754+02	2020-12-07 18:28:59.754+02
71	30	10	2020-12-10 08:51:14.098+02	\N	\N	2020-12-10 08:51:14.105+02	2020-12-10 08:51:14.105+02
72	30	8	2020-12-10 08:51:14.116+02	\N	\N	2020-12-10 08:51:14.119+02	2020-12-10 08:51:14.119+02
73	30	4	2020-12-10 08:51:14.139+02	\N	\N	2020-12-10 08:51:14.142+02	2020-12-10 08:51:14.142+02
74	30	11	2020-12-10 08:51:14.158+02	\N	\N	2020-12-10 08:51:14.161+02	2020-12-10 08:51:14.161+02
75	30	14	2020-12-10 08:51:14.177+02	\N	\N	2020-12-10 08:51:14.18+02	2020-12-10 08:51:14.18+02
79	37	4	2020-12-11 17:54:45.612+02	\N	\N	2020-12-11 17:54:45.628+02	2020-12-11 17:54:45.628+02
80	37	12	2020-12-11 17:54:45.648+02	\N	\N	2020-12-11 17:54:45.653+02	2020-12-11 17:54:45.653+02
81	32	14	2020-12-12 17:04:39.129+02	\N	\N	2020-12-12 17:04:39.139+02	2020-12-12 17:04:39.139+02
82	32	9	2020-12-12 17:04:39.151+02	\N	\N	2020-12-12 17:04:39.155+02	2020-12-12 17:04:39.155+02
83	32	5	2020-12-12 17:04:39.177+02	\N	\N	2020-12-12 17:04:39.194+02	2020-12-12 17:04:39.194+02
84	32	10	2020-12-12 17:04:39.222+02	\N	\N	2020-12-12 17:04:39.227+02	2020-12-12 17:04:39.227+02
\.


--
-- Data for Name: subscriber_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subscriber_categories (id, user_id, category_id, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: subscriber_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subscriber_category (id, category_id, published_at, created_by, updated_by, created_at, updated_at, user_id) FROM stdin;
1	1	2020-11-21 05:28:35.937+02	\N	\N	2020-11-21 05:28:35.945+02	2020-11-21 05:28:35.945+02	3
2	1	2020-11-21 05:29:37.529+02	\N	\N	2020-11-21 05:29:37.536+02	2020-11-21 05:29:37.536+02	3
\.


--
-- Data for Name: upload_file; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) FROM stdin;
1	anxiety-img.png			296	296	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_anxiety_img_4aeb703031.png", "hash": "thumbnail_anxiety_img_4aeb703031", "mime": "image/png", "name": "thumbnail_anxiety-img.png", "path": null, "size": 15.08, "width": 156, "height": 156}}	anxiety_img_4aeb703031	.png	image/png	19.75	/uploads/anxiety_img_4aeb703031.png	\N	local	\N	1	1	2020-11-16 01:28:57.199+02	2020-11-16 01:28:57.25+02
2	heart-disease-img.png			296	296	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_heart_disease_img_cee87b4684.png", "hash": "thumbnail_heart_disease_img_cee87b4684", "mime": "image/png", "name": "thumbnail_heart-disease-img.png", "path": null, "size": 13.44, "width": 156, "height": 156}}	heart_disease_img_cee87b4684	.png	image/png	17.05	/uploads/heart_disease_img_cee87b4684.png	\N	local	\N	1	1	2020-11-16 01:28:57.2+02	2020-11-16 01:28:57.256+02
3	alcohol-addiction-img.png			320	320	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_alcohol_addiction_img_72d820371a.png", "hash": "thumbnail_alcohol_addiction_img_72d820371a", "mime": "image/png", "name": "thumbnail_alcohol-addiction-img.png", "path": null, "size": 13.95, "width": 156, "height": 156}}	alcohol_addiction_img_72d820371a	.png	image/png	34.16	/uploads/alcohol_addiction_img_72d820371a.png	\N	local	\N	1	1	2020-11-16 01:28:57.205+02	2020-11-16 01:28:57.257+02
4	depression-img.png			296	296	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_depression_img_c06eac56f4.png", "hash": "thumbnail_depression_img_c06eac56f4", "mime": "image/png", "name": "thumbnail_depression-img.png", "path": null, "size": 14.01, "width": 156, "height": 156}}	depression_img_c06eac56f4	.png	image/png	18.47	/uploads/depression_img_c06eac56f4.png	\N	local	\N	1	1	2020-11-16 01:28:57.209+02	2020-11-16 01:28:57.257+02
5	insecurity-addiction-img.png			320	320	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_insecurity_addiction_img_ccfe203666.png", "hash": "thumbnail_insecurity_addiction_img_ccfe203666", "mime": "image/png", "name": "thumbnail_insecurity-addiction-img.png", "path": null, "size": 14.74, "width": 156, "height": 156}}	insecurity_addiction_img_ccfe203666	.png	image/png	35.15	/uploads/insecurity_addiction_img_ccfe203666.png	\N	local	\N	1	1	2020-11-16 01:28:57.229+02	2020-11-16 01:28:57.282+02
6	mental-helth-icon.png			296	296	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_mental_helth_icon_b7914642fb.png", "hash": "thumbnail_mental_helth_icon_b7914642fb", "mime": "image/png", "name": "thumbnail_mental-helth-icon.png", "path": null, "size": 16.26, "width": 156, "height": 156}}	mental_helth_icon_b7914642fb	.png	image/png	21.23	/uploads/mental_helth_icon_b7914642fb.png	\N	local	\N	1	1	2020-11-16 01:28:57.244+02	2020-11-16 01:28:57.311+02
7	stres-img.png			296	296	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_stres_img_c7cf03e184.png", "hash": "thumbnail_stres_img_c7cf03e184", "mime": "image/png", "name": "thumbnail_stres-img.png", "path": null, "size": 13.11, "width": 156, "height": 156}}	stres_img_c7cf03e184	.png	image/png	17.80	/uploads/stres_img_c7cf03e184.png	\N	local	\N	1	1	2020-11-16 01:28:57.515+02	2020-11-16 01:28:57.543+02
8	smoking-img.png			296	296	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_smoking_img_ab69dd30f4.png", "hash": "thumbnail_smoking_img_ab69dd30f4", "mime": "image/png", "name": "thumbnail_smoking-img.png", "path": null, "size": 10.18, "width": 156, "height": 156}}	smoking_img_ab69dd30f4	.png	image/png	11.54	/uploads/smoking_img_ab69dd30f4.png	\N	local	\N	1	1	2020-11-16 01:28:57.515+02	2020-11-16 01:28:57.543+02
9	weight-issue-img.png			296	296	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_weight_issue_img_e10aff3fb4.png", "hash": "thumbnail_weight_issue_img_e10aff3fb4", "mime": "image/png", "name": "thumbnail_weight-issue-img.png", "path": null, "size": 12.89, "width": 156, "height": 156}}	weight_issue_img_e10aff3fb4	.png	image/png	17.35	/uploads/weight_issue_img_e10aff3fb4.png	\N	local	\N	1	1	2020-11-16 01:28:57.531+02	2020-11-16 01:28:57.57+02
10	AddCart.png	\N	\N	97	22	\N	Add_Cart_fd2bb0d78a	.png	image/png	0.67	/uploads/Add_Cart_fd2bb0d78a.png	\N	local	\N	\N	\N	2020-11-17 13:13:59.176+02	2020-11-17 13:13:59.176+02
11	biosilck.jpg	\N	\N	285	121	{"thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_biosilck_6edccc4822.jpg", "hash": "thumbnail_biosilck_6edccc4822", "mime": "image/jpeg", "name": "thumbnail_biosilck.jpg", "path": null, "size": 2.1, "width": 245, "height": 104}}	biosilck_6edccc4822	.jpg	image/jpeg	2.51	/uploads/biosilck_6edccc4822.jpg	\N	local	\N	\N	\N	2020-11-17 13:16:23.023+02	2020-11-17 13:16:23.023+02
12	error.png	\N	\N	105	106	\N	error_26247f6189	.png	image/png	4.90	/uploads/error_26247f6189.png	\N	local	\N	\N	\N	2020-11-17 13:16:41.725+02	2020-11-17 13:16:41.725+02
13	AddCart.png	\N	\N	97	22	\N	Add_Cart_3b3359f888	.png	image/png	0.67	/uploads/Add_Cart_3b3359f888.png	\N	local	\N	\N	\N	2020-11-17 14:23:12.665+02	2020-11-17 14:23:12.665+02
14	error.png	\N	\N	105	106	\N	error_81d24a1dfa	.png	image/png	4.90	/uploads/error_81d24a1dfa.png	\N	local	\N	\N	\N	2020-11-17 14:26:30.858+02	2020-11-17 14:26:30.858+02
15	blue.jpg	\N	\N	31	20	\N	blue_556bb8cf8b	.jpg	image/jpeg	0.59	/uploads/blue_556bb8cf8b.jpg	\N	local	\N	\N	\N	2020-11-17 14:32:18.693+02	2020-11-17 14:32:18.693+02
16	AddCart.png	\N	\N	97	22	\N	Add_Cart_3556e4b91d	.png	image/png	0.67	/uploads/Add_Cart_3556e4b91d.png	\N	local	\N	\N	\N	2020-11-17 14:35:02.151+02	2020-11-17 14:35:02.151+02
17	brands-bg.jpg	\N	\N	1	138	\N	brands_bg_e9e148324c	.jpg	image/jpeg	0.31	/uploads/brands_bg_e9e148324c.jpg	\N	local	\N	\N	\N	2020-11-17 14:42:08.888+02	2020-11-17 14:42:08.888+02
18	amex.jpg	\N	\N	33	20	\N	amex_10109dccaa	.jpg	image/jpeg	0.69	/uploads/amex_10109dccaa.jpg	\N	local	\N	\N	\N	2020-11-17 14:45:39.49+02	2020-11-17 14:45:39.49+02
19	ABB-3400-L.jpg	\N	\N	340	340	{"thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_ABB_3400_L_08dbfc1f6f.jpg", "hash": "thumbnail_ABB_3400_L_08dbfc1f6f", "mime": "image/jpeg", "name": "thumbnail_ABB-3400-L.jpg", "path": null, "size": 2.01, "width": 156, "height": 156}}	ABB_3400_L_08dbfc1f6f	.jpg	image/jpeg	7.07	/uploads/ABB_3400_L_08dbfc1f6f.jpg	\N	local	\N	\N	\N	2020-11-17 14:55:47.189+02	2020-11-17 14:55:47.189+02
20	apply.png	\N	\N	58	15	\N	apply_101dd5d475	.png	image/png	0.27	/uploads/apply_101dd5d475.png	\N	local	\N	\N	\N	2020-11-21 00:15:36.339+02	2020-11-21 00:15:36.339+02
21	error.png	\N	\N	105	106	\N	error_d6f54e79f6	.png	image/png	4.90	/uploads/error_d6f54e79f6.png	\N	local	\N	\N	\N	2020-11-21 00:56:23.314+02	2020-11-21 00:56:23.314+02
22	brands-bg.jpg	\N	\N	1	138	\N	brands_bg_3723b12ded	.jpg	image/jpeg	0.31	/uploads/brands_bg_3723b12ded.jpg	\N	local	\N	\N	\N	2020-11-21 00:56:51.355+02	2020-11-21 00:56:51.355+02
23	AddCart.png	\N	\N	97	22	\N	Add_Cart_867e675d00	.png	image/png	0.67	/uploads/Add_Cart_867e675d00.png	\N	local	\N	\N	\N	2020-11-21 01:14:08.926+02	2020-11-21 01:14:08.926+02
24	AddCart.png	\N	\N	97	22	\N	Add_Cart_ccc8f0f34b	.png	image/png	0.67	/uploads/Add_Cart_ccc8f0f34b.png	\N	local	\N	\N	\N	2020-11-23 22:15:45.309+02	2020-11-23 22:15:45.309+02
25	AddCart.png	\N	\N	97	22	\N	Add_Cart_69e05f4843	.png	image/png	0.67	/uploads/Add_Cart_69e05f4843.png	\N	local	\N	\N	\N	2020-11-23 22:17:53.214+02	2020-11-23 22:17:53.214+02
26	error.png	\N	\N	105	106	\N	error_e7570a2fc8	.png	image/png	4.90	/uploads/error_e7570a2fc8.png	\N	local	\N	\N	\N	2020-11-26 04:56:48.672+02	2020-11-26 04:56:48.672+02
28	sky-181.jpg	\N	\N	1920	1080	{"large": {"ext": ".jpg", "url": "/uploads/large_sky_181_02875cc17e.jpg", "hash": "large_sky_181_02875cc17e", "mime": "image/jpeg", "name": "large_sky-181.jpg", "path": null, "size": 47.44, "width": 1000, "height": 563}, "small": {"ext": ".jpg", "url": "/uploads/small_sky_181_02875cc17e.jpg", "hash": "small_sky_181_02875cc17e", "mime": "image/jpeg", "name": "small_sky-181.jpg", "path": null, "size": 15.89, "width": 500, "height": 281}, "medium": {"ext": ".jpg", "url": "/uploads/medium_sky_181_02875cc17e.jpg", "hash": "medium_sky_181_02875cc17e", "mime": "image/jpeg", "name": "medium_sky-181.jpg", "path": null, "size": 29.2, "width": 750, "height": 422}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_sky_181_02875cc17e.jpg", "hash": "thumbnail_sky_181_02875cc17e", "mime": "image/jpeg", "name": "thumbnail_sky-181.jpg", "path": null, "size": 5.8, "width": 245, "height": 138}}	sky_181_02875cc17e	.jpg	image/jpeg	111.38	/uploads/sky_181_02875cc17e.jpg	\N	local	\N	\N	\N	2020-12-11 19:15:45.237+02	2020-12-11 19:15:45.237+02
29	0 (2).jpg			800	800	{"small": {"ext": ".jpg", "url": "/uploads/small_0_2_98aa83db77.jpg", "hash": "small_0_2_98aa83db77", "mime": "image/jpeg", "name": "small_0 (2).jpg", "path": null, "size": 27.41, "width": 500, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_0_2_98aa83db77.jpg", "hash": "medium_0_2_98aa83db77", "mime": "image/jpeg", "name": "medium_0 (2).jpg", "path": null, "size": 51.95, "width": 750, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_0_2_98aa83db77.jpg", "hash": "thumbnail_0_2_98aa83db77", "mime": "image/jpeg", "name": "thumbnail_0 (2).jpg", "path": null, "size": 4.12, "width": 156, "height": 156}}	0_2_98aa83db77	.jpg	image/jpeg	58.72	/uploads/0_2_98aa83db77.jpg	\N	local	\N	1	1	2020-12-11 19:37:05.176+02	2020-12-11 19:37:05.23+02
30	profile_logo_FAWWH_b9fb9d37bdf15a699bc071ce49baea53.jpg			280	280	{"thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_profile_logo_FAWWH_b9fb9d37bdf15a699bc071ce49baea53_d442b0f37e.jpg", "hash": "thumbnail_profile_logo_FAWWH_b9fb9d37bdf15a699bc071ce49baea53_d442b0f37e", "mime": "image/jpeg", "name": "thumbnail_profile_logo_FAWWH_b9fb9d37bdf15a699bc071ce49baea53.jpg", "path": null, "size": 6.16, "width": 156, "height": 156}}	profile_logo_FAWWH_b9fb9d37bdf15a699bc071ce49baea53_d442b0f37e	.jpg	image/jpeg	13.10	/uploads/profile_logo_FAWWH_b9fb9d37bdf15a699bc071ce49baea53_d442b0f37e.jpg	\N	local	\N	1	1	2020-12-11 19:37:05.18+02	2020-12-11 19:37:05.236+02
33	golden-blond-hair-color-for-a-man.jpg			500	700	{"small": {"ext": ".jpg", "url": "/uploads/small_golden_blond_hair_color_for_a_man_a2aefe03ee.jpg", "hash": "small_golden_blond_hair_color_for_a_man_a2aefe03ee", "mime": "image/jpeg", "name": "small_golden-blond-hair-color-for-a-man.jpg", "path": null, "size": 23.91, "width": 357, "height": 500}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_golden_blond_hair_color_for_a_man_a2aefe03ee.jpg", "hash": "thumbnail_golden_blond_hair_color_for_a_man_a2aefe03ee", "mime": "image/jpeg", "name": "thumbnail_golden-blond-hair-color-for-a-man.jpg", "path": null, "size": 3.45, "width": 111, "height": 156}}	golden_blond_hair_color_for_a_man_a2aefe03ee	.jpg	image/jpeg	38.13	/uploads/golden_blond_hair_color_for_a_man_a2aefe03ee.jpg	\N	local	\N	1	1	2020-12-11 19:37:05.239+02	2020-12-11 19:37:05.308+02
31	csm_pt-article-1_67271e7809.jpg			900	632	{"small": {"ext": ".jpg", "url": "/uploads/small_csm_pt_article_1_67271e7809_0734553bf8.jpg", "hash": "small_csm_pt_article_1_67271e7809_0734553bf8", "mime": "image/jpeg", "name": "small_csm_pt-article-1_67271e7809.jpg", "path": null, "size": 23.5, "width": 500, "height": 351}, "medium": {"ext": ".jpg", "url": "/uploads/medium_csm_pt_article_1_67271e7809_0734553bf8.jpg", "hash": "medium_csm_pt_article_1_67271e7809_0734553bf8", "mime": "image/jpeg", "name": "medium_csm_pt-article-1_67271e7809.jpg", "path": null, "size": 49.09, "width": 750, "height": 527}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_csm_pt_article_1_67271e7809_0734553bf8.jpg", "hash": "thumbnail_csm_pt_article_1_67271e7809_0734553bf8", "mime": "image/jpeg", "name": "thumbnail_csm_pt-article-1_67271e7809.jpg", "path": null, "size": 6.31, "width": 222, "height": 156}}	csm_pt_article_1_67271e7809_0734553bf8	.jpg	image/jpeg	71.06	/uploads/csm_pt_article_1_67271e7809_0734553bf8.jpg	\N	local	\N	1	1	2020-12-11 19:37:05.187+02	2020-12-11 19:37:05.243+02
32	16569749_101.jpg			1024	576	{"large": {"ext": ".jpg", "url": "/uploads/large_16569749_101_aed7639cc8.jpg", "hash": "large_16569749_101_aed7639cc8", "mime": "image/jpeg", "name": "large_16569749_101.jpg", "path": null, "size": 65.66, "width": 1000, "height": 563}, "small": {"ext": ".jpg", "url": "/uploads/small_16569749_101_aed7639cc8.jpg", "hash": "small_16569749_101_aed7639cc8", "mime": "image/jpeg", "name": "small_16569749_101.jpg", "path": null, "size": 22.18, "width": 500, "height": 281}, "medium": {"ext": ".jpg", "url": "/uploads/medium_16569749_101_aed7639cc8.jpg", "hash": "medium_16569749_101_aed7639cc8", "mime": "image/jpeg", "name": "medium_16569749_101.jpg", "path": null, "size": 42.07, "width": 750, "height": 422}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_16569749_101_aed7639cc8.jpg", "hash": "thumbnail_16569749_101_aed7639cc8", "mime": "image/jpeg", "name": "thumbnail_16569749_101.jpg", "path": null, "size": 7.91, "width": 245, "height": 138}}	16569749_101_aed7639cc8	.jpg	image/jpeg	65.14	/uploads/16569749_101_aed7639cc8.jpg	\N	local	\N	1	1	2020-12-11 19:37:05.195+02	2020-12-11 19:37:05.25+02
\.


--
-- Data for Name: upload_file_morph; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
1	2	4	article_category	thumb	1
2	13	21	article	files	1
3	14	22	article	files	1
4	15	23	article	files	1
5	16	24	article	files	1
6	17	25	article	files	1
23	19	27	article	thumb	1
27	29	3	users-permissions_user	avatar	1
\.


--
-- Data for Name: user_follow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_follow (id, from_customer_id, to_customer_id, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
2	16	3	2020-11-24 22:24:42.681+02	\N	\N	2020-11-24 22:24:42.691+02	2020-11-24 22:24:42.691+02
4	16	3	2020-11-27 02:40:53.123+02	\N	\N	2020-11-27 02:40:53.126+02	2020-11-27 02:40:53.126+02
5	8	16	2020-11-28 02:22:18.137+02	\N	\N	2020-11-28 02:22:18.14+02	2020-11-28 02:22:18.14+02
6	8	16	2020-11-28 02:22:18.675+02	\N	\N	2020-11-28 02:22:18.678+02	2020-11-28 02:22:18.678+02
7	8	16	2020-11-28 02:22:20.173+02	\N	\N	2020-11-28 02:22:20.177+02	2020-11-28 02:22:20.177+02
8	24	3	2020-11-28 07:33:02.848+02	\N	\N	2020-11-28 07:33:02.852+02	2020-11-28 07:33:02.852+02
9	37	26	2020-12-11 18:41:38.663+02	\N	\N	2020-12-11 18:41:38.676+02	2020-12-11 18:41:38.676+02
10	37	26	2020-12-11 18:41:39.616+02	\N	\N	2020-12-11 18:41:39.621+02	2020-12-11 18:41:39.621+02
11	37	26	2020-12-11 18:41:45.233+02	\N	\N	2020-12-11 18:41:45.236+02	2020-12-11 18:41:45.236+02
16	32	3	2020-12-12 17:36:20.427+02	\N	\N	2020-12-12 17:36:20.432+02	2020-12-12 17:36:20.432+02
\.


--
-- Data for Name: users-permissions_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) FROM stdin;
1	content-manager	components	findcomponent	f		1	\N	\N
2	content-manager	components	findcomponent	f		2	\N	\N
3	content-manager	components	listcomponents	f		1	\N	\N
4	content-manager	components	listcomponents	f		2	\N	\N
5	content-manager	components	updatecomponent	f		1	\N	\N
6	content-manager	components	updatecomponent	f		2	\N	\N
7	content-manager	contentmanager	checkuidavailability	f		1	\N	\N
8	content-manager	contentmanager	checkuidavailability	f		2	\N	\N
9	content-manager	contentmanager	count	f		1	\N	\N
10	content-manager	contentmanager	count	f		2	\N	\N
11	content-manager	contentmanager	create	f		1	\N	\N
12	content-manager	contentmanager	create	f		2	\N	\N
13	content-manager	contentmanager	delete	f		1	\N	\N
14	content-manager	contentmanager	delete	f		2	\N	\N
15	content-manager	contentmanager	deletemany	f		1	\N	\N
16	content-manager	contentmanager	deletemany	f		2	\N	\N
17	content-manager	contentmanager	find	f		1	\N	\N
18	content-manager	contentmanager	find	f		2	\N	\N
19	content-manager	contentmanager	findone	f		1	\N	\N
20	content-manager	contentmanager	findone	f		2	\N	\N
21	content-manager	contentmanager	findrelationlist	f		1	\N	\N
22	content-manager	contentmanager	findrelationlist	f		2	\N	\N
23	content-manager	contentmanager	generateuid	f		1	\N	\N
24	content-manager	contentmanager	generateuid	f		2	\N	\N
25	content-manager	contentmanager	publish	f		1	\N	\N
26	content-manager	contentmanager	publish	f		2	\N	\N
27	content-manager	contentmanager	unpublish	f		1	\N	\N
28	content-manager	contentmanager	unpublish	f		2	\N	\N
29	content-manager	contentmanager	update	f		1	\N	\N
30	content-manager	contentmanager	update	f		2	\N	\N
31	content-manager	contenttypes	findcontenttype	f		1	\N	\N
32	content-manager	contenttypes	findcontenttype	f		2	\N	\N
33	content-manager	contenttypes	listcontenttypes	f		1	\N	\N
34	content-manager	contenttypes	listcontenttypes	f		2	\N	\N
35	content-manager	contenttypes	updatecontenttype	f		1	\N	\N
36	content-manager	contenttypes	updatecontenttype	f		2	\N	\N
37	content-type-builder	builder	getreservednames	f		1	\N	\N
38	content-type-builder	builder	getreservednames	f		2	\N	\N
39	content-type-builder	componentcategories	deletecategory	f		1	\N	\N
40	content-type-builder	componentcategories	deletecategory	f		2	\N	\N
41	content-type-builder	componentcategories	editcategory	f		1	\N	\N
42	content-type-builder	componentcategories	editcategory	f		2	\N	\N
43	content-type-builder	components	createcomponent	f		1	\N	\N
44	content-type-builder	components	createcomponent	f		2	\N	\N
45	content-type-builder	components	deletecomponent	f		1	\N	\N
46	content-type-builder	components	deletecomponent	f		2	\N	\N
47	content-type-builder	components	getcomponent	f		1	\N	\N
48	content-type-builder	components	getcomponent	f		2	\N	\N
49	content-type-builder	components	getcomponents	f		1	\N	\N
50	content-type-builder	components	getcomponents	f		2	\N	\N
51	content-type-builder	components	updatecomponent	f		1	\N	\N
52	content-type-builder	components	updatecomponent	f		2	\N	\N
53	content-type-builder	connections	getconnections	f		1	\N	\N
54	content-type-builder	connections	getconnections	f		2	\N	\N
55	content-type-builder	contenttypes	createcontenttype	f		1	\N	\N
56	content-type-builder	contenttypes	createcontenttype	f		2	\N	\N
57	content-type-builder	contenttypes	deletecontenttype	f		1	\N	\N
58	content-type-builder	contenttypes	deletecontenttype	f		2	\N	\N
59	content-type-builder	contenttypes	getcontenttype	f		1	\N	\N
60	content-type-builder	contenttypes	getcontenttype	f		2	\N	\N
61	content-type-builder	contenttypes	getcontenttypes	f		1	\N	\N
62	content-type-builder	contenttypes	getcontenttypes	f		2	\N	\N
63	content-type-builder	contenttypes	updatecontenttype	f		1	\N	\N
64	content-type-builder	contenttypes	updatecontenttype	f		2	\N	\N
65	email	email	send	f		1	\N	\N
66	email	email	send	f		2	\N	\N
67	upload	upload	count	f		1	\N	\N
205	application	comment-reply	count	f		1	\N	\N
69	upload	upload	destroy	f		1	\N	\N
215	application	comment-reply	update	f		1	\N	\N
71	upload	upload	find	f		1	\N	\N
73	upload	upload	findone	f		1	\N	\N
217	application	article-like	count	f		1	\N	\N
75	upload	upload	getsettings	f		1	\N	\N
77	upload	upload	search	f		1	\N	\N
79	upload	upload	updatesettings	f		1	\N	\N
227	application	article-like	update	f		1	\N	\N
78	upload	upload	search	t		2	\N	\N
167	application	article	update	f		1	\N	\N
158	application	article	count	t		2	\N	\N
74	upload	upload	findone	t		2	\N	\N
179	application	article-category	update	f		1	\N	\N
170	application	article-category	count	t		2	\N	\N
76	upload	upload	getsettings	t		2	\N	\N
80	upload	upload	updatesettings	t		2	\N	\N
70	upload	upload	destroy	t		2	\N	\N
81	upload	upload	upload	f		1	\N	\N
91	users-permissions	auth	register	f		1	\N	\N
101	users-permissions	user	destroy	f		1	\N	\N
111	users-permissions	user	update	f		1	\N	\N
121	users-permissions	userspermissions	getpermissions	f		1	\N	\N
131	users-permissions	userspermissions	getroutes	f		1	\N	\N
141	users-permissions	userspermissions	updateproviders	f		1	\N	\N
143	users-permissions	userspermissions	updaterole	f		1	\N	\N
159	application	article	create	f		1	\N	\N
344	application	contact-us	create	t		2	\N	\N
168	application	article	update	t		2	\N	\N
169	application	article-category	count	f		1	\N	\N
72	upload	upload	find	t		2	\N	\N
294	application	link-preview	getlinkpreviews	t		2	\N	\N
353	application	article-bookmark	customdelete	f		1	\N	\N
202	application	comment	findone	t		2	\N	\N
206	application	comment-reply	count	t		2	\N	\N
216	application	comment-reply	update	t		2	\N	\N
219	application	article-like	create	f		1	\N	\N
303	application	article-tags	find	f		1	\N	\N
316	application	article-bookmark	delete	f		2	\N	\N
332	application	user-follow	find	t		2	\N	\N
366	application	notification	findone	t		2	\N	\N
275	application	subscribe-category	findone	f		1	\N	\N
287	application	link-preview	find	f		1	\N	\N
93	users-permissions	auth	resetpassword	f		1	\N	\N
207	application	comment-reply	create	f		1	\N	\N
117	users-permissions	userspermissions	getadvancedsettings	f		1	\N	\N
127	users-permissions	userspermissions	getrole	f		1	\N	\N
137	users-permissions	userspermissions	updateadvancedsettings	f		1	\N	\N
180	application	article-category	update	t		2	\N	\N
293	application	link-preview	getlinkpreviews	f		1	\N	\N
220	application	article-like	create	t		2	\N	\N
288	application	link-preview	find	t		2	\N	\N
354	application	article-bookmark	customdelete	t		2	\N	\N
160	application	article	create	t		2	\N	\N
172	application	article-category	create	f		2	\N	\N
82	upload	upload	upload	t		2	\N	\N
360	application	notification	create	t		2	\N	\N
193	application	comment	count	f		1	\N	\N
203	application	comment	update	f		1	\N	\N
304	application	article-tags	find	t		2	\N	\N
276	application	subscribe-category	findone	t		2	\N	\N
106	users-permissions	user	find	t		2	\N	\N
323	application	article-bookmark	findbookmarkdetails	f		1	\N	\N
333	application	user-follow	findone	f		1	\N	\N
345	application	contact-us	delete	f		1	\N	\N
83	users-permissions	auth	callback	f		1	\N	\N
94	users-permissions	auth	resetpassword	t		2	\N	\N
103	users-permissions	user	destroyall	f		1	\N	\N
115	users-permissions	userspermissions	deleterole	f		1	\N	\N
126	users-permissions	userspermissions	getproviders	f		2	\N	\N
136	users-permissions	userspermissions	searchusers	f		2	\N	\N
204	application	comment	update	t		2	\N	\N
161	application	article	delete	f		1	\N	\N
171	application	article-category	create	f		1	\N	\N
355	application	user-follow	deletefollowing	f		1	\N	\N
357	application	notification	count	f		1	\N	\N
367	application	notification	update	f		1	\N	\N
194	application	comment	count	t		2	\N	\N
208	application	comment-reply	create	t		2	\N	\N
369	application	notification	article_publish	f		1	\N	\N
218	application	article-like	count	t		2	\N	\N
305	application	article-tags	findone	f		1	\N	\N
313	application	article-bookmark	create	f		1	\N	\N
267	application	subscribe-category	count	f		1	\N	\N
277	application	subscribe-category	update	f		1	\N	\N
279	application	subscribe-category	createmultiple	f		1	\N	\N
289	application	link-preview	findone	f		1	\N	\N
321	application	article-bookmark	update	f		1	\N	\N
324	application	article-bookmark	findbookmarkdetails	t		2	\N	\N
334	application	user-follow	findone	t		2	\N	\N
346	application	contact-us	delete	f		2	\N	\N
84	users-permissions	auth	callback	t		2	\N	\N
95	users-permissions	auth	sendemailconfirmation	f		1	\N	\N
105	users-permissions	user	find	f		1	\N	\N
116	users-permissions	userspermissions	deleterole	f		2	\N	\N
128	users-permissions	userspermissions	getrole	f		2	\N	\N
138	users-permissions	userspermissions	updateadvancedsettings	f		2	\N	\N
209	application	comment-reply	delete	f		1	\N	\N
221	application	article-like	delete	f		1	\N	\N
162	application	article	delete	t		2	\N	\N
173	application	article-category	delete	f		1	\N	\N
195	application	comment	create	f		1	\N	\N
290	application	link-preview	findone	t		2	\N	\N
356	application	user-follow	deletefollowing	t		2	\N	\N
365	application	notification	findone	f		1	\N	\N
306	application	article-tags	findone	t		2	\N	\N
370	application	notification	article_publish	t		2	\N	\N
268	application	subscribe-category	count	t		2	\N	\N
280	application	subscribe-category	createmultiple	t		2	\N	\N
322	application	article-bookmark	update	t		2	\N	\N
318	application	article-bookmark	find	t		2	\N	\N
325	application	user-follow	count	f		1	\N	\N
335	application	user-follow	update	f		1	\N	\N
337	application	user-follow	findfollowers	f		1	\N	\N
347	application	contact-us	find	f		1	\N	\N
85	users-permissions	auth	connect	t		1	\N	\N
96	users-permissions	auth	sendemailconfirmation	f		2	\N	\N
109	users-permissions	user	me	t		1	\N	\N
120	users-permissions	userspermissions	getemailtemplate	f		2	\N	\N
130	users-permissions	userspermissions	getroles	f		2	\N	\N
140	users-permissions	userspermissions	updateemailtemplate	f		2	\N	\N
210	application	comment-reply	delete	f		2	\N	\N
196	application	comment	create	t		2	\N	\N
163	application	article	find	f		1	\N	\N
174	application	article-category	delete	f		2	\N	\N
348	application	contact-us	find	t		2	\N	\N
297	application	article-tags	count	f		1	\N	\N
228	application	article-like	update	t		2	\N	\N
222	application	article-like	delete	t		2	\N	\N
269	application	subscribe-category	create	f		1	\N	\N
309	application	article-tags	createmultiple	f		1	\N	\N
308	application	article-tags	update	t		2	\N	\N
278	application	subscribe-category	update	t		2	\N	\N
281	application	link-preview	count	f		1	\N	\N
291	application	link-preview	update	f		1	\N	\N
317	application	article-bookmark	find	f		1	\N	\N
311	application	article-bookmark	count	f		1	\N	\N
358	application	notification	count	t		2	\N	\N
336	application	user-follow	update	t		2	\N	\N
326	application	user-follow	count	t		2	\N	\N
368	application	notification	update	t		2	\N	\N
338	application	user-follow	findfollowers	t		2	\N	\N
371	application	notification	user_create	f		1	\N	\N
86	users-permissions	auth	connect	t		2	\N	\N
97	users-permissions	user	count	f		1	\N	\N
118	users-permissions	userspermissions	getadvancedsettings	f		2	\N	\N
129	users-permissions	userspermissions	getroles	f		1	\N	\N
139	users-permissions	userspermissions	updateemailtemplate	f		1	\N	\N
211	application	comment-reply	find	f		1	\N	\N
223	application	article-like	find	f		1	\N	\N
282	application	link-preview	count	t		2	\N	\N
292	application	link-preview	update	t		2	\N	\N
164	application	article	find	t		2	\N	\N
175	application	article-category	find	f		1	\N	\N
361	application	notification	delete	f		1	\N	\N
197	application	comment	delete	f		1	\N	\N
108	users-permissions	user	findone	t		2	\N	\N
307	application	article-tags	update	f		1	\N	\N
270	application	subscribe-category	create	t		2	\N	\N
372	application	notification	user_create	t		2	\N	\N
298	application	article-tags	count	t		2	\N	\N
310	application	article-tags	createmultiple	t		2	\N	\N
315	application	article-bookmark	delete	f		1	\N	\N
327	application	user-follow	create	f		1	\N	\N
339	application	user-follow	findfollowings	f		1	\N	\N
349	application	contact-us	findone	f		1	\N	\N
87	users-permissions	auth	emailconfirmation	f		1	\N	\N
107	users-permissions	user	findone	f		1	\N	\N
119	users-permissions	userspermissions	getemailtemplate	f		1	\N	\N
123	users-permissions	userspermissions	getpolicies	f		1	\N	\N
133	users-permissions	userspermissions	index	f		1	\N	\N
144	users-permissions	userspermissions	updaterole	f		2	\N	\N
350	application	contact-us	findone	t		2	\N	\N
212	application	comment-reply	find	t		2	\N	\N
165	application	article	findone	f		1	\N	\N
225	application	article-like	findone	f		1	\N	\N
176	application	article-category	find	t		2	\N	\N
299	application	article-tags	create	f		1	\N	\N
198	application	comment	delete	f		2	\N	\N
362	application	notification	delete	t		2	\N	\N
98	users-permissions	user	count	t		2	\N	\N
314	application	article-bookmark	create	t		2	\N	\N
271	application	subscribe-category	delete	f		1	\N	\N
283	application	link-preview	create	f		1	\N	\N
328	application	user-follow	create	t		2	\N	\N
373	application	user-follow	get_new_users	f		1	\N	\N
340	application	user-follow	findfollowings	t		2	\N	\N
88	users-permissions	auth	emailconfirmation	t		2	\N	\N
99	users-permissions	user	create	f		1	\N	\N
110	users-permissions	user	me	t		2	\N	\N
113	users-permissions	userspermissions	createrole	f		1	\N	\N
124	users-permissions	userspermissions	getpolicies	f		2	\N	\N
134	users-permissions	userspermissions	index	f		2	\N	\N
213	application	comment-reply	findone	f		1	\N	\N
284	application	link-preview	create	t		2	\N	\N
166	application	article	findone	t		2	\N	\N
177	application	article-category	findone	f		1	\N	\N
352	application	contact-us	update	t		2	\N	\N
199	application	comment	find	f		1	\N	\N
224	application	article-like	find	t		2	\N	\N
364	application	notification	find	t		2	\N	\N
300	application	article-tags	create	t		2	\N	\N
272	application	subscribe-category	delete	t		2	\N	\N
312	application	article-bookmark	count	t		2	\N	\N
329	application	user-follow	delete	f		1	\N	\N
341	application	contact-us	count	f		1	\N	\N
374	application	user-follow	get_new_users	t		2	\N	\N
89	users-permissions	auth	forgotpassword	f		1	\N	\N
342	application	contact-us	count	t		2	\N	\N
114	users-permissions	userspermissions	createrole	f		2	\N	\N
125	users-permissions	userspermissions	getproviders	f		1	\N	\N
135	users-permissions	userspermissions	searchusers	f		1	\N	\N
200	application	comment	find	t		2	\N	\N
214	application	comment-reply	findone	t		2	\N	\N
301	application	article-tags	delete	f		1	\N	\N
104	users-permissions	user	destroyall	f		2	\N	\N
226	application	article-like	findone	t		2	\N	\N
178	application	article-category	findone	t		2	\N	\N
363	application	notification	find	f		1	\N	\N
273	application	subscribe-category	find	f		1	\N	\N
285	application	link-preview	delete	f		1	\N	\N
100	users-permissions	user	create	t		2	\N	\N
320	application	article-bookmark	findone	t		2	\N	\N
375	application	notification	article_search_custom	f		1	\N	\N
330	application	user-follow	delete	t		2	\N	\N
351	application	contact-us	update	f		1	\N	\N
90	users-permissions	auth	forgotpassword	t		2	\N	\N
92	users-permissions	auth	register	t		2	\N	\N
122	users-permissions	userspermissions	getpermissions	f		2	\N	\N
132	users-permissions	userspermissions	getroutes	f		2	\N	\N
142	users-permissions	userspermissions	updateproviders	f		2	\N	\N
112	users-permissions	user	update	t		2	\N	\N
359	application	notification	create	f		1	\N	\N
157	application	article	count	f		1	\N	\N
302	application	article-tags	delete	t		2	\N	\N
102	users-permissions	user	destroy	f		2	\N	\N
68	upload	upload	count	t		2	\N	\N
201	application	comment	findone	f		1	\N	\N
319	application	article-bookmark	findone	f		1	\N	\N
331	application	user-follow	find	f		1	\N	\N
343	application	contact-us	create	f		1	\N	\N
274	application	subscribe-category	find	t		2	\N	\N
286	application	link-preview	delete	f		2	\N	\N
376	application	notification	article_search_custom	t		2	\N	\N
379	application	custom-article-like	deletebywhere	f		1	\N	\N
380	application	custom-article-like	deletebywhere	f		2	\N	\N
384	application	article-like	thumbdown	t		2	\N	\N
383	application	article-like	thumbdown	t		1	\N	\N
\.


--
-- Data for Name: users-permissions_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."users-permissions_role" (id, name, description, type, created_by, updated_by) FROM stdin;
2	Public	Default role given to unauthenticated user.	public	\N	\N
1	Authenticated	Default role given to authenticated user.	authenticated	\N	\N
\.


--
-- Data for Name: users-permissions_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", "confirmationToken", confirmed, blocked, role, created_by, updated_by, created_at, updated_at, fullname, birthday, gender, last_login) FROM stdin;
22	user2	user2@gamil.com	local	$2a$10$rEO1QU.9cXymSNboA0cNH.eR3iEUE31/9onxyELZzbrYrD2yyzwHC	\N	\N	t	\N	1	\N	\N	2020-11-27 06:16:49.213+02	2020-11-27 06:16:49.232+02	user2	07/23/2004	male	\N
23	user3	user3@gmail.com	local	$2a$10$9ryA3bO238Z/HeLUEv1FcukiuWBuC4ONTOy7Lj.MJKF4C6khpy2NO	\N	\N	t	\N	1	\N	\N	2020-11-27 06:21:56.791+02	2020-11-27 06:21:56.807+02	user3	07/23/2004	male	\N
4	strapi	johndoe@gmail.com	local	$2a$10$akUZb33UbpLURy0MRHKZAOSnM2sQsS0b2Isc.gc8uP/ZAAVCBIQ7i	\N	\N	t	\N	1	\N	1	2020-11-04 02:10:42.954+02	2020-11-04 04:20:40.783+02	\N	19349343	\N	\N
6	remember	remember@gmail.com	local	$2a$10$/fV6JNmK76TiFvITM8PvruWnCgDMmhU447pmnDGqo3vNGrmN0DmGW	\N	\N	t	t	1	1	1	2020-11-12 21:52:22.014+02	2020-11-12 21:53:58.273+02	remember	2001	male	\N
8	fnmotivation	fnmotivation@gmail.com	local	$2a$10$qlKwNFV7oiCWCXtN08R5K.EUr/EvximVqyaTYW5rE87C.FKMB8CpK	\N	\N	t	f	1	1	1	2020-11-12 22:00:18.811+02	2020-11-12 22:01:44.113+02	fnmotivation	08/29/1986	male	\N
12	bbb	bbb@gmail.com	local	$2a$10$x1WZHSQMe2GLeIAw8mFpE.n4wQo1o5k2C8DvFV.aBM3/Odegc1LEu	\N	\N	t	\N	1	\N	\N	2020-11-13 23:23:04.105+02	2020-11-13 23:23:04.114+02	bbb	08/29/1986	female	\N
13	ccc	ccc@gmail.com	local	$2a$10$OzlzTIvqKH10xoT4HeQ1COyZFOcJpmI0XCTGwZhrFgz//TtLfcTs6	\N	\N	t	\N	1	\N	\N	2020-11-13 23:37:09.438+02	2020-11-13 23:37:09.444+02	ccc	08/29/1986	male	\N
15	aa	aa@gmail.com	local	$2a$10$xPPeTdBFoFCJsrw0N5vMTuXvZPChaGupg5nPS3QjFPD0NC7xxE7oG	\N	\N	t	\N	1	\N	\N	2020-11-17 05:15:51.806+02	2020-11-17 05:15:51.837+02	aa	aa	male	\N
16	aphrodite	aphrodite@gmail.com	local	$2a$10$2IJprngna284KsZzQ6wQR.l0ngnunVTDfPPeQYjfclu4r/YhYKoEK	\N	\N	t	\N	1	\N	1	2020-11-19 13:55:20.621+02	2020-11-24 22:23:22.21+02	aphrodite	04/25/1996	female	\N
17	subscribe	subscribe@gamil.com	local	$2a$10$yjMC5QlZA3ZE.zDK5AcE/efBhqAmEBL8rx1SQ6chwBcpT8/4HjjkO	\N	\N	t	\N	1	\N	\N	2020-11-26 03:02:47.412+02	2020-11-26 03:02:47.475+02	subscribe	07/23/2004	male	\N
18	fake	fake@gamil.com	local	$2a$10$n6aB/gbwMDDqPb4fWcvLe.Ff2nHwzdkqX9kXlOk5YQ8mVi5z7/DWO	\N	\N	f	f	1	1	1	2020-11-27 05:54:12.926+02	2020-11-27 05:54:12.957+02	fake	\N	\N	\N
24	BrownA	brownalb@montclair.edu	local	$2a$10$NWRk7FmZrMZySmfAmrYMW.VTCXz4Jn1AkH3nBVbL2.cbLNYOKqWi2	\N	\N	t	\N	1	\N	\N	2020-11-28 07:13:24.232+02	2020-11-28 07:13:24.244+02	Allen Brown	08141985	male	\N
25	albrown	albertearlbrown@gmail.com	local	$2a$10$IGeCLXJ3Jr2ROonLu5YpQOe9yuTPL6QKkl5Te7lXASf1Wo7kpFWge	\N	\N	t	\N	1	\N	\N	2020-12-07 17:13:46.546+02	2020-12-07 17:13:46.56+02	al brown	08141985	male	\N
26	ankeshvaishnav	ankeshvaishnav@gmail.com	local	$2a$10$hpNIprTQqnRt2YMze55nqeQdVPV14FF8plTwSiLyYPy2hmCcQbKK6	\N	\N	t	\N	1	\N	\N	2020-12-07 18:28:42.603+02	2020-12-07 18:28:42.616+02	Ankesh Vaishnav	04/17/1993	male	\N
27	jaymin_navadiya	designer.jaymin@gmai.com	local	$2a$10$dur1E8DG7cqkdR4ZR1YJAeFUlqplIHD9dxjXWw87NFxv8MqvrTkZ.	\N	\N	t	\N	1	\N	\N	2020-12-10 08:43:08.813+02	2020-12-10 08:43:08.829+02	Jaymin Navadiya	14/01/1994	male	\N
28	jaymin_navadiya_1	designer.jaymin1@gmai.com	local	$2a$10$GsP0C0ScZLx2BJ6KuUYjUurq1kTgdIcEVveyxvu9qmonY8dmUvthu	\N	\N	t	\N	1	\N	\N	2020-12-10 08:44:13.391+02	2020-12-10 08:44:13.52+02	Jaymin Navadiya	14/01/1994	male	\N
30	hellow1	hellow.test@gmail.com	local	$2a$10$uSz7kOlCQ3xg0C5AyVAuBuQgPw8Dr5dS7ew4OSk.XmlWrP0bkRPv2	\N	\N	t	\N	1	\N	\N	2020-12-10 08:46:37.775+02	2020-12-10 08:46:37.788+02	Hello Test	14/01/1994	male	\N
37	new1	new1@gmail.com	local	$2a$10$p6HPHGB5jvST6GonB72MS.zCFOed4XD3isf8uyjl4pb0p1p7ZdLOG	\N	\N	t	\N	1	\N	\N	2020-12-11 17:54:34.225+02	2020-12-11 17:54:34.243+02	new1	02/02/2020	male	\N
38	ckjaner2	ckjaner2@gmail.com	google	\N	\N	\N	t	\N	1	\N	\N	2020-12-12 21:46:04.972+02	2020-12-12 21:46:04.996+02	\N	\N	\N	\N
3	JamesOne	user@gmail.com	local	$2a$10$y3XEkS0CZEW5FQo2g1KOCeGEHHIGcHrs1aiTdvM3vrCPTOKv..IRC	\N	\N	t	\N	1	\N	1	2020-11-04 02:07:27.462+02	2020-12-11 19:47:24.777+02	Richard Stweart	08/29/1986	\N	\N
39	james6@gmail.com	james@gmail.com	local	$2a$10$2rJRbqyHihuR3G9aYyOnleFRVg7Ktnkc1UWAsDTh5eJrnGvgPm34O	\N	\N	t	\N	1	\N	\N	2020-12-12 21:47:51.499+02	2020-12-12 21:47:51.516+02	james	02/02/2020	male	\N
\.


--
-- Data for Name: users-permissions_user__subscriber_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."users-permissions_user__subscriber_categories" (id, "users-permissions_user_id", "subscriber-category_id") FROM stdin;
\.


--
-- Name: article-tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."article-tags_id_seq"', 46, true);


--
-- Name: article__article_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.article__article_tags_id_seq', 1, false);


--
-- Name: article__comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.article__comments_id_seq', 1, false);


--
-- Name: article_bookmark_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.article_bookmark_id_seq', 20, true);


--
-- Name: article_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.article_category_id_seq', 14, true);


--
-- Name: article_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.article_id_seq', 61, true);


--
-- Name: article_like_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.article_like_id_seq', 30, true);


--
-- Name: articles_article_categories__article_categories_articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.articles_article_categories__article_categories_articles_id_seq', 2, true);


--
-- Name: articles_article_tags__article_tags_articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.articles_article_tags__article_tags_articles_id_seq', 2, true);


--
-- Name: comment__comment_replies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comment__comment_replies_id_seq', 1, false);


--
-- Name: comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comment_id_seq', 35, true);


--
-- Name: comment_reply_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comment_reply_id_seq', 1, true);


--
-- Name: contact_us_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contact_us_id_seq', 1, true);


--
-- Name: core_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.core_store_id_seq', 97, true);


--
-- Name: link_preview_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.link_preview_id_seq', 1, false);


--
-- Name: notification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.notification_id_seq', 37, true);


--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 2, true);


--
-- Name: strapi_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_permission_id_seq', 305, true);


--
-- Name: strapi_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_role_id_seq', 3, true);


--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_users_roles_id_seq', 4, true);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, true);


--
-- Name: subscribe_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subscribe_category_id_seq', 84, true);


--
-- Name: subscriber_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subscriber_categories_id_seq', 1, false);


--
-- Name: subscriber_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subscriber_category_id_seq', 2, true);


--
-- Name: upload_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_file_id_seq', 33, true);


--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 29, true);


--
-- Name: user_follow_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_follow_id_seq', 16, true);


--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 384, true);


--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 2, true);


--
-- Name: users-permissions_user__subscriber_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users-permissions_user__subscriber_categories_id_seq"', 1, false);


--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 39, true);


--
-- Name: article-tags article-tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."article-tags"
    ADD CONSTRAINT "article-tags_pkey" PRIMARY KEY (id);


--
-- Name: article__article_tags article__article_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article__article_tags
    ADD CONSTRAINT article__article_tags_pkey PRIMARY KEY (id);


--
-- Name: article__comments article__comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article__comments
    ADD CONSTRAINT article__comments_pkey PRIMARY KEY (id);


--
-- Name: article_bookmark article_bookmark_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_bookmark
    ADD CONSTRAINT article_bookmark_pkey PRIMARY KEY (id);


--
-- Name: article_category article_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_category
    ADD CONSTRAINT article_category_pkey PRIMARY KEY (id);


--
-- Name: article_like article_like_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_like
    ADD CONSTRAINT article_like_pkey PRIMARY KEY (id);


--
-- Name: article article_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article
    ADD CONSTRAINT article_pkey PRIMARY KEY (id);


--
-- Name: article article_slug_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article
    ADD CONSTRAINT article_slug_unique UNIQUE (slug);


--
-- Name: article-tags article_tags_slug_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."article-tags"
    ADD CONSTRAINT article_tags_slug_unique UNIQUE (slug);


--
-- Name: articles_article_categories__article_categories_articles articles_article_categories__article_categories_articles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles_article_categories__article_categories_articles
    ADD CONSTRAINT articles_article_categories__article_categories_articles_pkey PRIMARY KEY (id);


--
-- Name: articles_article_tags__article_tags_articles articles_article_tags__article_tags_articles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles_article_tags__article_tags_articles
    ADD CONSTRAINT articles_article_tags__article_tags_articles_pkey PRIMARY KEY (id);


--
-- Name: comment__comment_replies comment__comment_replies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment__comment_replies
    ADD CONSTRAINT comment__comment_replies_pkey PRIMARY KEY (id);


--
-- Name: comment comment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment
    ADD CONSTRAINT comment_pkey PRIMARY KEY (id);


--
-- Name: comment_reply comment_reply_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment_reply
    ADD CONSTRAINT comment_reply_pkey PRIMARY KEY (id);


--
-- Name: contact_us contact_us_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_us
    ADD CONSTRAINT contact_us_pkey PRIMARY KEY (id);


--
-- Name: core_store core_store_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);


--
-- Name: link_preview link_preview_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.link_preview
    ADD CONSTRAINT link_preview_pkey PRIMARY KEY (id);


--
-- Name: notification notification_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notification
    ADD CONSTRAINT notification_pkey PRIMARY KEY (id);


--
-- Name: strapi_administrator strapi_administrator_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_email_unique UNIQUE (email);


--
-- Name: strapi_administrator strapi_administrator_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);


--
-- Name: strapi_permission strapi_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_permission
    ADD CONSTRAINT strapi_permission_pkey PRIMARY KEY (id);


--
-- Name: strapi_role strapi_role_code_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_code_unique UNIQUE (code);


--
-- Name: strapi_role strapi_role_name_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_name_unique UNIQUE (name);


--
-- Name: strapi_role strapi_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_pkey PRIMARY KEY (id);


--
-- Name: strapi_users_roles strapi_users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_users_roles
    ADD CONSTRAINT strapi_users_roles_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: subscribe_category subscribe_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscribe_category
    ADD CONSTRAINT subscribe_category_pkey PRIMARY KEY (id);


--
-- Name: subscriber_categories subscriber_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscriber_categories
    ADD CONSTRAINT subscriber_categories_pkey PRIMARY KEY (id);


--
-- Name: subscriber_category subscriber_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscriber_category
    ADD CONSTRAINT subscriber_category_pkey PRIMARY KEY (id);


--
-- Name: upload_file_morph upload_file_morph_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);


--
-- Name: upload_file upload_file_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);


--
-- Name: user_follow user_follow_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_follow
    ADD CONSTRAINT user_follow_pkey PRIMARY KEY (id);


--
-- Name: users-permissions_permission users-permissions_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_type_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);


--
-- Name: users-permissions_user__subscriber_categories users-permissions_user__subscriber_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user__subscriber_categories"
    ADD CONSTRAINT "users-permissions_user__subscriber_categories_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_user users-permissions_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_user users-permissions_user_username_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);


--
-- PostgreSQL database dump complete
--

