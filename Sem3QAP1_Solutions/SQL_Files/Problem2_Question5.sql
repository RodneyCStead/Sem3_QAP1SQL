-- this code takes the cusomers first name from customer table and matchs their address 
-- by connecting the two tables by the address_id which the column that they both share
select customer.first_name, address.address 
	from customer 
	join address 
	on customer.address_id = address.address_id