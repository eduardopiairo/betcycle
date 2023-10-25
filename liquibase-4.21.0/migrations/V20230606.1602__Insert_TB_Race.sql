--liquibase formatted sql

--changeset eduardo:1
INSERT INTO Race(race_name, race_year, race_start_date, race_end_date) VALUES('Giro d''Italia', 2023, '2023-05-06', '2023-05-28');
INSERT INTO Race(race_name, race_year, race_start_date, race_end_date) VALUES('Tour de France', 2023, '2023-07-01', '2023-07-23');
INSERT INTO Race(race_name, race_year, race_start_date, race_end_date) VALUES('La Vuelta', 2023, '2023-08-26', '2023-09-17');