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
user_id INTEGER,
cat_id INTEGER
);

=======================
INSERT INTO Users VALUES (
default,
'Lori',
'Nitzel',
'lori_nitzel@yahoo.com',
'pofpassword',
'../assets/img/old-lori.jpeg',
'FEMALE',
'Any',
'black',
'long-hair',
TRUE,
FALSE,
FALSE,
TRUE,
'Loud',
TRUE 
);

=======================
INSERT INTO Users VALUES (
2,
'Tom',
'Lawton',
'tomlawton@mac..com',
'pofpassworddy',
'../assets/img/old-tom.jpeg',
'any-gender',
'young-adults',
'tabby/tiger',
'short-hair',
TRUE,
TRUE,
TRUE,
FALSE,
'Quiet',
FALSE 
);

==========
UPDATE Users SET photo = '../assets/img/old-lori.jpeg' WHERE photo = 'https://unsplash.com/photos/y0I85D5QKvs';

UPDATE Users SET photo = '../assets/img/old-tom.jpeg' WHERE photo = 'https://unsplash.com/photos/dQHxyBdNgmU';

DELETE FROM Users WHERE name = 'Tom';


==================
INSERT INTO Matches VALUES (
default, 
1, 
4
);

INSERT INTO Matches VALUES (
default, 
1, 
7
);

INSERT INTO Matches VALUES (
default, 
1, 
10
);

INSERT INTO Matches VALUES (
default, 
1, 
11
);

