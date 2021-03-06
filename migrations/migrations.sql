BEGIN TRANSACTION;

DROP TABLE IF EXISTS roommates;
DROP TABLE IF EXISTS apartments;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id BIGSERIAL PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  username VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password_digest VARCHAR(255) NOT NULL
);

CREATE TABLE apartments (
  id BIGSERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  latlong VARCHAR(255) NOT NULL,
  rent INTEGER,
  description VARCHAR(255) NOT NULL,
  photo VARCHAR(255) NOT NULL,
  user_id INTEGER REFERENCES users(id)
);

CREATE TABLE roommates (
  id BIGSERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  gender VARCHAR(255) NOT NULL,
  smoker VARCHAR(255) NOT NULL,
  sleep VARCHAR(255) NOT NULL,
  dishes VARCHAR(255) NOT NULL,
  toilet_paper VARCHAR(255) NOT NULL,
  age VARCHAR(255) NOT NULL,
  wallet VARCHAR(255) NOT NULL,
  user_id INTEGER REFERENCES users(id)
);

COMMIT;
