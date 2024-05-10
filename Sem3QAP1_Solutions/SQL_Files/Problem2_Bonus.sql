-- this code selects first and last names from the customer table and the 
-- street address and postal code from the address table and joins them by the address_id that
-- both tables share. It procceds to sort customers by a given first charcter in their
-- first names and in this case A (A%), then groups by first name, last name, street address, postal code
-- and orders by their first name. 

select customer.first_name, customer.last_name, address.address, address.postal_code 
	from customer
	join address on customer.address_id = address.address_id
	where customer.first_name like 'A%'
	group by customer.first_name, customer.last_name, address.address, address.postal_code
	order by customer.first_name
	