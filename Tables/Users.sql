-- Table: public."Users"

--DROP TABLE public."Users";

CREATE TABLE public."Users"
(
    "User_ID" numeric NOT NULL DEFAULT nextval('"Users_User_ID_seq"'::regclass),
    "User_Name" text COLLATE pg_catalog."default" NOT NULL,
    "Email" text COLLATE pg_catalog."default" NOT NULL,
    "Password_Hash" text COLLATE pg_catalog."default" NOT NULL,
    "Lockout_Enabled" text COLLATE pg_catalog."default" NOT NULL,
    "Lockout_End_Date" timestamp with time zone,
    "Access_Fail_Count" numeric,
    "Is_Temp_Password" text COLLATE pg_catalog."default" NOT NULL,
    "Created_By" text COLLATE pg_catalog."default" NOT NULL,
    "Created_Date" timestamp with time zone NOT NULL,
    "Modified_By" text COLLATE pg_catalog."default" NOT NULL,
    "Modified_Date" timestamp with time zone NOT NULL,
    CONSTRAINT "Users_pkey" PRIMARY KEY ("User_ID")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Users"
    OWNER to mbalint;