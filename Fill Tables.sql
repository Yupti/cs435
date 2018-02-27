use art_museum;

# artist ('Artist_Name', 'Date_Born', 'Date_Died', 'Country_of_Origin', 'Epoch', 'Main_Style', 'Description')
insert into artist Values ('Jefferson Steelflex', 'January 27, 1888', 'January 1, 1996', 'China', 'Renaissance', 'Chinese painting', 'It is a Chinese painting');
insert into artist Values ('Alvin Yakitori', 'June 2, 1735', 'October 11, 1790', 'United States', 'Rococo', 'Independence', 'A gifted artist that lived through the horrors of the American Revolution.');
insert into artist Values ('Potato Man', 'Unknown', 'Unknown', 'Ireland', 'Early Netherlandish Painting', 'Scribbles', 'A creature of unknown origin. Likes to draw stuff.');
insert into artist Values ('Vic Romano', 'July 18, 1982', '-', 'Japan', 'Realism', 'Brushing', 'A man of great stature, leading many towards their deaths.');

# art_object (`ID_NO`, `Artist`, `Year_Created`, `Title`, `Description`)

INSERT INTO art_object (Artist, Year_Created, Title, Description, item_type) VALUES ('Jefferson Steelflex', 1996, 'Life', 'Pretty self explanatory', 'sculpture');
INSERT INTO sculpture VALUES ('Stone', '6ft 9in', 550, 'Renaissance', last_insert_id());
INSERT INTO art_object (Artist, Year_Created, Title, Description, item_type) VALUES ('Alvin Yakitori', 1776, 'War', 'What is it good for?', 'statue');
INSERT INTO statue VALUES ('Marble', '15ft 11in', 1500, 'Greek', last_insert_id());
INSERT INTO art_object (Artist, Year_Created, Title, Description, item_type) VALUES ('Potato Man', 1256, 'Vegetable', 'Potatoes, yo', 'other');
INSERT INTO other VALUES ('Clay doll', 'Native American', last_insert_id());
INSERT INTO art_object (Artist, Year_Created, Title, Description, item_type) VALUES ('Vic Romano', 1643, 'MXC', 'Right you are, Ken!', 'painting');
INSERT INTO painting VALUES ('Oil', 'Canvas', 'Wild Brushes', last_insert_id());

# borrowed ('Collection_Borrowed', 'Date_Borrowed', 'Date_Returned')
INSERT INTO borrowed VALUES ('Alpha Collection', '1/23/99', '4/11/99');
INSERT INTO borrowed VALUES ('Bravo Collection', '7/11/02', '9/9/02');
INSERT INTO borrowed VALUES ('Charlie Collection', '6/23/00', '4/1/08');
INSERT INTO borrowed VALUES ('Delta Collection', '5/19/78', '11/11/11');

# permanent_collection

# collections ('CName', 'CType', 'Description', 'Address', 'Phone', 'Contact_Person')
INSERT INTO collections VALUES ('War', 'Sculptures', 'What is it good for?', '66 Rock Lane', '909-256-1253', 'Benedict Cumberbatch');
INSERT INTO collections VALUES ('Saber', 'Clay-based', 'EXU-CALIBAAAAA', '145 Cherry Creek', '544-943-4937', 'Bodysnatch Cumberbund');
INSERT INTO collections VALUES ('India', 'Rocks', 'Pretty self-explanatory', '56 Kumquat Street', '123-456-7890', 'Buffalo Custardbath');
INSERT INTO collections VALUES ('Surreal', 'Planal Objects', 'nO lIEK Orang aN vegetal', '1337 Milky Way Road', '111-111-1111', 'Bumblesnuff Crimpysnitch');

# exhibitions ('EName', 'Start_Date', 'End_Date')
INSERT INTO exhibitions VALUES ('Ministry of Silly Walks', '4/11/16', '7/14/21');
INSERT INTO exhibitions VALUES ('Counsel of Strange Sculptures', '6/19/97', '7/19/97');
INSERT INTO exhibitions VALUES ('Society of Secret Pillars', '12/11/12', '3/15/13');
INSERT INTO exhibitions VALUES ('The Order of the Colors', '3/11/96', '4/21/97');

# painting/sculpture/statue/other
#INSERT INTO painting VALUES ('Oil', 'Canvas', 'Wild Brushes', last_insert_id());
#INSERT INTO sculpture VALUES ('Stone', '6ft 9in', 550, 'Renaissance', last_insert_id());
#INSERT INTO other VALUES ('Clay doll', 'Native American', last_insert_id());
#INSERT INTO statue VALUES ('Marble', '15ft 11in', 1500, 'Greek', last_insert_id());






show tables;
SELECT 
    *
FROM
    art_object;