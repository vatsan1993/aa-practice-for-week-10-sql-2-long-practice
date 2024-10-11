PRAGMA foreign_keys = on;
-- Turns foreign key support in SQLite3 on
-- Your code here
drop table if EXISTS cats_owners;

drop table if EXISTS cats;

drop table if EXISTS owners;

drop table if EXISTS toys;

create table cats (
    id INTEGER primary key AUTOINCREMENT,
    name varchar(50),
    birth_year INTEGER(4)
);

create table owners (
    id INTEGER primary key AUTOINCREMENT,
    first_name varchar(50),
    last_name varchar(50)
);

create table cat_owners (
    owner_id INTEGER,
    cat_id INTEGER,
    constraint owner_fk FOREIGN KEY (owner_id) REFERENCES owners (id) on delete cascade,
    constraint cat_fk FOREIGN KEY (cat_id) REFERENCES cats (id) on delete cascade
);

create table toys (
    id INTEGER primary key AUTOINCREMENT,
    name varchar(50),
    cat_id INTEGER,
    constraint toy_fk FOREIGN KEY (cat_id) REFERENCES cats (id) on delete cascade
);

INSERT INTO
    owners (first_name, last_name)
VALUES ('Nathan', 'Shanahan'),
    ('Joycelyn', 'Cummerata'),
    ('Weston', 'Jones'),
    ('Melynda', 'Abshire'),
    ('George', 'Beatty'),
    ('Jonathan', 'Arbuckle'),
    ('Hermione', 'Granger');

INSERT INTO
    cats (name, birth_year)
VALUES ('Smudge', 2014),
    ('Molly', 2015),
    ('Lucky', 2016),
    ('Bella', 2020),
    ('Tiger', 2012),
    ('Oscar', 2010),
    ('Garfield', 2009),
    ('Crookshanks', 2017);

INSERT INTO
    cat_owners (cat_id, owner_id)
VALUES (1, 1),
    (1, 2),
    (2, 3),
    (3, 3),
    (4, 4),
    (5, 4),
    (5, 5),
    (7, 6),
    (8, 7);

INSERT INTO
    toys (cat_id, name)
VALUES (1, 'Catnip Mouse'),
    (2, 'Feather Wand'),
    (2, 'Scratcher'),
    (2, 'Laser Pointer'),
    (3, 'Chew Toy'),
    (4, 'Tunnel'),
    (4, 'Flopping Fish'),
    (7, 'Cheetos'),
    (8, 'Crinkle Ball'),
    (8, 'Yarn');
