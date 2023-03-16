/* Создание базы данных hotels_film_db_samp */
DROP DATABASE if EXISTS hotels_film_db_samp;

CREATE DATABASE hotels_film_db_samp;

/* Создание таблиц*/
CREATE TABLE film_simple(
    film_id SERIAL PRIMARY KEY,
    title varchar(64),
    release_year int
);

CREATE TABLE genre_simple(
    genre_id SERIAL PRIMARY KEY,
    title varchar(32)
);

CREATE TABLE film_genre(
    film_id int REFERENCES film_simple(film_id),
    genre_id int REFERENCES genre_simple(genre_id),

    CONSTRAINT film_genre_pkey PRIMARY KEY (film_id, genre_id)
);