CREATE TABLE lists (
  id serial PRIMARY KEY,
  name text UNIQUE NOT NULL
);

CREATE TABLE todo (
  id serial PRIMARY KEY,
  lists_id integer NOT NULL REFERENCES lists(id),
  name text NOT NULL,
  completed boolean NOT NULL DEFAULT false
);