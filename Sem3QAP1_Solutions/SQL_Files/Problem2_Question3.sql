-- this code selects first name from the customer table and groups by 
-- the customers first name

select first_name, 
	count(last_name) 
	from customer 
	group by first_name