-- Find All the Toys for Hermione's cats
-- Your code here

select toys.name
from owners
    join cat_owners on owners.id = cat_owners.owner_id
    join toys on toys.cat_id = cat_owners.cat_id
where
    owners.first_name = 'Hermione'
