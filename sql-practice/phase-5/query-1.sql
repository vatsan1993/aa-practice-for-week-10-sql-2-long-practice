-- Find the first owner that has a last name containing the lowercase letter "r"
-- Your code here
SELECT * from owners where last_name like '%r%' limit 1;
