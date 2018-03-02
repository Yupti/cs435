Create database ART_MUSEUM;
use ART_MUSEUM;

CREATE TABLE IF NOT EXISTS art_object (
    ID_NO INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Artist VARCHAR(45),
    Year_Created SMALLINT,
    Title VARCHAR(50) NOT NULL,
    Description VARCHAR(150) NOT NULL,
    item_type ENUM('painting', 'sculpture', 'statue', 'other') NOT NULL,
    Origin VARCHAR(45) NOT NULL,
    Epoch VARCHAR(45) NOT NULL,
    PRIMARY KEY (ID_NO)
);

CREATE TABLE IF NOT EXISTS Artist (
    Art_ID INT UNSIGNED NOT NULL,
    Artist_Name VARCHAR(45) NOT NULL,
    Date_Born VARCHAR(45) NOT NULL,
    Date_Died VARCHAR(45) NOT NULL,
    Country_of_Origin VARCHAR(45) NOT NULL,
    Epoch VARCHAR(45) NOT NULL,
    Main_Style VARCHAR(45) NOT NULL,
    Description VARCHAR(150) NOT NULL,
    PRIMARY KEY (Artist_Name),
    FOREIGN KEY (Art_ID)
        REFERENCES art_object (ID_NO),
    UNIQUE (Artist_Name)
);

CREATE TABLE if not exists painting (
    Paint_type VARCHAR(45) NOT NULL,
    Drawn_on VARCHAR(45) NOT NULL,
    Style VARCHAR(45) NOT NULL,
    Art_ID INT UNSIGNED NOT NULL,
    FOREIGN KEY (Art_ID)
        REFERENCES art_object (ID_NO)
);

CREATE TABLE if not exists sculpture (
    Material VARCHAR(45) NOT NULL,
    Height VARCHAR(45) NOT NULL,
    Weight INT NOT NULL,
    Style VARCHAR(45) NOT NULL,
    Art_ID INT UNSIGNED NOT NULL,
    FOREIGN KEY (Art_ID)
        REFERENCES art_object (ID_NO)
);

CREATE TABLE IF NOT EXISTS statue (
    Material VARCHAR(45) NOT NULL,
    Height VARCHAR(45) NOT NULL,
    Weight INT NOT NULL,
    Style VARCHAR(45) NOT NULL,
    Art_ID INT UNSIGNED NOT NULL,
    FOREIGN KEY (Art_ID)
        REFERENCES art_object (ID_NO)
);

CREATE TABLE IF NOT EXISTS other (
    Art_Type VARCHAR(45) NOT NULL,
    Style VARCHAR(45) NOT NULL,
    ART_ID INT UNSIGNED NOT NULL,
    FOREIGN KEY (ART_ID)
		REFERENCES art_object (ID_NO)
);

CREATE TABLE IF NOT EXISTS Permanent_Collection (
    Art_ID INT UNSIGNED NOT NULL,
    Date_Acquired VARCHAR(45) NOT NULL,
    CStatus ENUM('on display', 'on loan', 'stored'),
    CEpoch VARCHAR(45) NOT NULL,
    Cost INT NOT NULL,
    FOREIGN KEY (Art_ID)
        REFERENCES art_object (ID_NO)
);

CREATE TABLE IF NOT EXISTS Borrowed (
    Art_ID INT UNSIGNED NOT NULL,
    Collection_Borrowed VARCHAR(45) NOT NULL,
    Date_Borrowed VARCHAR(45) NOT NULL,
    Date_Returned VARCHAR(45) NOT NULL,
    FOREIGN KEY (Art_ID)
        REFERENCES art_object (ID_NO)
);

CREATE TABLE IF NOT EXISTS Exhibitions (
    Art_ID INT UNSIGNED NOT NULL,
    EName VARCHAR(45) NOT NULL,
    Start_Date VARCHAR(45) NOT NULL,
    End_Date VARCHAR(45) NOT NULL,
    FOREIGN KEY (Art_ID)
        REFERENCES art_object (ID_NO)
);

CREATE TABLE IF NOT EXISTS Collections (
	Art_ID INT UNSIGNED NOT NULL,
    CName VARCHAR(45) NOT NULL,
    CType VARCHAR(45) NOT NULL,
    Description VARCHAR(150) NOT NULL,
    Address VARCHAR(90) NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    Contact_Person VARCHAR(45) NOT NULL,
    PRIMARY KEY (CName),
    FOREIGN KEY (ART_ID)
		REFERENCES art_object (ID_NO),
    UNIQUE (CName)
);

# inserts to populate tables

