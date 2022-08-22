drop table sessions;
drop table users;
drop table todos;
 
create table users (
  id         serial primary key,
  name       varchar(255),
  email      varchar(255) not null unique,
  password   varchar(255) not null,
  created_at timestamp not null   
);
 
create table sessions (
  id         serial primary key,
  email      varchar(255),
  user_id    integer references users(id),
  created_at timestamp not null   
);
 
create table todos (
  id         serial primary key,
  content    text,
  user_id    integer references users(id),
  created_at timestamp not null       
);
