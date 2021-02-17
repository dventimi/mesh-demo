-- -*- sql-mode: postgres; -*-

create domain email_address as citext check ( value ~ '^[a-zA-Z0-9.!#$%&''*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$' );

create table if not exists person (
primary key (id),
full_name text,
age numeric check (age > 0))
inherits (entity);

create table if not exists email (
primary key (id),
person_id uuid references person (id),
address email_address)
inherits (entity);
