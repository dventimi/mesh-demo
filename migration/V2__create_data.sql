-- -*- sql-mode: postgres; -*-

insert into person (full_name, age) values ('John Doe', 25);

insert into person (full_name, age) values ('Jane Doe', 22);

insert into email (person_id, address) select id, 'john_doe@foo.com' from person where full_name = 'John Doe';

insert into email (person_id, address) select id, 'jane_doe@foo.com' from person where full_name = 'Jane Doe';
