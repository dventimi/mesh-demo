-- -*- sql-product: postgres; -*-

create table entity (
id uuid not null unique default public.uuid_generate_v4());
