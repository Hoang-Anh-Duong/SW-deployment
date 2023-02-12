CREATE DATABASE sw_user
    WITH
    OWNER=postgres
    ENCODING='UTF8';

\c sw_user;

CREATE TABLE IF NOT EXISTS t_user (
    username varchar(50),
    password varchar(200) NOT NULL,
    address varchar(200),
    phone varchar(10),
    email varchar(100),
    avatar varchar(100),
    status int,
    created_date timestamp,
    created_by varchar(50),
    updated_date timestamp,
    updated_by varchar(50),
    PRIMARY KEY(username)
);

CREATE TABLE IF NOT EXISTS t_role (
    name varchar(50) NOT NULL,
    description varchar(200) NOT NULL,
    created_date timestamp,
    created_by varchar(50),
    updated_date timestamp,
    updated_by varchar(50),
    PRIMARY KEY(name)
);

CREATE TABLE IF NOT EXISTS r_user_role (
    username varchar(50) NOT NULL,
    role_name varchar(50) NOT NULL,
    created_date timestamp,
    created_by varchar(50),
    updated_date timestamp,
    updated_by varchar(50),
    PRIMARY KEY(username, role_name)
);

CREATE TABLE IF NOT EXISTS t_token (
    id bigserial,
    username varchar(50) NOT NULL,
    access_token varchar(50) NOT NULL,
    refresh_token varchar(50) NOT NULL,
    created_date timestamp,
    created_by varchar(50),
    updated_date timestamp,
    updated_by varchar(50),
    PRIMARY KEY(id)
);

INSERT INTO t_user(username, password, email, status, created_date, created_by, updated_date, updated_by)
VALUES ('admin', '$2a$10$Fm.ZUXbQEq7ryLxETIoOmuLp29M3yOLDTuDW9K09rByMYYgoMC/Cq', 'admin@gmail.com', 1, now(), 'Developer', now(), 'Developer');

INSERT INTO t_role(name, description, created_date, created_by, updated_date, updated_by)
VALUES ('ADMIN_ROLE', 'Main admin', now(), 'Developer', now(), 'Developer'),
('SUB_ADMIN_ROLE', 'Main admin', now(), 'Developer', now(), 'Developer'),
('CUSTOMER_ROLE', 'Main admin', now(), 'Developer', now(), 'Developer'),
('USER_ROLE', 'Main admin', now(), 'Developer', now(), 'Developer');

INSERT INTO r_user_role(username, role_name, created_date, created_by, updated_date, updated_by)
VALUES ('admin', 'ADMIN_ROLE', now(), 'Developer', now(), 'Developer'),
('admin', 'SUB_ADMIN_ROLE', now(), 'Developer', now(), 'Developer'),
('admin', 'CUSTOMER_ROLE', now(), 'Developer', now(), 'Developer'),
('admin', 'USER_ROLE', now(), 'Developer', now(), 'Developer');
