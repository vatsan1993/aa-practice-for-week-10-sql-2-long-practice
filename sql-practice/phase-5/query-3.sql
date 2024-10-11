-- Find the name of the cats who have an owner whose first name begins with an "H"
-- Your code here
SELECT name
from cats
    join cat_owners on cats.id = cat_owners.cat_id
    join owners on owners.id = cat_owners.owner_id
where
    owners.first_name like 'H%';
