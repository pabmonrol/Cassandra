-- a).

    -- User table:
        cqlsh> CREATE KEYSPACE apartadoA WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};
        cqlsh> USE apartadoa ;
        cqlsh:apartadoa> CREATE TABLE Users(
                     ... id_user int,
                     ... username text,
                     ... name text,
                     ... email text,
                     ... register_date timestamp,
                     ... PRIMARY KEY(id_user));
        cqlsh:apartadoa> SELECT * FROM users;

         id_user | email | name | register_date | username
        ---------+-------+------+---------------+----------

    -- Videos' table:
        cqlsh:apartadoa> CREATE TABLE Videos(
             ... id_video int,
             ... author text,
             ... title_video text,
             ... description text,
             ... tag_set set<text>,
             ... upload_date timestamp,
             ... PRIMARY KEY (id_video));
        cqlsh:apartadoa> SELECT * FROM videos ;

         id_video | author | description | tag_set | title_video | upload_date
        ----------+--------+-------------+---------+-------------+-------------

    -- Comment's table:
        cqlsh:apartadoa> CREATE TABLE Comments(
             ... id_comment int,
             ... username text,
             ... title_video text,
             ... create_date timestamp,
             ... PRIMARY KEY (id_comment));
        cqlsh:apartadoa> SELECT * FROM comments;

         id_comment | create_date | title_video | username
        ------------+-------------+-------------+----------

    -- Followers' table:
        cqlsh:apartadoa> CREATE TABLE Followers(
             ... id_video int,
             ... user_emails set<text>),
             ... PRIMARY KEY(id_video));
        cqlsh:apartadoa> SELECT * FROM followers ;

         id_video | user_emails
        ----------+-------------

    -- Events' table:
        cqlsh:apartadoa> CREATE TABLE Events(
             ... id_event int,
             ... id_video int,
             ... id_user int,
             ... type set<text>,
             ... time_video int,
             ... create_date timestamp,
             ... primary KEY (id_event));
        cqlsh:apartadoa> SELECT * FROM events ;

         id_event | create_date | id_user | id_video | time_video | type
        ----------+-------------+---------+----------+------------+------

    -- Valorations' table:
        cqlsh:apartadoa> CREATE TABLE Rating(
                     ... id_rating int,
                     ... id_video int,
                     ... rating int,
                     ... primary KEY (id_rating));
        cqlsh:apartadoa> SELECT * FROM rating ;

         id_rating | id_video | rating
        -----------+----------+--------


-- b).

    --
