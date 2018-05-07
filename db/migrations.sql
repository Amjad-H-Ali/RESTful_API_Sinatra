DROP DATABASE IF EXIST pokemon;


CREATE DATABASE pokemon;

\c pokemon





CREATE TABLE pokemons (

	id SERIAL PRIMARY KEY,

	name VARCHAR(255)



);