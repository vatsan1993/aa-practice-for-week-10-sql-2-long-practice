-- Find the first and last names of the owner whose cats are born after the year 2015
-- Your code here
select first_name, last_name
from cats
    join cat_owners on cats.id = cat_owners.cat_id
    join owners on owners.id = cat_owners.owner_id
where
    birth_year > 2015;
