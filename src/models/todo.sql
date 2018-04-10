create table api.todos (
  id serial primary key,
  done boolean not null default false,
  task text not null,
  due timestamptz
);

create table api.artist (
  id serial primary key,
  name boolean not null default false,
  task text not null,
  due timestamptz
);




insert into api.todos (task) values
  ('finish tutorial 0'), ('pat self on back');