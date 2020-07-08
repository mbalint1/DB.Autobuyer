-- Table: public."Player_Type"

-- DROP TABLE public."Player_Type";

CREATE TABLE public."Player_Type"
(
    "Player_Type" text COLLATE pg_catalog."default" NOT NULL,
    "Player_Type_Description" text COLLATE pg_catalog."default" NOT NULL,
    "Created_By" text COLLATE pg_catalog."default" NOT NULL,
    "Created_Date" date NOT NULL,
    "Modified_By" text COLLATE pg_catalog."default" NOT NULL,
    "Modified_Date" date NOT NULL,
    CONSTRAINT "Player_Name_UK" UNIQUE ("Player_Type")

)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Player_Type"
    OWNER to mbalint;

GRANT ALL ON TABLE public."Player_Type" TO mbalint;

COMMENT ON TABLE public."Player_Type"
    IS 'Defines the various player types';