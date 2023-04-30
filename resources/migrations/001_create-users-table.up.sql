CREATE TABLE accounts (
    id uuid PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    password VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    role_id INTEGER NOT NULL,
    FOREIGN KEY (role_id) REFERENCES roles(id) ON UPDATE CREATE
)

CREATE TABLE roles (
    id serial PRIMARY KEY,
    name VARCHAR(10) NOT NULL UNIQUE
)