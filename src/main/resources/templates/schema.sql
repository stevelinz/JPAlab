--CREATE DATABASE PHOTO_COLLECTION;


CREATE TABLE COLLECTOR
(
    collector_id int NOT NULL PRIMARY KEY,
    collector_firstname varchar(255),
    collector_lastname varchar(255),
    collector_avatar varchar(255)
);


CREATE TABLE PHOTO
(
    photo_id int NOT NULL PRIMARY KEY,
    photo_collector_id int, --FOREIGN KEY REFERENCES COLLECTOR(collector_id),
    photo_filename varchar(255),
    photo_datestamp varchar(255),
    photo_visible BIT NOT NULL
);

ALTER TABLE PHOTO
    ADD FOREIGN KEY (photo_collector_id) REFERENCES COLLECTOR (collector_id);

----------------------------------------------------------

CREATE TABLE CHEF
(
    chef_id int NOT NULL PRIMARY KEY,
    chef_firstname varchar(255),
    chef_lastname varchar(255),
    chef_avatar varchar(255)
);


CREATE TABLE RECIPE
(
    recipe_id int NOT NULL PRIMARY KEY,
    recipe_chef_id int, -- FOREIGN KEY REFERENCES CHEF(chef_id),
    recipe_title varchar(255),
    recipe_description varchar(255)
);

ALTER TABLE RECIPE
    ADD FOREIGN KEY (recipe_chef_id) REFERENCES CHEF (chef_id);




CREATE TABLE PHOTO2
(
    photo2_id int NOT NULL PRIMARY KEY,
    photo2_recipe_id int, -- FOREIGN KEY REFERENCES RECIPE(recipe_id),
    photo2_filename varchar(255) NOT NULL,
    photo2_caption varchar(255),
    photo2_datestamp varchar(255),
    photo2_visible BIT NOT NULL
    );

ALTER TABLE PHOTO2
    ADD FOREIGN KEY (photo2_recipe_id) REFERENCES RECIPE (recipe_id);
