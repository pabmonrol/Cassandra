
 -- Create KeySpace:
        CREATE KEYSPACE apartadoA WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};
        USE apartadoa ;

 -- Delete tables:
        DROP TABLE USERS;
        DROP TABLE VIDEOS;
        DROP TABLE COMMENTS;
        DROP TABLE FOLLOWERS;
        DROP TABLE EVENTS;
        DROP TABLE RATINGS;

 -- Create tables:
        CREATE TABLE Users(id_user int,username text,name text,email text,register_date timestamp,PRIMARY KEY(id_user, username, email));
        CREATE TABLE Videos(id_video int,author text,title_video text,description text,tag_set set<text>,upload_date timestamp,PRIMARY KEY (id_video));
        CREATE TABLE Comments(id_comment int,username text,title_video text,create_date timestamp,PRIMARY KEY (id_comment));
        CREATE TABLE Followers(id_video int, set_email set<text> ,PRIMARY KEY(id_video));
        CREATE TABLE Events(id_event int,id_video int,id_user int,type text,time_video int,create_date timestamp,PRIMARY KEY (id_event));
        CREATE TABLE Ratings(id_rating int,id_video int,rating int,primary KEY (id_rating));

 -- Insert data:
    --- Insertions in Users:
        INSERT INTO Users(id_user, username, name, email, register_date)VALUES (36034, 'Pedigo', 'Tommie Dunning', 'margurite_savage@deep.endofinternet.net', 702975282102);
        INSERT INTO Users(id_user, username, name, email, register_date)VALUES (27707, 'Ogle', 'Jame Brink', 'dot_arroyo@yahoo.com', 81449316859);
        INSERT INTO Users(id_user, username, name, email, register_date)VALUES (98878, 'Blue', 'Marlen Nieves', 'ouida11070@neil.com', 1166826169349);
        INSERT INTO Users(id_user, username, name, email, register_date)VALUES (31546, 'Freed', 'Ingeborg Bolen', 'loriann-mccallum@hotmail.com', 1664859166353);
        INSERT INTO Users(id_user, username, name, email, register_date)VALUES (56231, 'Gladney', 'Everette Aragon', 'kenisha.wilcox@died.com', 1398406594920);
        INSERT INTO Users(id_user, username, name, email, register_date)VALUES (01345, 'Pruitt', 'Karima Aguilera', 'kylejorgensen@raleigh.com', 509146073525);
        INSERT INTO Users(id_user, username, name, email, register_date)VALUES (77977, 'Liles', 'Harrison Buie', 'lashandra22@hotmail.com', 1669350291833);
        INSERT INTO Users(id_user, username, name, email, register_date)VALUES (23038, 'Pyle', 'Jorge Nason-Lozano', 'dovie_snell83019@tall.com', 957632918897);
        INSERT INTO Users(id_user, username, name, email, register_date)VALUES (32985, 'Binkley', 'Wyatt Burkhart', 'simone-castillo@enterprises.co.tt', 70652565342);
        INSERT INTO Users(id_user, username, name, email, register_date)VALUES (97995, 'Gossett', 'Lakenya Mccurdy', 'christi3745@gmail.com', 1639348523568);
        INSERT INTO Users(id_user, username, name, email, register_date)VALUES (28408, 'Landon', 'Latoyia Odonnell', 'taisha8328@unemployment.pioneer', 528649499310);
        INSERT INTO Users(id_user, username, name, email, register_date)VALUES (16203, 'Fontaine', 'Alfredo Silver', 'garret50218@gmail.com', 1111893289004);
        INSERT INTO Users(id_user, username, name, email, register_date)VALUES (55511, 'Shepherd', 'Honey Catlett', 'adriana_coker054@gmail.com', 1324527846825);
        INSERT INTO Users(id_user, username, name, email, register_date)VALUES (95747, 'Rushing', 'Abbie Dean', 'sparkle8@gmail.com', 1302637833941);
        INSERT INTO Users(id_user, username, name, email, register_date)VALUES (45620, 'Parks', 'Shyla Doty', 'alethea-golding-tiller@yahoo.com', 784672364181);
        INSERT INTO Users(id_user, username, name, email, register_date)VALUES (81262, 'Mcqueen', 'Star Hamrick', 'nandamon2317@municipality.com', 1246262942204);
        INSERT INTO Users(id_user, username, name, email, register_date)VALUES (51121, 'Bertrand', 'Raquel Bourque', 'visoriano@hotmail.com', 853177613018);
        INSERT INTO Users(id_user, username, name, email, register_date)VALUES (31780, 'Bigelow', 'Stevie Silvers', 'lashawnda_portillo27169@yahoo.com', 1007060514134);
        INSERT INTO Users(id_user, username, name, email, register_date)VALUES (03390, 'Adamson', 'Odette Newton', 'bethanie10271@hotmail.com', 1479646538960);
        INSERT INTO Users(id_user, username, name, email, register_date)VALUES (43035, 'Spring', 'Dalton Sneed', 'arturo_fielder33123@gmail.com', 529154160092);

    --- Insertions in videos:
        INSERT INTO Videos (id_video, author, description, tag_set, title_video, upload_date)VALUES (82004, 'Ferne Atwood', 'waiver salvador breathing guardian commercial', {'biz', 'mug', 'carrier'}, 'back users identify deployment licenses', 1148355589946);
        INSERT INTO Videos (id_video, author, description, tag_set, title_video, upload_date)VALUES (47828, 'Lizette Agnew', 'verse nice trap couple immediately', {'consultant', 'fold', 'surprised'}, 'shark josh hub nation signup', 908734256294);
        INSERT INTO Videos (id_video, author, description, tag_set, title_video, upload_date)VALUES (47734, 'Jackqueline Bowling', 'linking genome assembled ethnic synthetic', {'packet', 'compared', 'rosa'}, 'narrative revised domains obj settlement', 194228926467);
        INSERT INTO Videos (id_video, author, description, tag_set, title_video, upload_date)VALUES (05064, 'Nobuko Cowan', 'fitting scenarios adult rendering person', {'existed', 'pg', 'aimed'}, 'chicago lesbian reads dns rug', 956146668487);
        INSERT INTO Videos (id_video, author, description, tag_set, title_video, upload_date)VALUES (85336, 'Peggie Butcher-Crockett', 'spies compatible separation insights comfortable', {'book', 'fioricet', 'expenditure'}, 'renew jennifer exactly foods appreciation', 18944991787);
        INSERT INTO Videos (id_video, author, description, tag_set, title_video, upload_date)VALUES (44228, 'Claribel South', 'physiology exec blonde alfred thriller', {'printer', 'gaming', 'examining'}, 'proposition entity matt aaa warm', 1053303962390);
        INSERT INTO Videos (id_video, author, description, tag_set, title_video, upload_date)VALUES (13502, 'Nakia Rhea', 'diff pleasure existing cement cloudy', {'protest', 'scanning', 'yacht'}, 'allocation pray invisible agricultural luther', 1291347357418);
        INSERT INTO Videos (id_video, author, description, tag_set, title_video, upload_date)VALUES (16636, 'Jessika Holloman', 'under complimentary delivers holland cameroon', {'nose', 'lens', 'connection'}, 'interest titten blvd satisfied template', 1221389961962);
        INSERT INTO Videos (id_video, author, description, tag_set, title_video, upload_date)VALUES (35721, 'Karie Schmid', 'clinic universe ebook classical accurate', {'lexington', 'spectrum', 'makers'}, 'feature crack asylum mt minimum', 1342743804879);
        INSERT INTO Videos (id_video, author, description, tag_set, title_video, upload_date)VALUES (26063, 'Bertha Jernigan', 'archives largest dv cigarettes survivor', {'font', 'chef', 'king'}, 'attendance mime spank music vitamin', 949418221993);
        INSERT INTO Videos (id_video, author, description, tag_set, title_video, upload_date)VALUES (74153, 'Letty Miller', 'plants never franklin ought thumb', {'relates', 'jerry', 'include'}, 'charging mark clean critical adventure', 737910605940);
        INSERT INTO Videos (id_video, author, description, tag_set, title_video, upload_date)VALUES (41139, 'Evita Waldrop', 'methodology oasis interface syndrome given', {'symposium', 'attitudes', 'cologne'}, 'field des complications iraq drainage', 1607440508515);
        INSERT INTO Videos (id_video, author, description, tag_set, title_video, upload_date)VALUES (60089, 'Siobhan Wallen', 'hair totals components advantages glossary', {'cultures', 'terms', 'apache'}, 'partners pmid blogs industrial lucky', 383503618283);
        INSERT INTO Videos (id_video, author, description, tag_set, title_video, upload_date)VALUES (47280, 'Vannessa Ashe', 'clarity mating comprehensive retention fighters', {'platinum', 'nov', 'ser'}, 'prevention are exciting epinions badge', 831785338622);
        INSERT INTO Videos (id_video, author, description, tag_set, title_video, upload_date)VALUES (02424, 'Jani Cosby', 'families declare stored fighters carolina', {'justin', 'dosage', 'disabilities'}, 'arch drinking drilling responded speaking', 237293195997);
        INSERT INTO Videos (id_video, author, description, tag_set, title_video, upload_date)VALUES (54286, 'Erinn Johnson', 'iso constitutes consolidated nearest fence', {'interest', 'average', 'nickname'}, 'mating heating horses museums simulations', 1506449914107);
        INSERT INTO Videos (id_video, author, description, tag_set, title_video, upload_date)VALUES (52177, 'Krysta Venable', 'duplicate france lemon indians readers', {'panasonic', 'kelkoo', 'broken'}, 'freight avon sight newcastle conventions', 296570407298);
        INSERT INTO Videos (id_video, author, description, tag_set, title_video, upload_date)VALUES (85868, 'Aaron Langston', 'formed bulgarian beer classifieds puerto', {'sherman', 'defence', 'roof'}, 'dpi gpl if teenage appearance', 503259038888);
        INSERT INTO Videos (id_video, author, description, tag_set, title_video, upload_date)VALUES (13357, 'Crystle Mcnutt', 'findlaw composer ought enterprises advertising', {'publications', 'howard', 'judge'}, 'silk kentucky nasty msgstr self', 577324820038);
        INSERT INTO Videos (id_video, author, description, tag_set, title_video, upload_date)VALUES (59993, 'Jerica Kowalski', 'zus turned functional cycles craft', {'athletes', 'rover', 'palm'}, 'existing monthly omissions parts incidence', 430180639794);

    --- Insertions in comments:
        INSERT INTO Comments (id_comment, username, title_video, create_date) VALUES (31350, 'Pedigo', 'back users identify deployment licenses', 831564803874);
        INSERT INTO Comments (id_comment, username, title_video, create_date) VALUES (11597, 'Adamson', 'shark josh hub nation signup', 116009460469);
        INSERT INTO Comments (id_comment, username, title_video, create_date) VALUES (81774, 'Blue', 'narrative revised domains obj settlement', 1417712153884);
        INSERT INTO Comments (id_comment, username, title_video, create_date) VALUES (54882, 'Freed', 'chicago lesbian reads dns rug', 163265199907);
        INSERT INTO Comments (id_comment, username, title_video, create_date) VALUES (64052, 'Gladney', 'renew jennifer exactly foods appreciation', 736606187397);
        INSERT INTO Comments (id_comment, username, title_video, create_date) VALUES (16747, 'Rushing', 'proposition entity matt aaa warm', 1269035320654);
        INSERT INTO Comments (id_comment, username, title_video, create_date) VALUES (17647, 'Mcqueen', 'allocation pray invisible agricultural luther', 125351535640);
        INSERT INTO Comments (id_comment, username, title_video, create_date) VALUES (83092, 'Pyle', 'interest titten blvd satisfied template', 254141194007);
        INSERT INTO Comments (id_comment, username, title_video, create_date) VALUES (23101, 'Binkley', 'feature crack asylum mt minimum', 1534607852208);
        INSERT INTO Comments (id_comment, username, title_video, create_date) VALUES (96361, 'Mcqueen', 'attendance mime spank music vitamin', 616568632289);
        INSERT INTO Comments (id_comment, username, title_video, create_date) VALUES (56589, 'Landon', 'charging mark clean critical adventure', 1283778722838);
        INSERT INTO Comments (id_comment, username, title_video, create_date) VALUES (64238, 'Fontaine', 'field des complications iraq drainage', 1520507328231);
        INSERT INTO Comments (id_comment, username, title_video, create_date) VALUES (27711, 'Shepherd', 'partners pmid blogs industrial lucky', 520863574827);
        INSERT INTO Comments (id_comment, username, title_video, create_date) VALUES (83774, 'Rushing', 'partners pmid blogs industrial lucky', 1146992895703);
        INSERT INTO Comments (id_comment, username, title_video, create_date) VALUES (19290, 'Gossett', 'mating heating horses museums simulations', 397257086889);
        INSERT INTO Comments (id_comment, username, title_video, create_date) VALUES (62034, 'Shepherd', 'silk kentucky nasty msgstr self', 941945511660);
        INSERT INTO Comments (id_comment, username, title_video, create_date) VALUES (90697, 'Mcqueen', 'mating heating horses museums simulations', 640468264476);
        INSERT INTO Comments (id_comment, username, title_video, create_date) VALUES (73983, 'Liles', 'mating heating horses museums simulations', 1623261433258);
        INSERT INTO Comments (id_comment, username, title_video, create_date) VALUES (33907, 'Adamson', 'silk kentucky nasty msgstr self', 274114439482);
        INSERT INTO Comments (id_comment, username, title_video, create_date) VALUES (58721, 'Ogle', 'silk kentucky nasty msgstr self', 292156721507);

    --- Insertions in Followers:
        INSERT INTO Followers (id_video, set_email) VALUES (47828, {'nandamon2317@municipality.com', 'kylejorgensen@raleigh.com', 'margurite_savage@deep.endofinternet.net'});
        INSERT INTO Followers (id_video, set_email) VALUES (47734, {'bethanie10271@hotmail.com', 'alethea-golding-tiller@yahoo.com', 'simone-castillo@enterprises.co.tt'});
        INSERT INTO Followers (id_video, set_email) VALUES (05064, {'nandamon2317@municipality.com', 'taisha8328@unemployment.pioneer', 'margurite_savage@deep.endofinternet.net'});
        INSERT INTO Followers (id_video, set_email) VALUES (85336, {'bethanie10271@hotmail.com', 'ouida11070@neil.com', 'dot_arroyo@yahoo.com'});
        INSERT INTO Followers (id_video, set_email) VALUES (44228, {'sparkle8@gmail.com', 'ouida11070@neil.com'});
        INSERT INTO Followers (id_video, set_email) VALUES (13502, {'visoriano@hotmail.com', 'dovie_snell83019@tall.com', 'kylejorgensen@raleigh.com'});
        INSERT INTO Followers (id_video, set_email) VALUES (16636, {'sparkle8@gmail.com', 'taisha8328@unemployment.pioneer'});
        INSERT INTO Followers (id_video, set_email) VALUES (35721, {'nandamon2317@municipality.com', 'adriana_coker054@gmail.com', 'christi3745@gmail.com'});
        INSERT INTO Followers (id_video, set_email) VALUES (26063, {'lashawnda_portillo27169@yahoo.com', 'dovie_snell83019@tall.com', 'margurite_savage@deep.endofinternet.net'});
        INSERT INTO Followers (id_video, set_email) VALUES (74153, {'dovie_snell83019@tall.com', 'kylejorgensen@raleigh.com', 'dot_arroyo@yahoo.com'});
        INSERT INTO Followers (id_video, set_email) VALUES (41139, {'taisha8328@unemployment.pioneer', 'simone-castillo@enterprises.co.tt'});
        INSERT INTO Followers (id_video, set_email) VALUES (60089, {'christi3745@gmail.com', 'lashandra22@hotmail.com'});
        INSERT INTO Followers (id_video, set_email) VALUES (47280, {'visoriano@hotmail.com', 'alethea-golding-tiller@yahoo.com', 'garret50218@gmail.com'});
        INSERT INTO Followers (id_video, set_email) VALUES (02424, {'simone-castillo@enterprises.co.tt'});
        INSERT INTO Followers (id_video, set_email) VALUES (54286, {'adriana_coker054@gmail.com', 'christi3745@gmail.com'});
        INSERT INTO Followers (id_video, set_email) VALUES (82004, {'lashawnda_portillo27169@yahoo.com', 'lashandra22@hotmail.com', 'margurite_savage@deep.endofinternet.net'});
        INSERT INTO Followers (id_video, set_email) VALUES (52177, {'christi3745@gmail.com'});
        INSERT INTO Followers (id_video, set_email) VALUES (85868, {'visoriano@hotmail.com', 'simone-castillo@enterprises.co.tt'});
        INSERT INTO Followers (id_video, set_email) VALUES (13357, {'lashawnda_portillo27169@yahoo.com', 'garret50218@gmail.com'});
        INSERT INTO Followers (id_video, set_email) VALUES (59993, {'adriana_coker054@gmail.com', 'ouida11070@neil.com'});

    --- Inserts in Events:
        INSERT INTO Events (id_event, id_video, id_user, type, time_video, create_date) VALUES (12957, 82004, 36034, 'play', 10, 473781457348);
        INSERT INTO Events (id_event, id_video, id_user, type, time_video, create_date) VALUES (61511, 47828, 98878, 'stop', 34, 143031048164);
        INSERT INTO Events (id_event, id_video, id_user, type, time_video, create_date) VALUES (98270, 47734, 31546, 'play', 48, 1082619321081);
        INSERT INTO Events (id_event, id_video, id_user, type, time_video, create_date) VALUES (28431, 05064, 36034, 'pause', 82, 308709118657);
        INSERT INTO Events (id_event, id_video, id_user, type, time_video, create_date) VALUES (54732, 85336, 27707, 'play', 51, 162889206353);
        INSERT INTO Events (id_event, id_video, id_user, type, time_video, create_date) VALUES (65727, 44228, 01345, 'stop', 79, 349985350886);
        INSERT INTO Events (id_event, id_video, id_user, type, time_video, create_date) VALUES (59110, 13502, 77977, 'play', 86, 654616037844);
        INSERT INTO Events (id_event, id_video, id_user, type, time_video, create_date) VALUES (66898, 16636, 23038, 'play', 57, 1661107229103);
        INSERT INTO Events (id_event, id_video, id_user, type, time_video, create_date) VALUES (92029, 35721, 31546, 'pause', 45, 634508368095);
        INSERT INTO Events (id_event, id_video, id_user, type, time_video, create_date) VALUES (28350, 26063, 56231, 'stop', 10, 706799231752);
        INSERT INTO Events (id_event, id_video, id_user, type, time_video, create_date) VALUES (48618, 74153, 36034, 'stop', 97, 1522376859600);
        INSERT INTO Events (id_event, id_video, id_user, type, time_video, create_date) VALUES (88118, 41139, 56231, 'pause', 58, 1078411948003);
        INSERT INTO Events (id_event, id_video, id_user, type, time_video, create_date) VALUES (32058, 60089, 98878, 'play', 35, 1202208558846);
        INSERT INTO Events (id_event, id_video, id_user, type, time_video, create_date) VALUES (47606, 47280, 32985, 'pause', 43, 502429457098);
        INSERT INTO Events (id_event, id_video, id_user, type, time_video, create_date) VALUES (92251, 02424, 97995, 'play', 85, 1581830179394);
        INSERT INTO Events (id_event, id_video, id_user, type, time_video, create_date) VALUES (83797, 54286, 28408, 'play', 42, 1001088195722);
        INSERT INTO Events (id_event, id_video, id_user, type, time_video, create_date) VALUES (63764, 52177, 16203, 'pause', 61, 244421803776);
        INSERT INTO Events (id_event, id_video, id_user, type, time_video, create_date) VALUES (16338, 85868, 55511, 'stop', 26, 329817209431);
        INSERT INTO Events (id_event, id_video, id_user, type, time_video, create_date) VALUES (02996, 13357, 95747, 'play', 14, 1513619106622);
        INSERT INTO Events (id_event, id_video, id_user, type, time_video, create_date) VALUES (82539, 59993, 45620, 'pause', 94, 1205175243509);

    --- Insertions in Ratings:
        INSERT INTO Ratings (id_rating, id_video, rating) VALUES (95661, 36034, 1);
        INSERT INTO Ratings (id_rating, id_video, rating) VALUES (40632, 27707, 5);
        INSERT INTO Ratings (id_rating, id_video, rating) VALUES (55501, 98878, 5);
        INSERT INTO Ratings (id_rating, id_video, rating) VALUES (13325, 97995, 1);
        INSERT INTO Ratings (id_rating, id_video, rating) VALUES (85586, 31546, 1);
        INSERT INTO Ratings (id_rating, id_video, rating) VALUES (82636, 77977, 4);
        INSERT INTO Ratings (id_rating, id_video, rating) VALUES (23140, 97995, 3);
        INSERT INTO Ratings (id_rating, id_video, rating) VALUES (73564, 97995, 3);
        INSERT INTO Ratings (id_rating, id_video, rating) VALUES (34808, 31780, 5);
        INSERT INTO Ratings (id_rating, id_video, rating) VALUES (30566, 98878, 5);
        INSERT INTO Ratings (id_rating, id_video, rating) VALUES (39659, 43035, 1);
        INSERT INTO Ratings (id_rating, id_video, rating) VALUES (38183, 43035, 4);
        INSERT INTO Ratings (id_rating, id_video, rating) VALUES (67058, 32985, 5);
        INSERT INTO Ratings (id_rating, id_video, rating) VALUES (67175, 16203, 5);
        INSERT INTO Ratings (id_rating, id_video, rating) VALUES (40149, 98878, 2);
        INSERT INTO Ratings (id_rating, id_video, rating) VALUES (60168, 45620, 2);
        INSERT INTO Ratings (id_rating, id_video, rating) VALUES (72214, 45620, 2);
        INSERT INTO Ratings (id_rating, id_video, rating) VALUES (82598, 03390, 4);
        INSERT INTO Ratings (id_rating, id_video, rating) VALUES (91445, 31780, 3);
        INSERT INTO Ratings (id_rating, id_video, rating) VALUES (36603, 32985, 2);

 -- Json Generators:
    --- Users:
        SELECT json * from users;

    --- Videos:
        SELECT json * from videos;

    --- Comments:
        SELECT json * from comments;

    --- Followers:
        SELECT json * from followers;

    --- Events:
        SELECT json * from events;

    --- Ratings:
        SELECT json * from ratings;