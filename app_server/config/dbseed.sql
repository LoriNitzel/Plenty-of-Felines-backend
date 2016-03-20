CREATE TABLE Cats (
  id SERIAL PRIMARY KEY,
  FCCRSNC_id INTEGER,
  name VARCHAR(127),
  photo VARCHAR(500),
  photo2 VARCHAR(500),
  photo3 VARCHAR(500),
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
  general_characteristics TEXT, 
  summary TEXT
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
'http://www.petango.com/sms/photos/1163/34bdbe96-e79a-4a11-a4ae-dd03438048b9.jpg',
'http://www.petango.com/sms/photos/1163/3009ca42-754a-48c7-8990-9a52bf794351.jpg',
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
'Isabella is a beautiful, orange and white princess with gorgeous, soulful eyes whose favorite activity is sitting in a human''s lap (or on a warm laptop preventing her human from working so they can pay attention to her)! As with most divas, she is a perfect blend of snuggles and sass. She can sometimes take a little time to warm up to people, but she loves to be petted and gives the most adorable head butts. And because Princess Isabella Sassafras, as she is affectionately called by FCCRSNC staff, can be very un-princess-like around other cats, she''s looking for a home with a human(s) she can have all to herself. If you are looking for a wonderful companion who is snuggly but not too needy, Isabella might just be your girl! Ask about her today, and check out her awesome video here: https://www.youtube.com/watch?v=pidL7yrI9Zw - See more at: http://www.petango.com/Adopt/Cat-Domestic-Shorthair-30230156#sthash.CUJ6Gfmu.dpuf',
'Isabella is a beautiful, orange and white princess with gorgeous, soulful eyes whose favorite activity is sitting in a human''s lap (or on a warm laptop preventing her human from working so they can pay attention to her)! As with most divas, she is a perfect blend of snuggles and sass...'
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
30877817,
'Birdie',
'http://www.petango.com/sms/photos/1163/65b9d826-4c82-4308-8c1f-f96883090d2b.jpg',
'http://www.petango.com/sms/photos/1163/a79b0e26-351b-494a-99b3-8c57a503729c.jpg',
'http://www.petango.com/sms/photos/1163/b243091c-45d1-4870-8228-2b599f02b4be.jpg',
'tiger',
'domestic short hair',
2,
FALSE,
'female',
TRUE,
TRUE,
TRUE,
TRUE,
'Any',
'They don''t come much cuter than me. With my little round head and my big round eyes, along with my skill of putting myself into very cute poses, how can you possibly resist me? My mildly feisty personality will keep you entertained while my usual cuddliness will make you forgive any rudeness on my part. Oh, and I''m learning to high-five and spin in a circle-how fun is that? Watch my video at https://youtu.be/jJPr1uZOMNg, search for me on the Clicker Learning Institute''s YouTube channel, or just scan the QR code below. Although I might do okay with another laid-back cat and proper introductions, I wouldn''t mind being your one and only feline princess. Please come make me part of your family today! - See more at: http://www.petango.com/Adopt/Cat-Domestic-Shorthair-30877817#sthash.7VmQkYd3.dpuf',
'They don''t come much cuter than me. With my little round head and my big round eyes, along with my skill of putting myself into very cute poses, how can you possibly resist me?...'
);

==========================
INSERT INTO Cats VALUES (
default, 
28564022,
'Sarah Belle',
'http://www.petango.com/sms/photos/1163/0c81d486-f16b-4adf-99a6-e37afeeeb99a.jpg',
'http://www.petango.com/sms/photos/1163/9a5d323e-e438-411a-97f2-f574b080ed99.jpg',
'http://www.petango.com/sms/photos/1163/028f9548-dd46-4052-8452-b0bc961ecbd2.jpg',
'grey/cream',
'domestic short hair',
3, 
TRUE,
'female',
FALSE,
FALSE,
FALSE,
FALSE,
'Quiet',
'Sarah Belle has a condition called Cerebellar Hypoplasia. This just means her motor skills are a bit off and she moves around a little funny. She has come a long way since being in foster care. She loves to be brushed, get head scratches, snuggle in bed with you at night, lay in sunbeams and play with feather teaser toys. She uses a large, low sided litter box perfectly. She eats and drinks just fine out of sturdy ceramic dishes. She does not like other cats and appears to dislike dogs as well and needs to be the only pet in the house but she is worth it. She can get startled by fast movements and therefore, needs to go to a home with no small children. Older kids that can respect her boundaries should be ok. Please visit chcat.org to learn more about this condition. If you are interested in Sarah Belle, you may contact the shelter for more information. - See more at: http://www.petango.com/Adopt/Cat-Domestic-Shorthair-28564022#sthash.E41CiAYX.dpuf',
'Sarah Belle has a condition called Cerebellar Hypoplasia. This just means her motor skills are a bit off and she moves around a little funny. She has come a long way since being in foster care. She loves to be brushed, get head scratches, snuggle in bed with you at night, lay in sunbeams and play with feather teaser toys. She uses a large, low sided litter box perfectly...'
);

