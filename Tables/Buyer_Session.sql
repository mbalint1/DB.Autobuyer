-- Table: public."Buyer_Session"

 --DROP TABLE public."Buyer_Session";

CREATE TABLE public."Buyer_Session"
(
    "Session_ID" integer NOT NULL DEFAULT nextval('"Buyer_Session_Session_Id_Seq"'::regclass),
    "Player_Version_ID" integer NOT NULL,
    "User_ID" integer NOT NULL,
	"Search_Num" integer NOT NULL,
	"Purchased_Num" integer,
	"Captcha_Flag" character(1) NOT NULL,
    "Active_Flag" character(1) COLLATE pg_catalog."default" NOT NULL,
    "Start_Time" timestamp without time zone NOT NULL,
    "End_Time" timestamp without time zone,
    CONSTRAINT "Buyer_Session_pkey" PRIMARY KEY ("Session_ID"),
    CONSTRAINT "Buyer_Session_FK1" FOREIGN KEY ("Player_Version_ID")
        REFERENCES public."Player_Version" ("Version_Id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Buyer_Session"
    OWNER to mbalint;