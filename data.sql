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

INSERT INTO courses
    (course)
VALUES
    ('starter'),
    ('main'),
    ('dessert'),
    ('drink');

INSERT INTO dish_types
    (dish_type)
VALUES
    ('fish'),
    ('pizza'),
    ('pasta'),
    ('wine'),
    ('soup'),
    ('ice-cream');

INSERT INTO dishes 
    (dish, course_id, dish_type_id)
VALUES
    ('minestrone', 1, 5),
    ('hawaiian', 2, 2),
    ('pistachio gelato', 3, 6),
    ('grilled salmon', 2, 1),
    ('rioja', 4, 4),
    ('tomato gnocchi', 2, 3),
    ('quattro stagioni', 2, 2),
    ('spaghetti carbonara', 2, 3),
    ('spinach and ricotta ravioli', 1, 3);

SELECT * FROM courses;
SELECT * FROM dish_types;
SELECT * FROM dishes;

-- all the main dishes
SELECT *
FROM dishes
WHERE course_id = 2;

-- all the pasta dishes
SELECT *
FROM dishes
WHERE dish_type_id = 3
