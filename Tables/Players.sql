-- Table: public."Players"

-- DROP TABLE public."Players";

CREATE TABLE public."Players"
(
    "Player_Id" integer NOT NULL DEFAULT nextval('"Players_Player_Id_seq"'::regclass),
    "Name" text COLLATE pg_catalog."default" NOT NULL,
    "Created_By" text COLLATE pg_catalog."default" NOT NULL,
    "Created_Date" date NOT NULL,
    "Modified_By" text COLLATE pg_catalog."default" NOT NULL,
    "Modified_Date" date NOT NULL,
    CONSTRAINT "Players_pkey" PRIMARY KEY ("Player_Id")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Players"
    OWNER to mbalint;
COMMENT ON TABLE public."Players"
    IS 'Table for storing top level player items';