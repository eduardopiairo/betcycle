--liquibase formatted sql

--changeset eduardo:1
CREATE TABLE race
(
    race_id     SERIAL PRIMARY KEY,
    race_name   VARCHAR(50) NOT NULL,
    race_year   INT NULL,
    race_start_date DATE NULL,
    race_end_date DATE NULL
);


