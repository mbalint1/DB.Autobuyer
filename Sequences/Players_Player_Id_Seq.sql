-- SEQUENCE: public.Players_Player_Id_seq

-- DROP SEQUENCE public."Players_Player_Id_seq";

CREATE SEQUENCE public."Players_Player_Id_seq"
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE public."Players_Player_Id_seq"
    OWNER TO mbalint;