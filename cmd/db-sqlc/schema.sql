CREATE TABLE IF NOT EXISTS authors (
  id   INTEGER PRIMARY KEY,
  name TEXT      UNIQUE NOT NULL,
  bio  TEXT
);
