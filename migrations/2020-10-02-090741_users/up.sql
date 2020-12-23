CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email VARCHAR NOT NULL UNIQUE,
  hash VARCHAR NOT NULL,
  timescale VARCHAR NOT NULL DEFAULT 'h',
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW()
);
SELECT diesel_manage_updated_at('users');
