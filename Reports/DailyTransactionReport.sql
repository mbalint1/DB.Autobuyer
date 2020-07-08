    -- Daily Transaction Report
	select "Transaction_Date", "Transaction_Type", "Player_Name", count("Transaction_ID")
	  from public."Transaction_Log"
	 where 1=1
	 group by "Transaction_Date", "Transaction_Type", "Player_Name"
	 order by "Transaction_Date" desc, "Player_Name";