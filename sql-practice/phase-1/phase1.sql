drop table if EXISTS cat_owners;

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
