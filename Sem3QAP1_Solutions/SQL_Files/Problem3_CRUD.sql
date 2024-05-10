-- creating 2 new addressess, one for the family's initial address and the 
-- second address for when they "move"
insert into address (address_id, address, address2, district, city_id, postal_code, phone, last_update)
	values  (606,'123 Main street',null,'Alberta',300,'a1a1a1','1112221234','2024-01-01 09:00:00'),
			(607,'123 Fake street',null,'Alberta',300,'b1b1b1','1112225678','2024-02-02 10:00:00');
	

-- Adding new customers with a store id, first name, family name (last name)
-- and an address id to the customer table
insert into customer (store_id, first_name, last_name, address_id)
	values  (1, 'Rod', 'ABC', 606),
			(1, 'Shanna', 'ABC', 606),
			(1, 'Lilly', 'ABC',606);

-- ubdating the ABC family's address to move to address id 607
update customer 
	set address_id = 607
	where last_name = 'ABC';

-- deleting the old address with id 606, as it is not in use by any customers
delete from address 
	where address_id = 606;

select first_name, last_name, address_id from customer where last_name like 'ABC'

