INSERT INTO COLLECTOR(COLLECTOR_ID, COLLECTOR_FIRSTNAME, COLLECTOR_LASTNAME, COLLECTOR_AVATAR) VALUES(1, 'Steve','Linz','steve.jpg');
INSERT INTO COLLECTOR(COLLECTOR_ID, COLLECTOR_FIRSTNAME, COLLECTOR_LASTNAME, COLLECTOR_AVATAR) VALUES(2, 'Jill','Linz','jill.jpg');
INSERT INTO COLLECTOR(COLLECTOR_ID, COLLECTOR_FIRSTNAME, COLLECTOR_LASTNAME, COLLECTOR_AVATAR) VALUES(3, 'John','Doe','john.jpg');

INSERT INTO PHOTO(PHOTO_ID, PHOTO_FILENAME, PHOTO_COLLECTOR_ID, PHOTO_TIMESTAMP, PHOTO_VISIBLE) VALUES(1, 'pic1.jpg',2,CURRENT_TIME, 1);
INSERT INTO PHOTO(PHOTO_ID, PHOTO_FILENAME, PHOTO_COLLECTOR_ID, PHOTO_TIMESTAMP, PHOTO_VISIBLE) VALUES(2, 'pic2.jpg',2,CURRENT_TIME, 1);
INSERT INTO PHOTO(PHOTO_ID, PHOTO_FILENAME, PHOTO_COLLECTOR_ID, PHOTO_TIMESTAMP, PHOTO_VISIBLE) VALUES(3, 'pic3.jpg',1,CURRENT_TIME, 1);
INSERT INTO PHOTO(PHOTO_ID, PHOTO_FILENAME, PHOTO_COLLECTOR_ID, PHOTO_TIMESTAMP, PHOTO_VISIBLE) VALUES(4, 'pic4.jpg',3,CURRENT_TIME, 1);

INSERT INTO CHEF(chef_id, chef_firstname, chef_lastname, chef_avatar) VALUES(1, 'Sam','Cook','sam.jpg');
INSERT INTO CHEF(chef_id, chef_firstname, chef_lastname, chef_avatar) VALUES(2, 'Tom','Wright','tom.jpg');
INSERT INTO CHEF(chef_id, chef_firstname, chef_lastname, chef_avatar) VALUES(3, 'Joe','Fox','joe.jpg');
INSERT INTO CHEF(chef_id, chef_firstname, chef_lastname, chef_avatar) VALUES(4, 'Bill','Hart','bill.jpg');

INSERT INTO RECIPE(recipe_id, recipe_chef_id, recipe_title, recipe_description) VALUES(1, 4,'Broccoli Cheese Patties','It won handily, for both cost and flavor! ');
INSERT INTO RECIPE(recipe_id, recipe_chef_id, recipe_title, recipe_description) VALUES(2, 2,'Breakfast Couscous','My kids enjoy it so much! ');
INSERT INTO RECIPE(recipe_id, recipe_chef_id, recipe_title, recipe_description) VALUES(3, 1,'Chewy Granola Balls','When you want something that is healthy and filling!');
INSERT INTO RECIPE(recipe_id, recipe_chef_id, recipe_title, recipe_description) VALUES(4, 3,'Lemon Herb Chicken','It is a great weeknight entree the entire family will love. ');
INSERT INTO RECIPE(recipe_id, recipe_chef_id, recipe_title, recipe_description) VALUES(5, 2,'Pasta Mama','Can be ready in less than 20 minutes! ');

INSERT INTO PHOTO2(photo2_id, photo2_recipe_id, photo2_filename, photo2_caption, photo2_datestamp, photo2_visible) VALUES(1, 1,'Broccoli.jpg','Veg and cheese!',CURRENT_TIME,1);
INSERT INTO PHOTO2(photo2_id, photo2_recipe_id, photo2_filename, photo2_caption, photo2_datestamp, photo2_visible) VALUES(2, 2,'Couscous.jpg','wake up with',CURRENT_TIME,1);
INSERT INTO PHOTO2(photo2_id, photo2_recipe_id, photo2_filename, photo2_caption, photo2_datestamp, photo2_visible) VALUES(3, 3,'Granola.jpg','travel food',CURRENT_TIME,1);
INSERT INTO PHOTO2(photo2_id, photo2_recipe_id, photo2_filename, photo2_caption, photo2_datestamp, photo2_visible) VALUES(4, 4,'Chicken.jpg','dinner!',CURRENT_TIME,1);
INSERT INTO PHOTO2(photo2_id, photo2_recipe_id, photo2_filename, photo2_caption, photo2_datestamp, photo2_visible) VALUES(5, 5,'Pasta.jpg','easy to make',CURRENT_TIME,1);
INSERT INTO PHOTO2(photo2_id, photo2_recipe_id, photo2_filename, photo2_caption, photo2_datestamp, photo2_visible) VALUES(6, 5,'Pastabowl.jpg','pasta in a bowl',CURRENT_TIME,1);

select * from photo;
select * from collector;
select * from chef;
select * from recipe;
select * from photo2;


SELECT COLLECTOR.COLLECTOR_AVATAR, COLLECTOR.COLLECTOR_FIRSTNAME, COLLECTOR.COLLECTOR_LASTNAME,
       PHOTO.PHOTO_ID, PHOTO.PHOTO_FILENAME, PHOTO.PHOTO_COLLECTOR_ID, PHOTO.PHOTO_TIMESTAMP
from COLLECTOR
         left join PHOTO
                   on collector.collector_id = photo.photo_collector_id
where photo.photo_collector_id = 2;