-- SEQUENCE: public.Transaction_History_Transaction_ID_seq

-- DROP SEQUENCE public."Transaction_History_Transaction_ID_seq";

CREATE SEQUENCE public."Transaction_History_Transaction_ID_seq"
    INCREMENT 1
    START 1000
    MINVALUE 1000
    MAXVALUE 100000000
    CACHE 1;

ALTER SEQUENCE public."Transaction_History_Transaction_ID_seq"
    OWNER TO mbalint;