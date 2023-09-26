-- Table: public.design_data

DROP TABLE IF EXISTS public.design_data;

CREATE TABLE IF NOT EXISTS public.design_data
(
    design_id integer NOT NULL,
    design_types character(20) COLLATE pg_catalog."default",
    inputs character(20) COLLATE pg_catalog."default",
    outputs character(20) COLLATE pg_catalog."default",
    parameters character(20) COLLATE pg_catalog."default",
    CONSTRAINT design_data_pkey PRIMARY KEY (design_id)
)
;
/
-- Table: public.requirement_data

DROP TABLE IF EXISTS public.requirement_data;

CREATE TABLE IF NOT EXISTS public.requirement_data
(
    unique_id integer NOT NULL,
    name_title character(30) COLLATE pg_catalog."default",
    description character(60) COLLATE pg_catalog."default",
    author character(30) COLLATE pg_catalog."default",
    created_date date,
    versions integer,
    status character(30) COLLATE pg_catalog."default",
    CONSTRAINT requirement_data_pkey PRIMARY KEY (unique_id)
)
;
/
-- Table: public.test_data

DROP TABLE IF EXISTS public.test_data;

CREATE TABLE IF NOT EXISTS public.test_data
(
    test_id integer NOT NULL,
    test_case character(100) COLLATE pg_catalog."default",
    test_run character(100) COLLATE pg_catalog."default",
    test_suite character(100) COLLATE pg_catalog."default",
    test_object character(100) COLLATE pg_catalog."default",
    test_plan character(100) COLLATE pg_catalog."default",
    CONSTRAINT test_data_pkey PRIMARY KEY (test_id)
);
/
-- Table: public.user_data

DROP TABLE IF EXISTS public.user_data;

CREATE TABLE IF NOT EXISTS public.user_data
(
    user_id integer NOT NULL,
    user_name character(30) COLLATE pg_catalog."default",
    roles character(15) COLLATE pg_catalog."default",
    CONSTRAINT user_data_pkey PRIMARY KEY (user_id)
)
;