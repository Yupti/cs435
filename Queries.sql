use art_museum;

# 1
#SELECT Title FROM art_object WHERE item_type = 'painting';
    
# 2
#SELECT Title FROM art_object WHERE item_type = 'painting' AND Epoch = 'Renaissance';

# 3
#SELECT Title FROM art_object WHERE Artist = 'Jefferson Steelflex';

# 4 
#SELECT Title, Description, item_type, Epoch, Artist FROM (SELECT * FROM art_object, permanent_collection WHERE permanent_collection.Art_ID = art_object.ID_NO) AS T;

# 5
#SELECT Title, Description, item_type, Epoch, Artist FROM (SELECT * FROM art_object, borrowed WHERE borrowed.Art_ID = art_object.ID_NO) AS T;

# 6 Ongoing exhibitions IN PROGRESS
#SELECT * FROM exhibitions WHERE curdate() between Start_Date AND End_Date;

# 7 
#SELECT Title, Description, Artist, Year_Created, item_type, Origin, Epoch FROM art_object, exhibitions, permanent_collection WHERE art_object.ID_NO = exhibitions.Art_ID AND exhibitions.EName = 'Ministry of Silly Walks' AND permanent_collection.CStatus = 'on display';

# 8
#SELECT Title, Description, Artist, Year_Created, item_type, Origin, Epoch FROM art_object, exhibitions, permanent_collection WHERE art_object.ID_NO = exhibitions.Art_ID AND exhibitions.EName = 'Ministry of Silly Walks' AND permanent_collection.CStatus = 'on display' AND curdate() between exhibitions.Start_Date AND exhibitions.End_Date;

# 9 
