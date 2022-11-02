CREATE USER me;
CREATE DATABASE dungeon IF NOT EXISTS;
GRANT ALL PRIVILEGES ON DATABASE dungeon TO me;
\c dungeon
CREATE TABLE gamelevel IF NOT EXISTS (
  ID SERIAL PRIMARY KEY,
  name VARCHAR(30),
  levelstart INT
);

CREATE TABLE obstacle IF NOT EXISTS (
  ID SERIAL PRIMARY KEY,
  weakness INT,
  room INT,
  name VARCHAR(30)
);

CREATE TABLE item IF NOT EXISTS (
  ID SERIAL PRIMARY KEY,
  possessed INT,
  room INT,
  name VARCHAR(30)
);

CREATE TABLE player IF NOT EXISTS (
  ID SERIAL PRIMARY KEY,
  user VARCHAR(255),
  room INT,
  maxitems INT,
  numitems INT,
  name VARCHAR(255)
)

CREATE TABLE room IF NOT EXISTS (
  ID SERIAL PRIMARY KEY,
  above INT,
  below INT,
  left INT,
  right INT
)

