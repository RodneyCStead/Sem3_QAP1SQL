-- this code selects the customer table and gives the where clause 
-- of displaying only first names starting with R (R%)

select * from customer 
	where first_name like 'R%';