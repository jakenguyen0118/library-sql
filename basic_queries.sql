-- BASIC QUERIES
-- Unless otherwise stated, all queries should return all columns

-- Get all information about all authors
select * from authors

-- Get just the name and birth year of all authors
select name, birth_year from authors

-- Get all authors born in the 20th centruy or later
select * from authors where birth_year >= 1900;

-- Get all authors born in the USA
select * from authors where nationality = 'United States of America';

-- Get all books published on 1985
select * from books where publication_date = 1985;

-- Get all books published before 1989
select * from books where publication_date < 1989;

-- Get just the title of all books.
select title from books;

-- Get just the year that 'A Dance with Dragons' was published
select publication_date from books where title = 'A Dance with Dragons';

  -- Cry when you realize how long it's been
  rip game of thrones

-- Get all books which have `the` somewhere in their title (hint, look up LIKE/ILIKE)
select * from books where title ilike '%the%';

-- Add yourself as an author
INSERT INTO authors(name, nationality, birth_year) VALUES ('Jake Nguyen', 'United States of America', 1994);

-- Add two books that you'd like to write (you can hard-code your id as the author id)
INSERT INTO books(title, publication_date, author_id) VALUES ('Book One', 2020, 9);
INSERT INTO books(title, publication_date, author_id) VALUES ('Book Two', 2020, 9);

-- Update one of your books to have a new title
UPDATE books SET title = 'Book Three' WHERE title = 'Book Two';

-- Delete your books
DELETE FROM books where author_id = 9;

-- Delete your author entry
DELETE FROM authors where name = 'Jake Nguyen';
