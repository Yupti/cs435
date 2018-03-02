use art_museum;

# 1 Retrieve a name of all ART_OBJECTs' names of a particular type.
SELECT Title FROM art_object WHERE item_type = 'painting';
    
# 2 Retrieve a list of all ART_OBJECTs' names from a particular Epoch, and type.
SELECT Title FROM art_object WHERE item_type = 'painting' AND Epoch = 'Renaissance';

# 3 Retrieve a list of all ART_OBJECTs' names from a particular artist.
SELECT Title FROM art_object WHERE Artist = 'Jefferson Steelflex';

# 4 Display a list of all ART_OBJECTs that are part of the PERMANENT_COLLECTION, and show their name, description, type, epoch, and artist.
SELECT Title, Description, item_type, Epoch, Artist FROM (SELECT * FROM art_object, permanent_collection WHERE permanent_collection.Art_ID = art_object.ID_NO) AS T;

# 5 Display a list of all ART_OBJECTs that are BORROWED, and show their name, description, type, epoch, and artist.
SELECT Title, Description, item_type, Epoch, Artist FROM (SELECT * FROM art_object, borrowed WHERE borrowed.Art_ID = art_object.ID_NO) AS T;

# 6 Display a list of all ongoing exhibitions.
SELECT * FROM exhibitions WHERE curdate() between Start_Date AND End_Date;

# 7 Display a list of ART_OBJECTs that are on display on a particular exhibition.
SELECT Title, Description, Artist, Year_Created, item_type, Origin, Epoch FROM art_object, exhibitions, permanent_collection WHERE art_object.ID_NO = exhibitions.Art_ID AND exhibitions.EName = 'Ministry of Silly Walks' AND permanent_collection.CStatus = 'on display';

# 8 Display a list of ART_OBJECTs that are on display at a particular date.
SELECT Title, Description, Artist, Year_Created, item_type, Origin, Epoch FROM art_object, exhibitions, permanent_collection WHERE art_object.ID_NO = exhibitions.Art_ID AND exhibitions.EName = 'Ministry of Silly Walks' AND permanent_collection.CStatus = 'on display' AND curdate() between exhibitions.Start_Date AND exhibitions.End_Date;

# 9(1) Displays art_object title, Epoch, and Cost from permanent collection and is on display
SELECT Title, CEpoch, Cost FROM permanent_collection, art_object WHERE permanent_collection.Cost < 25000 AND permanent_collection.CStatus = 'on display' AND art_object.ID_NO = permanent_collection.Art_ID;

# 10(2) Displays artist name and country of origin of currently alive artist
SELECT Artist_Name, Country_of_Origin FROM artist WHERE artist.Date_Died = '0000-00-00';

# 11(3) Displays Collection Name and Type given a particular Contact Person
SELECT CName, CType FROM collections WHERE collections.Contact_Person = 'Benedict Cumberbatch';

# 12(4) Displays Artist Information based on their work in a specific collection
SELECT Artist_Name, Epoch, Main_Style, Description, Collection_Borrowed FROM borrowed, artist WHERE borrowed.Art_ID = 3 AND artist.Art_ID = 3;

# 13(5) Displays Artist Info on a work based on Origin
SELECT Artist, Title, Description FROM art_object WHERE Origin = 'Japanese';

# 14(6) Displays Statue Information based on a specific material
SELECT Title, Description, Material, Style FROM art_object, statue WHERE art_object.item_type = 'statue' AND statue.Material = 'Marble';

# 15(7) Displays Collection Information based on name
SELECT * FROM collections WHERE collections.CName = 'War';

# 16(8) Selects Artist Info/Work if the object is still being borrowed
SELECT Artist, Title, Collection_Borrowed FROM art_object, borrowed WHERE curdate() BETWEEN borrowed.Date_Borrowed AND borrowed.Date_Returned AND art_object.ID_NO = borrowed.Art_ID;

# 17(9) Displays Artist Info if artist already dead
SELECT * FROM artist WHERE curdate() > artist.Date_Died AND artist.Date_Died != '0000-00-00';

# 18(10) Displays Art_object info for objects created after a specific year
SELECT * FROM art_object WHERE Year_Created > 1700;