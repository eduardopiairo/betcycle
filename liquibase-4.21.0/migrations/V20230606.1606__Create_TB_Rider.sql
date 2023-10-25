--liquibase formatted sql

--changeset eduardo:1
CREATE TABLE rider
(
    rider_id     SERIAL PRIMARY KEY,
    rider_name   VARCHAR(50) NOT NULL,
    rider_country   VARCHAR(50) NULL,
    rider_birth_date DATE NULL
);
