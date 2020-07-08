CREATE TABLE public."Transaction_Type"
(
    "Transaction_Type" text COLLATE pg_catalog."default" NOT NULL,
    "Transaction_Type_Description" text COLLATE pg_catalog."default" NOT NULL,
    "Created_By" text COLLATE pg_catalog."default" NOT NULL,
    "Created_Date" date NOT NULL,
    "Modified_By" text COLLATE pg_catalog."default" NOT NULL,
    "Modified_Date" date NOT NULL
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Transaction_Type"
    OWNER to mbalint;

GRANT ALL ON TABLE public."Transaction_Type" TO mbalint;

COMMENT ON TABLE public."Transaction_Type"
    IS 'Defines the various transaction types';