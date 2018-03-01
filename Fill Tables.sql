use art_museum;

# artist ('Artist_Name', 'Date_Born', 'Date_Died', 'Country_of_Origin', 'Epoch', 'Main_Style', 'Description')
INSERT INTO artist VALUES ('Jefferson Steelflex', '1888-01-27', '1996-01-01', 'China', 'Renaissance', 'Chinese painting', 'The scion of the human race, very patriotic.');
INSERT INTO artist VALUES ('Alvin Yakitori', '1735-06-02', '1790-10-11', 'United States', 'Rococo', 'Independence', 'A gifted artist that lived through the horrors of the American Revolution.');
INSERT INTO artist VALUES ('Potato Man', '1980-07-23', '0000-00-00', 'Ireland', 'Early Netherlandish Painting', 'Scribbles', 'A creature of unknown origin. Likes to draw stuff.');
INSERT INTO artist VALUES ('Vic Romano', '1982-07-18', '0000-00-00', 'Japan', 'Realism', 'Brushing', 'A man of great stature, leading many towards their deaths.');
INSERT INTO artist VALUES ('Edward Blankenship', '1920-09-24', '1965-01-46', 'New Zealand', 'Cloth painting','Splatter', 'Lived with sheep, drew on them.');
INSERT INTO artist VALUES ('Agent Romanow', '1540-03-29', '1600-11-20', 'Russia', 'Baroque', 'Scribbles', 'Artist by day, spy by night.');

# art_object (`ID_NO`, `Artist`, `Year_Created`, `Title`, `Description`, 'item_type', 'Origin', 'Epoch')
INSERT INTO art_object (Artist, Year_Created, Title, Description, item_type, Origin, Epoch) VALUES ('Jefferson Steelflex', 1996, 'Life', 'Pretty self explanatory', 'sculpture', 'American', 'Renaissance');
set @ID := last_insert_id();
INSERT INTO sculpture VALUES ('Stone', '6ft 9in', 550, 'Renaissance', @ID);
INSERT INTO borrowed VALUES (@ID, 'Alpha Collection', '1999-01-23', '1999-04-11');  
INSERT INTO exhibitions VALUES (@ID, 'Ministry of Silly Walks', '2016-04-11', '2021-07-14');

INSERT INTO art_object (Artist, Year_Created, Title, Description, item_type, Origin, Epoch) VALUES ('Alvin Yakitori', 1776, 'War', 'What is it good for?', 'statue', 'Japanese', 'Ancient');
set @ID := last_insert_id();
INSERT INTO statue VALUES ('Marble', '15ft 11in', 1500, 'Greek', @ID);
INSERT INTO permanent_collection values (@ID, '2002-05-23', 'on display', 'Ancient', '$23,000');
INSERT INTO exhibitions VALUES (@ID, 'Counsel of Strange Sculptures', '1997-06-19', '1997-07-19');

INSERT INTO art_object (Artist, Year_Created, Title, Description, item_type, Origin, Epoch) VALUES ('Potato Man', 1256, 'Vegetable', 'Potatoes, yo', 'other', 'European', 'Medieval');
set @ID := last_insert_id();
INSERT INTO other VALUES ('Clay doll', 'Native American', @ID);
INSERT INTO borrowed VALUES (@ID, 'Charlie Collection', '2000-06-23', '2008-04-01');
INSERT INTO exhibitions VALUES (@ID, 'Society of Secret Pillars', '2012-12-11', '2013-03-15');

INSERT INTO art_object (Artist, Year_Created, Title, Description, item_type, Origin, Epoch) VALUES ('Vic Romano', 1643, 'MXC', 'Right you are, Ken!', 'painting', 'Italian', 'Renaissance');
set @ID := last_insert_id();
INSERT INTO painting VALUES ('Oil', 'Canvas', 'Wild Brushes', @ID);
INSERT INTO permanent_collection Values (@ID, '2000-02-09', 'stored', 'Renaissance', '$45,000');
INSERT INTO exhibitions VALUES (@ID, 'The Order of the Colors', '1996-03-11', '1997-04-21');

INSERT INTO art_object (Artist, Year_Created, Title, Description, item_type, Origin, Epoch) VALUES ('Alvin Yakitori', 1776, 'War', 'What is it good for?', 'statue', 'Japanese', 'Ancient');
set @ID := last_insert_id();
INSERT INTO painting VALUES ('Watercolor', 'Wood', 'Gentle Strokes', @ID);
INSERT INTO borrowed VALUES (@ID, 'Bravo Collection', '1994-06-16', '2000-12-14');
INSERT INTO exhibtions VALUES (@ID, 'Ministry of Silly Walks', '2002-10-13', '2003-01-26');
# borrowed ('Art_ID', 'Collection_Borrowed', 'Date_Borrowed', 'Date_Returned')
#INSERT INTO borrowed VALUES ('Alpha Collection', '1/23/99', '4/11/99');
#INSERT INTO borrowed VALUES ('Bravo Collection', '7/11/02', '9/9/02');
#INSERT INTO borrowed VALUES ('Charlie Collection', '6/23/00', '4/1/08');
#INSERT INTO borrowed VALUES ('Delta Collection', '5/19/78', '11/11/11');

# permanent_collection ('Art_ID', 'Date_Acquired', 'Cstatus', 'CEpoch', 'Cost')
#INSERT INTO permanent_collection values (last_insert_id(), '5/23/02', 'on display', 'Ancient', '$23,000');
#INSERT INTO permanent_collection Values (last_insert_id(), '2/29/00', 'stored', 'Renaissance', '$45,000');

# collections ('CName', 'CType', 'Description', 'Address', 'Phone', 'Contact_Person')
INSERT INTO collections VALUES ('War', 'Sculptures', 'What is it good for?', '66 Rock Lane', '909-256-1253', 'Benedict Cumberbatch');
INSERT INTO collections VALUES ('Saber', 'Clay-based', 'EXU-CALIBAAAAA', '145 Cherry Creek', '544-943-4937', 'Bodysnatch Cumberbund');
INSERT INTO collections VALUES ('India', 'Rocks', 'Pretty self-explanatory', '56 Kumquat Street', '123-456-7890', 'Buffalo Custardbath');
INSERT INTO collections VALUES ('Surreal', 'Planal Objects', 'nO lIEK Orang aN vegetal', '1337 Milky Way Road', '111-111-1111', 'Bumblesnuff Crimpysnitch');

# exhibitions ('Art_ID', 'EName', 'Start_Date', 'End_Date')
#INSERT INTO exhibitions VALUES (last_insert_id(), 'Ministry of Silly Walks', '4/11/16', '7/14/21');
#INSERT INTO exhibitions VALUES (last_insert_id(), 'Counsel of Strange Sculptures', '6/19/97', '7/19/97');
#INSERT INTO exhibitions VALUES (last_insert_id(), 'Society of Secret Pillars', '12/11/12', '3/15/13');
#INSERT INTO exhibitions VALUES (last_insert_id(), 'The Order of the Colors', '3/11/96', '4/21/97');

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