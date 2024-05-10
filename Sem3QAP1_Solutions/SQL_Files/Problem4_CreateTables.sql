-- creating 2 tables and limiting characters allowed with 'varchar'

-- table for game publishers with primary key being Pub_id, along with name of the 
-- publisher and country the publisher is from
create table publishers (
	Pub_id int primary key,
	pub_name varchar (100),
	country varchar (100)
);

-- table for games with primary key being Game_id along with the game title
-- genre and the Pub_id included as a foreign key
create table games (
	Game_id int primary key,
	title varchar (75),
	genre varchar (50),
	Pub_id int,
	foreign key (Pub_id)
	references publishers (Pub_id)
);