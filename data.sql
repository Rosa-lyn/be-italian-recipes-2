-- your sql code
DROP DATABASE IF EXISTS italian_recipes_2;
CREATE DATABASE italian_recipes_2;

\c italian_recipes_2

-- creating schemas

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
    course_id INT REFERENCES courses(course_id),
    dish_type_id INT REFERENCES dish_types(dish_type_id)
);

CREATE TABLE ingredients (
    ingredient_id  SERIAL PRIMARY KEY,
    ingredient VARCHAR(100)
);

CREATE TABLE recipes (
    recipe_id SERIAL PRIMARY KEY,
    dish_id INT REFERENCES dishes(dish_id),
    ingredient_id INT REFERENCES ingredients(ingredient_id)
);

-- inserting data into schemas

INSERT INTO courses
    (course)
VALUES
    ('starter'),
    ('main'),
    ('dessert');

INSERT INTO dish_types
    (dish_type)
VALUES
    ('fish'),
    ('pizza'),
    ('pasta'),
    ('soup'),
    ('ice-cream');

INSERT INTO dishes 
    (dish, course_id, dish_type_id)
VALUES
    ('tomato soup', 1, 4),
    ('hawaiian', 2, 2),
    ('pistachio gelato', 3, 5),
    ('grilled salmon', 2, 1),
    ('tomato gnocchi', 2, 3),
    ('capricciosa', 2, 2),
    ('spaghetti bolognese', 2, 3),
    ('beef ravioli', 1, 3);

INSERT INTO ingredients
    (ingredient)
VALUES
    ('olive oil'),
    ('tomato sauce'),
    ('ham'),
    ('mushrooms'),
    ('pineapple'),
    ('gnocchi'),
    ('spaghetti'),
    ('ravioli'),
    ('pizza dough'),
    ('beef mince'),
    ('garlic'),
    ('onions'),
    ('herbs'),
    ('cream'),
    ('sugar'),
    ('pistachios'),
    ('mixed veg'),
    ('salmon');

INSERT INTO recipes
    (dish_id, ingredient_id)
VALUES
    (1, 1),
    (1, 2),
    (1, 11),
    (1, 13),
    (1, 14),
    (2, 1),
    (2, 2),
    (2, 3),
    (2, 4),
    (2, 5),
    (2, 9),
    (2, 13),
    (3, 14),
    (3, 15),
    (3, 16),
    (4, 1),
    (4, 17),
    (4, 18),
    (5, 1),
    (5, 2),
    (5, 6),
    (5, 11),
    (5, 12),
    (5, 13),
    (6, 1),
    (6, 2),
    (6, 3),
    (6, 4),
    (6, 12),
    (6, 13),
    (7, 1),
    (7, 2),
    (7, 7),
    (7, 10),
    (7, 11),
    (7, 12),
    (7, 13),
    (8, 1),
    (8, 2),
    (8, 4),
    (8, 8),
    (8, 10),
    (8, 11),
    (8, 12);

-- queries

SELECT * FROM courses;
SELECT * FROM dish_types;
SELECT * FROM dishes;
SELECT * FROM ingredients;
SELECT * FROM recipes;

-- -- all the mains
-- SELECT *
-- FROM dishes
-- WHERE course_id = 2;

-- -- all the pasta dishes
-- SELECT *
-- FROM dishes
-- WHERE dish_type_id = 3;

-- return a recipe by its name and all the ingredients needed to cook it
-- tomato soup recipe
SELECT dish, ingredient FROM recipes
INNER JOIN dishes
ON recipes.dish_id = dishes.dish_id
INNER JOIN ingredients
ON recipes.ingredient_id = ingredients.ingredient_id
WHERE recipes.dish_id = 1;


