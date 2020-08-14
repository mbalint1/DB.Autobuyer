-- SEQUENCE: public.Buyer_Session_Session_Id_Seq

-- DROP SEQUENCE public."Buyer_Session_Session_Id_Seq";

CREATE SEQUENCE public."Buyer_Session_Session_Id_Seq"
    INCREMENT 1
    START 1000
    MINVALUE 1000
    MAXVALUE 10000000
    CACHE 1;

ALTER SEQUENCE public."Buyer_Session_Session_Id_Seq"
    OWNER TO mbalint;