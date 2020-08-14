-- FUNCTION: public.lock_player(integer, integer)

 --DROP FUNCTION public.lock_player(integer, integer);

CREATE OR REPLACE FUNCTION public.lock_player(
	p_version_id integer,
	p_user_id integer,
    p_num_buy integer)
    RETURNS integer
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
AS $BODY$
DECLARE inserted_id integer;
    BEGIN

   insert into public."Buyer_Session" ("Player_Version_ID", "User_ID", "Search_Num", "Purchased_Num", "Captcha_Flag", "Active_Flag", "Start_Time", "End_Time")
   select p_version_id, p_user_id, p_num_buy, null, 'Y', 'Y', current_timestamp, null
    where not exists (select 1 from public."Buyer_Session" where "Player_Version_ID" = p_version_id and "Active_Flag" = 'Y')
returning "Session_ID" into inserted_id;

RETURN inserted_id;
END;
$BODY$;

ALTER FUNCTION public.lock_player(integer, integer, integer)
    OWNER TO mbalint;
