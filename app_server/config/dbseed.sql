CREATE TABLE Cats (
  id SERIAL PRIMARY KEY,
  FCCRSNC_id INTEGER,
  name VARCHAR(127),
  photo VARCHAR(500),
  color VARCHAR(255),
  hair VARCHAR(255),
  age INTEGER,
  medical_issue BOOLEAN, 
  gender VARCHAR(127),
  good_with_cats BOOLEAN,
  good_with_dogs BOOLEAN,
  good_with_kids BOOLEAN,
  good_with_other BOOLEAN,
  atmosphere_needed VARCHAR(255),
  general_characteristics TEXT
  );

CREATE TABLE Users (
 id SERIAL PRIMARY KEY,
first_name VARCHAR(255),
last_name VARCHAR(255),
email VARCHAR(255),
password VARCHAR(500),
photo VARCHAR(500),
desired_gender VARCHAR(125),
desired_age VARCHAR(400),
desired_color VARCHAR(400),
desired_hair VARCHAR(400),
dogs_in_home BOOLEAN, 
cats_in_home BOOLEAN,
other_in_home BOOLEAN,
kids_in_home BOOLEAN,
atmosphere_in_home VARCHAR(400),
medical_acceptable BOOLEAN
);

CREATE TABLE Matches (
id SERIAL PRIMARY KEY,
cat_id INTEGER,
user_id INTEGER
);

======================
INSERT INTO Cats VALUES (
default,
30230156,
'Isabella',
'http://www.petango.com/sms/photos/1163/b256d930-8fbc-492a-ac2d-d29f65c53d68.jpg',
'orange/white',
'domestic short hair',
6,
FALSE,
'female',
FALSE,
FALSE,
TRUE,
FALSE,
'Any',
'Isabella is a beautiful, orange and white princess with gorgeous, soulful eyes whose favorite activity is sitting in a human''s lap (or on a warm laptop preventing her human from working so they can pay attention to her)! As with most divas, she is a perfect blend of snuggles and sass. She can sometimes take a little time to warm up to people, but she loves to be petted and gives the most adorable head butts. And because Princess Isabella Sassafras, as she is affectionately called by FCCRSNC staff, can be very un-princess-like around other cats, she''s looking for a home with a human(s) she can have all to herself. If you are looking for a wonderful companion who is snuggly but not too needy, Isabella might just be your girl! Ask about her today, and check out her awesome video here: https://www.youtube.com/watch?v=pidL7yrI9Zw - See more at: http://www.petango.com/Adopt/Cat-Domestic-Shorthair-30230156#sthash.CUJ6Gfmu.dpuf' 
);

=======================
INSERT INTO Users VALUES (
default,
'Lori',
'Nitzel',
'lori_nitzel@yahoo.com',
'pofpassword',
'https://unsplash.com/photos/y0I85D5QKvs',
'Any',
'Any',
'black',
'domestic short hair',
TRUE,
TRUE,
FALSE,
TRUE,
'Loud',
TRUE 
);

========================
INSERT INTO Cats VALUES (
default, 
30464468,
'Tinsel',
'http://www.petango.com/sms/photos/1163/8c4bd125-e363-46c6-9238-690d007d3eec.jpg',
'grey/orange',
'domestic short hair',
1,
FALSE,
'female',
TRUE,
TRUE,
FALSE,
TRUE,
'Any',
'I have a sparkling personality to go along with my name. I LOVE to play and I love other cats. I really am sweet, and I do often enjoy petting, but I admit sometimes I can become over-stimulated during petting and...um, well...I may swat. I''m sorry, I''m sorry, I''m sorry! But it''s true. So I''d do best in a home with no small children and where I can get lots of playtime. Oh, and I''m quite smart, too. I''m being clicker trained to spin, high-five, sit and go to a mat! See my video at https://youtu.be/pGhpeSlQGmM. I was recently in a foster home for several weeks. Here''s what my foster mom said about me: "Tinsel has become much more relaxed and comfortable, and doesn''t swat as often. She also loves other cats and loves playing! She is a very sweet girl who loves chin rubs and rubbing against her human!" - See more at: http://www.petango.com/Adopt/Cat-Domestic-Shorthair-30464468#sthash.4w8H4Crw.dpuf'
);


