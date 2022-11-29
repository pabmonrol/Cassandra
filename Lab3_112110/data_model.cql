-- Unit a).

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
        CREATE TABLE Comments(id_comment int,id_user int,id_video int,comment text,create_date timestamp,PRIMARY KEY (id_comment, create_date)) WITH CLUSTERING ORDER BY (create_date DESC);
        CREATE TABLE Followers(id_video int, set_email set<text> ,PRIMARY KEY(id_video));
        CREATE TABLE Events(id_event int,id_video int,id_user int,type text,time_video int,create_date timestamp,PRIMARY KEY (id_event));
        CREATE TABLE Ratings(id_rating int,id_video int,rating int,primary KEY (id_rating));



--- WITH CLUSTERING ORDER BY source: https://stackoverflow.com/questions/27235061/error-creating-table-in-cassandra-bad-request-only-clustering-key-columns-can