INSERT INTO Matches VALUES (
default, 
1, 
13
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
'http://www.petango.com/sms/photos/1163/a9884490-0553-4a82-8132-780c6db6fe92.jpg',
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

==============
INSERT INTO Cats Values (
default,
23899124,
'Abacus',
'http://www.petango.com/sms/photos/1163/d18262ee-bb56-4f25-a914-617d7f9d1799.jpg',
'http://www.petango.com/sms/photos/1163/8a53928b-0194-414d-a691-5cd38fa7b803.jpg',
'http://www.petango.com/sms/photos/1163/2593a5e7-1d06-49bb-8c2a-15aabf4a41da.jpg',
'white',
'domestic short hair',
11,
FALSE,
'male',
FALSE,
TRUE,
TRUE,
TRUE,
'Any',
'Hello, my name is Abacus. You can count on me (get it? Count...abacus...) to be a super snuggly kitty once I get to know you. I don''t play a whole lot but I do love to cuddle and give kisses! With clicker training, I was learning to high-five, spin and beg. My shameful secret (don''t we all have those?) is that I get stressed out living with other cats and then I pee outside the litterbox. I know, it''s so embarrassing but I can''t help it. So I''d do best in a home with no other kitties. I''ve been in the shelter system for over a year (minus a few months in a foster home and even an adoptive home) so I''m really hoping to find my forever home soon! Can I count on you (there it is again!) to take me home and love me forever? See my video at https://www.youtube.com/watch?v=MpgqkPKqBOw, find me by searching for the Clicker Learning Institute''s YouTube channel. - See more at: http://www.petango.com/Adopt/Cat-Domestic-Shorthair-23899124#sthash.aHpUam4m.dpuf',
'Hello, my name is Abacus. You can count on me (get it? Count...abacus...) to be a super snuggly kitty once I get to know you. I don''t play a whole lot but I do love to cuddle and give kisses! With clicker training, I was learning to high-five, spin and beg...'
);

==========================
INSERT INTO Cats Values (
default,
30728759,
'Warg',
'http://www.petango.com/sms/photos/1163/cc05845d-5558-424c-8da2-16dd6e441f73.jpg',
'../assets/img/cat-extra.png',
'../assets/img/cat-extra.png',
'tabby',
'domestic long hair',
3,
FALSE,
'male',
TRUE,
TRUE,
TRUE,
TRUE,
'Any',
'Please contact the shelter for more information about Warg!',
'Please contact the shelter for more information about Warg...'
);

==============
INSERT INTO Cats Values (
default,
30458828,
'Ferdinand',
'http://www.petango.com/sms/photos/1163/920be515-9d4a-4a9c-8e47-c28466df2b76.jpg',
'http://www.petango.com/sms/photos/1163/5583d442-a780-46be-a6ad-f309a3ce13a0.jpg',
'http://www.petango.com/sms/photos/1163/740cb7ba-1311-49e3-8896-f367f4dec0d2.jpg',
'tiger',
'domestic long hair',
12,
TRUE,
'male',
TRUE,
TRUE,
TRUE,
TRUE,
'Any',
'Hi, my name is Ferdinand. I may have the "grumpy old man" appearance in my pictures, but I am far from that! It''s true, I am a mature adult, but that doesn''t mean I don''t have the attitude and energy of a kitten. I love all people, even the little ones. I also love cuddling, eating, and playing with toys (watch the video of me, and you''ll see how darn cute and spunky I am). I had to get a funny haircut because my fur was matted, so I will need your help grooming me as my hair grows back. I enjoy the company of other animals, and will fit in just fine if you have other furry family members. I do have limited vision and early kidney disease that have come with age, but you wouldn''t know it when you see me because I don''t let anything get me down. Eating a special food helps my kidneys, and I still have a super appetite and I don''t require any medications right now. I also have FIV (a kitty virus that may slightly affect my immune system), but I can stay healthy with an indoor home for years to come. - See more at: http://www.petango.com/Adopt/Cat-Maine-Coon-30458828#sthash.L1LiBRtB.dpuf',
'Hi, my name is Ferdinand. I may have the "grumpy old man" appearance in my pictures, but I am far from that! It''s true, I am a mature adult, but that doesn''t mean I don''t have the attitude and energy of a kitten. I love all people, even the little ones.'
);

======================
INSERT INTO Cats Values (
default,
30379183,
'Sebastian',
'http://www.petango.com/sms/photos/1163/20470a64-c638-4ec0-8e94-db85a4ecd38a.jpg',
'../assets/img/cat-extra.png',
'../assets/img/cat-extra.png',
'tiger',
'domestic short hair',
11,
FALSE,
'male',
TRUE,
TRUE,
TRUE,
TRUE,
'Any',
'Please contact the shelter for more information about Sebastian!',
'Please contact the shelter for more information about Sebastian...'
);

==================
INSERT INTO Cats Values (
default,
9796355,
'Stevie',
'http://www.petango.com/sms/photos/1163/da7590b8-6fab-40b2-9ca2-3975648432d0.jpg',
'http://www.petango.com/sms/photos/1163/efa3b2ab-bcb4-49f7-8edf-2f7048ab9bc4.jpg',
'http://www.petango.com/sms/photos/1163/aa14e497-a91a-4716-aad3-ec8f0bfc579c.jpg',
'orange',
'domestic short hair',
9,
FALSE,
'male',
TRUE,
TRUE,
TRUE,
TRUE,
'Any',
'Please contact the shelter for more information about Stevie!',
'Please contact the shelter for more information about Stevie...'
);

==================
INSERT INTO Cats Values (
default,
22156175,
'Penny',
'http://www.petango.com/sms/photos/1163/26573fe0-18ba-43c4-9726-71ab467a5729.jpg',
'http://www.petango.com/sms/photos/1163/465f6ce0-878f-41ed-b2ad-ba91a31d23ff.jpg',
'http://www.petango.com/sms/photos/1163/6e35b385-5079-4e3d-aca4-a7b37d1eb27f.jpg',
'tortie',
'domestic short hair',
9,
FALSE,
'female',
FALSE,
TRUE,
TRUE,
TRUE,
'Any',
'Hello world. I am a gorgeous and special kitty, and I know what I want from my soon-to-be new, favorite person. If you meet these expectations then, yes, you can take me home: (1) A Cat Dancer! This is my favorite, favorite toy. (2) Feather toys! I love these, too. (3) You are perfectly okay with petting me sometimes but leaving me be when I want my alone time (hey, aren''t we all like that, really?). (4) You can read and respect my body language; it''s the only way I know how to tell you what I want and need. (5) More Cat Dancers! (6) No other cats-you must love me and only me. (7) Birds outside the window to watch and chatter at. I don''t think that''s too much to ask, do you? Great! Then I''ll be waiting right here for YOU! Please don''t take too long to come get me. See my video at https://youtu.be/GkgXGbDAy14. - See more at: http://www.petango.com/Adopt/Cat-Domestic-Shorthair-22156175#sthash.iEoORsJ9.dpuf',
'Hello world. I am a gorgeous and special kitty, and I know what I want from my soon-to-be new, favorite person. If you meet these expectations then, yes, you can take me home: (1) A Cat Dancer! This is my favorite, favorite toy...'
);

==================

DELETE FROM Cats WHERE name = 'Oliver';
DELETE FROM Cats WHERE name = 'Frank the Tank';

DELETE FROM Users WHERE first_name = 'Roger3';
DELETE FROM Users WHERE first_name = 'eugene';

=================
INSERT INTO Cats Values (
default,
30960675,
'Bat',
'http://www.petango.com/sms/photos/1163/7a96bb84-d043-479d-b238-2e1537d29026.jpg',
'http://www.petango.com/sms/photos/1163/69bc7b87-9b5e-44a8-8f2f-2d483474db9e.jpg',
'../assets/img/cat-extra.png',
'black',
'domestic short hair',
7,
FALSE,
'female',
TRUE,
TRUE,
TRUE,
TRUE,
'Any',
'Please contact the shelter for more information about Bat!',
'Please contact the shelter for more information about Bat...'
);

===================
INSERT INTO Cats Values (
default,
30334954,
'Charlotte Bronte',
'http://www.petango.com/sms/photos/1163/39ad06b8-b656-40d5-babd-54fba285b095.jpg',
'../assets/img/cat-extra.png',
'../assets/img/cat-extra.png',
'black',
'domestic long hair',
1,
FALSE,
'female',
TRUE,
TRUE,
TRUE,
TRUE,
'Any',
'Please contact the shelter for more information about Charlotte Bronte!',
'Please contact the shelter for more information about Charlotte Bronte...'
);

==================
INSERT INTO Cats Values (
default,
24878434,
'Anastasia',
'http://www.petango.com/sms/photos/1163/b2679032-f025-4848-b25b-72b7913e5238.jpg',
'http://www.petango.com/sms/photos/1163/e3c97b4e-00f8-4184-accd-ba433371b6b9.jpg',
'http://www.petango.com/sms/photos/1163/0d451311-974c-484b-8032-891a0235b0fd.jpg',
'grey',
'domestic short hair',
4,
FALSE,
'female',
FALSE,
TRUE,
TRUE,
TRUE,
'Any',
'I am very nervous and curious at first. Once I settle in though, I am well behaved, calm, and have a great loving personality! I love some affection here and there, but am also completely content lounging or exploring on my own. I prefer to be the only cat of the house; others like me stress me out! I am a lover when I get all the attention to myself! I like all treats (I am a hungry kitty...) and since I am older I am not too playful, but occasionally I have fun with fishing pole-like toys. Sometimes I just try to cuddle with my toys instead of attack them, it is pretty cute. I am a lover!
Some words that describe me are: Affectionate, Mellow, Curious, Independent, Easygoing, Easily startled, Quick to react, Loves food. - See more at: http://www.petango.com/Adopt/Cat-Domestic-Shorthair-24878434#sthash.OweDAPkG.dpuf',
'I am very nervous and curious at first. Once I settle in though, I am well behaved, calm, and have a great loving personality! I love some affection here and there, but am also completely content lounging or exploring on my own...'
);
==============
INSERT INTO Cats Values (
default,
30872592,
'Althea',
'http://www.petango.com/sms/photos/1163/15af6bd0-85ae-4982-9983-9cf070b4fe90.jpg',
'http://www.petango.com/sms/photos/1163/a8121db6-60d9-4f47-85fb-f747ce3341f3.jpg',
'http://www.petango.com/sms/photos/1163/bd99947e-b22e-4e80-9e77-58a48e33e09e.jpg',
'white',
'domestic short hair',
2,
FALSE,
'female',
TRUE,
TRUE,
TRUE,
TRUE,
'Any',
'Althea is a true delight! But she is looking for someone who will be patient and kind with her, as she is initially quite shy and wary of hands coming toward her. However, Althea is super snuggly once she gets to know you and loves to cuddle with her head in your hand, purring away. This beautiful girl is super playful and will entertain herself with toys if you''re too busy at the moment, though she also loves to play with people. Althea is also hoping someone will help her slim down a bit so she can live the longest, happiest and healthiest life possible! See her video at https://www.youtube.com/watch?v=Igcy-qt4iWY (search YouTube for the Clicker Learning Institute''s channel or scan the QR code below to go right to it). Then come on down and give her the forever home she''s been searching for! - See more at: http://www.petango.com/Adopt/Cat-Snowshoe-30872592#sthash.c3tnIxxV.dpuf',
'Althea is a true delight! But she is looking for someone who will be patient and kind with her, as she is initially quite shy and wary of hands coming toward her. However, Althea is super snuggly once she gets to know you and loves to cuddle with her head in your hand, purring away...'
);

===========

INSERT INTO Cats Values (
default,
30802779,
'Twizzler',
'http://www.petango.com/sms/photos/1163/0014c5e1-1ead-46dc-8069-bbef41006adc.jpg',
'../assets/img/cat-extra.png',
'../assets/img/cat-extra.png',
'tiger',
'domestic short hair',
9,
FALSE,
'male',
TRUE,
TRUE,
TRUE,
TRUE,
'Any',
'Please contact the shelter for more information about Twizzler!',
'Please contact the shelter for more information about Twizzler...'
);

================
INSERT INTO Cats Values (
default,
30465426,
'Lucy',
'http://www.petango.com/sms/photos/1163/3b275ea8-7fbb-4f0f-8671-3d8876bb9067.jpg',
'http://www.petango.com/sms/photos/1163/d2bc38ae-9fab-40f3-97a7-eec2468707ef.jpg',
'http://www.petango.com/sms/photos/1163/655d2b54-3339-4b77-b36d-0862dd702759.jpg',
'tiger',
'domestic short hair',
11,
FALSE,
'female',
TRUE,
TRUE,
TRUE,
TRUE,
'Any',
'Lucy is very sweet and loves people. She is very loving and likes to sunbathe or find a hidden warm spot to sleep. She is quiet but sometimes she feels like playing, and she also enjoys being in the same room with you while you are busy doing other stuff. She is smart and funny and great company. Her reaction to dogs is still unknown, and she is wary of other cats but could just need time to warm up to them.',
'Lucy is very sweet and loves people. She is very loving and likes to sunbathe or find a hidden warm spot to sleep...'
);

==================
INSERT INTO Cats Values (
default,
24318577,
'Chirp',
'http://www.petango.com/sms/photos/1163/347da57d-7b45-4091-9656-91e0c8fb2a71.jpg',
'http://www.petango.com/sms/photos/1163/648997b7-1ba6-4f35-88da-dfe514072244.jpg',
'http://www.petango.com/sms/photos/1163/682f9aa7-2933-449e-8637-5a11087f56db.jpg',
'black',
'domestic short hair',
10,
TRUE,
'male',
TRUE,
TRUE,
TRUE,
TRUE,
'Any',
'My name is Chirp. I''m about 10 years old. I am a very relaxed guy - I don''t really play much but I will be your best friend. I like to snuggle with you and be pet all the time, and I love a good scratch on my rump! I''m very low maintenance and am so quiet I barely make a peep. I have some early renal failure but you wouldn''t know it, except I need special food. I am also FIV+.',
'My name is Chirp. I''m about 10 years old. I am a very relaxed guy - I don''t really play much but I will be your best friend. ...'
);

============
INSERT INTO Cats Values (
default,
31126780,
'Oliver',
'http://www.petango.com/sms/photos/1163/9b567260-5227-4156-9b1f-5a5dfdcfee40.jpg',
'http://www.petango.com/sms/photos/1163/e92d8ae2-1e5e-4d40-817b-67ed99302f45.jpg',
'http://www.petango.com/sms/photos/1163/353bc61c-5f87-4028-b901-3de80cd55497.jpg',
'tiger',
'domestic short hair',
2,
FALSE,
'male',
TRUE,
TRUE,
TRUE,
TRUE,
'Any',
'Please contact the shelter for more information about Oliver!',
'Please contact the shelter for more information about Oliver...'
);

==============
INSERT INTO Cats Values (
default,
24714872,
'Miss Gilbert',
'http://www.petango.com/sms/photos/1163/429f36c1-cb9d-42a1-a319-ae6af24c7e57.jpg',
'http://www.petango.com/sms/photos/1163/61ae2a68-d1fc-4891-aa36-ce9e7ff572c7.jpg',
'http://www.petango.com/sms/photos/1163/cbcb82f3-c01f-494c-a778-1f97d48682a4.jpg',
'tiger',
'domestic short hair',
6,
TRUE,
'female',
FALSE,
TRUE,
TRUE,
TRUE,
'Any',
'Hi, I''m Miss Gilbert! I am a serious snuggle bug. I would love to sit in your lap and play with you. I like other cats and dogs, too. But watch out - I would love to steal your food for myself, and you can expect to see me right by your side whenever you have something tasty to eat. I have Feline Leukemia (FeLv) and can only live in a home as an only cat, or with other cats who are also FeLv+. If you are looking for a loving and playful kitty, contact my foster mom at amanda.evrard@gmail.com to schedule a time to come and visit me, and find more pictures of me here!: https://www.facebook.com/media/set/?set=a.10101901510300026.1073741863.11506392&type=1&l=5cb152ee9f',
'Hi, I''m Miss Gilbert! I am a serious snuggle bug. I would love to sit in your lap and play with you. I like other cats and dogs, too. But watch out - I would love to steal your food for myself, and you can expect to see me right by your side whenever you have something tasty to eat...'
);

===============

INSERT INTO Cats Values (
default,
29629671,
'Marie Antoinette',
'http://www.petango.com/sms/photos/1163/cf05edd7-618f-42b6-bd23-00a489e7c968.jpg',
'http://www.petango.com/sms/photos/1163/e9cc2df3-0dfb-4fbc-adaf-4b07324fc79d.jpg',
'../assets/img/cat-extra.png',
'white',
'domestic short hair',
3,
FALSE,
'female',
TRUE,
TRUE,
TRUE,
TRUE,
'Any',
'Please contact the shelter for more information about Marie Antoinette!',
'Please contact the shelter for more information about Marie Antoinette...'
);
=================
INSERT INTO Cats Values (
default,
99999999,
'Honey Badger',
'https://i.ytimg.com/vi/x9Jr9JKpsX8/maxresdefault.jpg',
'http://www.badassoftheweek.com/honeybadger1.jpg',
'http://images6.fanpop.com/image/photos/38500000/Honey-Badger-don-t-care-honey-badger-38506719-640-621.jpg',
'black',
'domestic short hair',
2,
FALSE,
'male',
TRUE,
TRUE,
TRUE,
TRUE,
'Any',
'The honey badger resembles its distant relative the skunk in coloration and in the possession of an anal scent gland. It is nocturnal, feeds on rodents, reptiles, and insects, and has a thick loose coat that protects it against snake bites and insect stings...',
'You got kids? Honey Badger don''t care...You got cats? Honey Badger don''t care...'
);