=========================
INSERT INTO Cats Values (
default,
30963713,
'Lexi',
'http://www.petango.com/sms/photos/1163/dfe2bfba-752f-4789-a9c1-e5bca49db598.jpg',
'http://www.petango.com/sms/photos/1163/450f676f-0b76-49d4-b718-1290e68ade67.jpg',
'http://www.petango.com/sms/photos/1163/ea3d455a-00a5-46ed-b36c-a099dbac3e6a.jpg',
'black',
'domestic short hair',
5,
FALSE,
'female',
TRUE,
TRUE,
TRUE,
TRUE,
'Any',
'Please contact the shelter for more information about Lexi!',
'Please contact the shelter for more information about Lexi...'
);

========================
INSERT INTO Cats Values (
default,
28252609,
'Frank the Tank',
'http://www.petango.com/sms/photos/1163/5cae597b-0eb9-452d-810d-c38e65ba7b2e.jpg',
'http://www.petango.com/sms/photos/1163/e68b45e2-6385-4514-9f22-d5df88b95a84.jpg',
'http://www.petango.com/sms/photos/1163/5cae597b-0eb9-452d-810d-c38e65ba7b2e.jpg',
'black and white',
'domestic short hair',
10,
FALSE,
'male',
TRUE,
TRUE,
TRUE,
TRUE,
'Any',
'Hi, I''m Frank (aka Frank the Tank)! I''m a delightful middle aged kitty ready to join your family! I am very outgoing, and I enjoy spending time with all people, including kids. I love to cuddle on your lap, and I am also quite the conversationalist for those who enjoy a talkative kitty! I get along well with other cats, tending to mind my own business. I tolerate dogs as well, but I''m not afraid to stand my ground if they invade my space. I was abandoned at the shelter in poor health in June 2015, and was diagnosed with diabetes and severe dental disease at the time. Since then I have fully recovered, and I don''t need any medication anymore. I had to have several teeth pulled including my upper canines to make my mouth feel better, so sometimes my bottom canines stick out funny making it look like I''m smiling. Now that my diabetes is in remission, I just need a strict diet and weight management to stay healthy and live a long happy life. I do love the exercise and mental stimulation I get with various food puzzles my foster parents make me, so it''s easy to make my meals fun and keep me healthy (since I tend to overeat otherwise). Please contact the Fort Collins Cat Rescue if you are interested in meeting me. - See more at: http://www.petango.com/Adopt/Cat-Domestic-Shorthair-28252609#sthash.hG6ITRlp.dpuf',
'Hi, I''m Frank (aka Frank the Tank)! I''m a delightful middle aged kitty ready to join your family! I am very outgoing, and I enjoy spending time with all people, including kids. I love to cuddle on your lap, and I am also quite the conversationalist for those who enjoy a talkative kitty! I get along well with other cats, tending to mind my own business...'
);

==========
UPDATE Cats SET photo = 'http://www.petango.com/sms/photos/1163/a9884490-0553-4a82-8132-780c6db6fe92.jpg' WHERE photo = 'http://www.petango.com/sms/photos/1163/5cae597b-0eb9-452d-810d-c38e65ba7b2e.jpg';


============
INSERT INTO Cats Values (
default,
29452295,
'Linus',
'http://www.petango.com/sms/photos/1163/596d6831-11a8-4d9b-a62f-6a3d9322b279.jpg',
'http://www.petango.com/sms/photos/1163/fca16350-f7dd-4e4b-8933-282f54f1dd2c.jpg',
'http://www.petango.com/sms/photos/1163/9edbafdb-20e7-4375-a921-8c49d517e7dc.jpg',
'orange',
'domestic short hair',
4,
TRUE,
'male',
TRUE,
TRUE,
TRUE,
TRUE,
'Any',
'Linus has Feline Leukemia (FeLV) - and he is available for adoption at Fort Collins Cat Rescue & Spay/Neuter Clinic. Because of his condition, Linus is a strictly indoor-only cat who can only live with other cats that already have FeLV (learn more about FeLV at http://pets.webmd.com/cats/facts-about-feline-leukemia-virus). Linus is a snuggly kitty who loves people, and does well with other cats and dogs, too. Check out http://www.fortcollinscatrescue.org/ for adoption information - Linus''s adoption fee is waived for the right home! http://fccrsnc.org/',
'Linus has Feline Leukemia (FeLV) - and he is available for adoption at Fort Collins Cat Rescue & Spay/Neuter Clinic. Because of his condition, Linus is a strictly indoor-only cat who can only live with other cats that already have FeLV (learn more about FeLV at http://pets.webmd.com/cats/facts-about-feline-leukemia-virus)...'
);

================
ALTER TABLE Cats ADD COLUMN summary text;

===========
ALTER TABLE Cats ADD COLUMN photo2 VARCHAR(500);
ALTER TABLE Cats ADD COLUMN photo3 VARCHAR(500);





