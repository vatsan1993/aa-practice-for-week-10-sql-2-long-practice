-- Find Hermione's cats
-- Your code here
select cats.name
from owners
    join cat_owners on owners.id = cat_owners.owner_id
    join cats on cat_owners.cat_id = cats.id
where
    owners.first_name = 'Hermione';
