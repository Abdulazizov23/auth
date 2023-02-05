-- Initialization (just copy and paste)

-- connect to another database 
\c postgres;

-------------------------------------------------------------------------------------------



-- users table
drop table if exists users cascade;
create table users(
    user_id serial not null primary key,
    user_phone varchar(50) not null unique,
    user_full_name varchar(255) not null,
    user_password varchar(255) not null,
    user_role varchar(50) default 'doctor',
    user_image text default 'guest.png',
    user_profession_id serial not null references professions(profession_id) on delete cascade,
    user_created_at timestamp default current_timestamp,
    user_updated_at timestamp default null,
    user_deleted_at timestamp default null
);
