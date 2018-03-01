Create database ART_MUSEUM;
use ART_MUSEUM;

CREATE TABLE IF NOT EXISTS Artist (
    Artist_Name VARCHAR(45) NOT NULL,
    Date_Born VARCHAR(45) NOT NULL,
    Date_Died VARCHAR(45) NOT NULL,
    Country_of_Origin VARCHAR(45) NOT NULL,
    Epoch VARCHAR(45) NOT NULL,
    Main_Style VARCHAR(45) NOT NULL,
    Description VARCHAR(150) NOT NULL,
    PRIMARY KEY (Artist_Name),
    UNIQUE (Artist_Name)
);

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
    #FOREIGN KEY (Artist)
        #REFERENCES Artist (Artist_Name)
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
    Data_Acquired VARCHAR(45) NOT NULL,
    CStatus ENUM('on display', 'on loan', 'stored'),
    CEpoch VARCHAR(45) NOT NULL,
    Cost VARCHAR(45) NOT NULL,
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
    CName VARCHAR(45) NOT NULL,
    CType VARCHAR(45) NOT NULL,
    Description VARCHAR(150) NOT NULL,
    Address VARCHAR(90) NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    Contact_Person VARCHAR(45) NOT NULL,
    PRIMARY KEY (CName),
    UNIQUE (CName)
);



