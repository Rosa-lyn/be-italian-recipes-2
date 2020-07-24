-- your sql code
DROP DATABASE IF EXISTS italian_recipes_2;
CREATE DATABASE italian_recipes_2;

\c italian_recipes_2

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course VARCHAR(100)
);

CREATE TABLE dish_types (
    dish_type_id SERIAL PRIMARY KEY,
    dish_type VARCHAR(100)
);

CREATE TABLE dishes (
    dish_id SERIAL PRIMARY KEY,
    dish VARCHAR(100),
    course_id INT,
        FOREIGN KEY (course_id)
        REFERENCES courses(course_id),
    dish_type_id INT,
        FOREIGN KEY (dish_type_id)
        REFERENCES dish_types(dish_type_id)
);

\dt
SELECT * FROM courses;
SELECT * FROM dish_types;
SELECT * FROM dishes;

