CREATE TABLE public."Transaction_History"
(
    "Transaction_ID" integer NOT NULL DEFAULT nextval('"Transaction_History_Transaction_ID_seq"'::regclass),
    "Transaction_Type" text COLLATE pg_catalog."default" NOT NULL,
    "Player_Name" text COLLATE pg_catalog."default",
    "Player_Version_ID" integer,
    "Search_Price" numeric NOT NULL,
	"Sell_Price" numeric NULL,
    "Transaction_Date" timestamp NOT NULL,
    "User_Name" text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Transaction_History_pkey" PRIMARY KEY ("Transaction_ID"),
    CONSTRAINT "Transaction_History_FK1" FOREIGN KEY ("Player_Version_ID")
        REFERENCES public."Player_Version" ("Version_Id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Transaction_History"
    OWNER to mbalint;