INSERT INTO art_object (Artist, Year_Created, Title, Description, item_type, Origin, Epoch) VALUES ('Jefferson Steelflex', 1996, 'Life', 'Pretty self explanatory', 'sculpture', 'American', 'Renaissance');
set @ID := last_insert_id();
INSERT INTO artist VALUES (@ID, 'Jefferson Steelflex', '1888-01-27', '1996-01-01', 'China', 'Renaissance', 'Chinese painting', 'The scion of the human race, very patriotic.');
INSERT INTO sculpture VALUES ('Stone', '6ft 9in', 550, 'Renaissance', @ID);
INSERT INTO borrowed VALUES (@ID, 'Alpha Collection', '1999-01-23', '2554-04-11');  
INSERT INTO exhibitions VALUES (@ID, 'Ministry of Silly Walks', '2016-04-11', '2021-07-14');

INSERT INTO art_object (Artist, Year_Created, Title, Description, item_type, Origin, Epoch) VALUES ('Alvin Yakitori', 1776, 'War', 'What is it good for?', 'statue', 'Japanese', 'Ancient');
set @ID := last_insert_id();
INSERT INTO artist VALUES (@ID, 'Alvin Yakitori', '1735-06-02', '1790-10-11', 'United States', 'Rococo', 'Independence', 'A gifted artist that lived through the horrors of the American Revolution.');
INSERT INTO statue VALUES ('Marble', '15ft 11in', 1500, 'Greek', @ID);
INSERT INTO permanent_collection values (@ID, '2002-05-23', 'on display', 'Ancient', 23000);
INSERT INTO exhibitions VALUES (@ID, 'Counsel of Strange Sculptures', '1997-06-19', '1997-07-19');
INSERT INTO collections VALUES (@ID, 'War', 'Sculptures', 'What is it good for?', '66 Rock Lane', '909-256-1253', 'Benedict Cumberbatch');

INSERT INTO art_object (Artist, Year_Created, Title, Description, item_type, Origin, Epoch) VALUES ('Potato Man', 1256, 'Vegetable', 'Potatoes, yo', 'other', 'European', 'Medieval');
set @ID := last_insert_id();
INSERT INTO artist VALUES (@ID, 'Potato Man', '1980-07-23', '0000-00-00', 'Ireland', 'Early Netherlandish Painting', 'Scribbles', 'A creature of unknown origin. Likes to draw stuff.');
INSERT INTO other VALUES ('Clay doll', 'Native American', @ID);
INSERT INTO borrowed VALUES (@ID, 'Charlie Collection', '2000-06-23', '2079-04-01');
INSERT INTO exhibitions VALUES (@ID, 'Society of Secret Pillars', '2012-12-11', '2013-03-15');
INSERT INTO collections VALUES (@ID, 'Saber', 'Clay-based', 'EXU-CALIBAAAAA', '145 Cherry Creek', '544-943-4937', 'Bodysnatch Cumberbund');

INSERT INTO art_object (Artist, Year_Created, Title, Description, item_type, Origin, Epoch) VALUES ('Vic Romano', 1643, 'MXC', 'Right you are, Ken!', 'painting', 'Italian', 'Renaissance');
set @ID := last_insert_id();
INSERT INTO artist VALUES (@ID, 'Vic Romano', '1982-07-18', '0000-00-00', 'Japan', 'Realism', 'Brushing', 'A man of great stature, leading many towards their deaths.');
INSERT INTO painting VALUES ('Oil', 'Canvas', 'Wild Brushes', @ID);
INSERT INTO permanent_collection Values (@ID, '2000-02-09', 'stored', 'Renaissance', 45000);
INSERT INTO exhibitions VALUES (@ID, 'The Order of the Colors', '1996-03-11', '1997-04-21');
INSERT INTO collections VALUES (@ID, 'India', 'Rocks', 'Pretty self-explanatory', '56 Kumquat Street', '123-456-7890', 'Buffalo Custardbath');

INSERT INTO art_object (Artist, Year_Created, Title, Description, item_type, Origin, Epoch) VALUES ('Alvin Yakitori', 1790, 'Stuff', 'I am bored', 'painting', 'Japanese', 'Ancient');
set @ID := last_insert_id();
INSERT INTO painting VALUES ('Watercolor', 'Wood', 'Gentle Strokes', @ID);
INSERT INTO borrowed VALUES (@ID, 'Bravo Collection', '1994-06-16', '2000-12-14');
INSERT INTO exhibitions VALUES (@ID, 'Ministry of Silly Walks', '2002-10-13', '2003-01-26');
INSERT INTO collections VALUES (@ID, 'Surreal', 'Planal Objects', 'nO lIEK Orang aN vegetal', '1337 Milky Way Road', '111-111-1111', 'Bumblesnuff Crimpysnitch');

