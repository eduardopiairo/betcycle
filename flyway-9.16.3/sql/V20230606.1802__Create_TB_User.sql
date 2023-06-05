CREATE TABLE "user"
(
    user_id     SERIAL PRIMARY KEY,
    user_name   VARCHAR(50) NOT NULL,
    user_email   VARCHAR(50) NULL,
    user_creation_date TIMESTAMP NULL
);