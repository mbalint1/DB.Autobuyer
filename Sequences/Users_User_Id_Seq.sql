-- SEQUENCE: public.Users_User_ID_seq

-- DROP SEQUENCE public."Users_User_ID_seq";

CREATE SEQUENCE public."Users_User_ID_seq"
    INCREMENT 1
    START 1000
    MINVALUE 1000
    MAXVALUE 10000000
    CACHE 1;

ALTER SEQUENCE public."Users_User_ID_seq"
    OWNER TO mbalint;