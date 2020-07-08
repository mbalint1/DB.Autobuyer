-- Table: public."Player_Version"

-- DROP TABLE public."Player_Version";

CREATE TABLE public."Player_Version"
(
    "Version_Id" integer NOT NULL DEFAULT nextval('"Player_Version_Version_Id_seq"'::regclass),
    "Player_Id" integer NOT NULL,
    "Fut_Id" numeric NOT NULL,
    "Player_Type" text COLLATE pg_catalog."default" NOT NULL,
    "Rating" numeric NOT NULL,
    "Position" text COLLATE pg_catalog."default" NOT NULL,
    "Created_By" text COLLATE pg_catalog."default" NOT NULL,
    "Created_Date" date NOT NULL,
    "Modified_By" text COLLATE pg_catalog."default" NOT NULL,
    "Modified_Date" date NOT NULL,
    CONSTRAINT "Player_Version_pkey" PRIMARY KEY ("Version_Id"),
    CONSTRAINT "Player_Version_FK1" FOREIGN KEY ("Player_Id")
        REFERENCES public."Players" ("Player_Id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Player_Version"
    OWNER to mbalint;
COMMENT ON TABLE public."Player_Version"
    IS 'Table for storing player version data';