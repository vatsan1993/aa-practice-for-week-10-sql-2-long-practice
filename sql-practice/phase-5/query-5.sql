-- Find names of the cats whose owners are both George Beatty and Melynda Abshire, or just George Beatty, or just Melynda Abshire
-- Your code here
SELECT DISTINCT
    name
from cats
    join cat_owners on cats.id = cat_owners.cat_id
    join owners on owners.id = cat_owners.owner_id
where (
        first_name = 'Melynda'
        and last_name = 'Abshire'
        and first_name = 'George'
        and last_name = 'Beatty'
    )
    or first_name = 'Melynda'
    and last_name = 'Abshire'
    or first_name = 'George'
    and last_name = 'Beatty'
