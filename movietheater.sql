-- create a table for the customer
CREATE TABLE IF NOT EXISTS customer(
	customer_id serial PRIMARY KEY,
	first_name varchar(25) NOT NULL,
	last_name varchar(25) NOT NULL
);


-- create a table for the tickets
CREATE TABLE tickets(
	ticket_id serial PRIMARY KEY,
	ticket_price integer NOT NULL,
	customer_id integer NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);


-- CREATE a TABLE FOR the movies
CREATE TABLE movie (
	movie_id serial PRIMARY KEY, 
	movie_name varchar NOT NULL,
	movie_description varchar NOT NULL
);

-- Create a table for movie category
CREATE TABLE movie_category (
	movie_id integer NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id),
	customer_id integer NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

-- edit tickets category to add movie foreign key
ALTER TABLE tickets 
ADD movie_id integer NOT NULL,
ADD FOREIGN KEY (movie_id) REFERENCES movie(movie_id);

