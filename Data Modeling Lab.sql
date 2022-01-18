CREATE TABLE users(
    user_id SERIAL PRIMARY KEY,
    user_first_name VARCHAR(40) NOT NULL,
    user_last_name VARCHAR(50) NOT NULL,
    user_password VARCHAR(500) NOT NULL,
    user_email VARCHAR(60) NOT NULL
);

CREATE TABLE user_occasions(
    occasion_id SERIAL PRIMARY KEY,
    ocassion_name VARCHAR(50) NOT NULL,
    occasion_user_id INTEGER REFERENCES users(user_id) NOT NULL,
    occasion_recipes VARCHAR(200),
    ocasion_date DATE NOT NULL
);

CREATE TABLE recipes(
    recipe_id SERIAL PRIMARY KEY,
    recipe_name VARCHAR(50) NOT NULL,
    recipe_user_id INTEGER REFERENCES users(user_id) NOT NULL,
    recipe_is_private BOOLEAN DEFAULT TRUE,
    recipe_ingredients TEXT NOT NULL,
    recipe_instructions TEXT NOT NULL
);

CREATE TABLE user_grocery_list(
    grocery_list_id SERIAL PRIMARY KEY,
    grocery_list_name VARCHAR(50) NOT NULL ,
    list_user_id INTEGER REFERENCES users(user_id) NOT NULL,
    list_items TEXT NOT NULL
);