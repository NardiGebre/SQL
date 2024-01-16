Create Table authors(
	author_id INT Primary KEY,
	first_name VARCHAR(50), 
	last_name VARCHAR(50) 
);
	
	CREATE TABLE BOOKS(
		book_id INT Primary Key,
		title VARCHAR(100), 
		authors VARCHAR(100),
		publication_year INT,
		author_id INT, 
		FOREIGN KEY (author_id) REFERENCES authors(author_id)		
	);