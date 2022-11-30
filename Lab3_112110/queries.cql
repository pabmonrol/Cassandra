-- Second part of unit b).

    --- Json Generators:
        ---- Users:
                SELECT json * from users;

        ---- Videos:
                SELECT json * from videos;

        ---- Comments:
                SELECT json * from comments;

        ---- Followers:
                SELECT json * from followers;

        ---- Events:
                SELECT json * from events;

        ---- Ratings:
                SELECT json * from ratings;

-----------------------------------0----------------------------------------

-- Unit c).

    --- Permitir a pesquisa de todos os vídeos de determinado autor:
        CREATE INDEX ON videos(author);
        SELECT * FROM videos WHERE author = 'Karie Schmid';

    --- Permitir a pesquisa de comentários por utilizador, ordenado inversamente pela data:
        ---- First I tried with "SELECT * FROM comments WHERE id_user = 51121 ORDER BY create_date DESC;" but It didn't work
        ---- I used "[...]WITH CLUSTERING ORDER BY (create_date DESC);" at the moment of creation comments table so:
        SELECT * FROM comments WHERE id_user = 51121;

    --- Permitir a pesquisa de comentários por vídeos, ordenado inversamente pela data:
        CREATE INDEX on comments (id_video);
        SELECT * FROM comments WHERE id_video = 43035;

    --- Permitir a pesquisa do rating médio de um vídeo e quantas vezes foi votado:
        CREATE INDEX on ratings (id_video);
        SELECT avg(rating), count(id_rating) FROM ratings WHERE id_video=31780;

-----------------------------------0----------------------------------------

-- Unit d).

    --- Os últimos 3 comentários introduzidos para um vídeo:
        ---- First, I tried with "SELECT * from comments WHERE id_video = 47280 ORDER BY create_date DESC LIMIT 3;" but didn't work
        ---- I used "[...]WITH CLUSTERING ORDER BY (create_date DESC);" at the moment of creation comments table so:
        CREATE INDEX on comments (id_video);
        SELECT * FROM comments WHERE id_video = 47280 LIMIT 3;

    --- Lista das tags de determinado vídeo:
        SELECT tag_set FROM videos WHERE id_video = 82004;

    --- Todos os vídeos com a tag Aveiro;
        CREATE INDEX on videos (tag_set);
        SELECT * FROM videos WHERE tag_set CONTAINS 'Averio';

    --- Os últimos 5 eventos de determinado vídeo realizados por um utilizador;
        ---- Neste caso é inevitável utilizar o “allow filtering” ----
        SELECT * FROM events WHERE id_video = 16636 AND id_user = 23038 LIMIT 5 ALLOW FILTERING;

    --- Vídeos partilhados por determinado utilizador num determinado período de tempo;
        ---- Neste caso é inevitável utilizar o “allow filtering” ----
        SELECT * FROM videos WHERE author = 'Ferne Atwood' AND upload_date > 908734256294 AND upload_date < 1291347357418 ALLOW FILTERING;

    --- Os últimos 10 vídeos, ordenado inversamente pela data da partilhada:
        ---- I used "[...]WITH CLUSTERING ORDER BY (upload_date DESC);" at the moment of creation comments table so:
        SELECT * FROM videos LIMIT 10;

    --- Todos os seguidores (followers) de determinado vídeo:
        SELECT * FROM followers where id_video = 47828;

    --- Todos os comentários (dos vídeos) que determinado utilizador está a seguir (following):
        ---- This exercise is impossible in Cassandra

    --- Os 5 vídeos com maior rating:
        ---- This exercise is impossible in Cassandra

    --- Uma query que retorne todos os vídeos e que mostre claramente a forma pela qual estão ordenados:
        ---- I used "[...]WITH CLUSTERING ORDER BY (upload_date DESC);" at the moment of creation comments table so:
        SELECT * FROM Videos;

    --- Lista com as Tags existentes e o número de vídeos catalogados com cada uma delas:
        ---- This exercise is impossible in Cassandra

    --- O rating mínimo de um vídeo:
        SELECT min(rating) FROM ratings WHERE id_video = 97995;

    --- Mostrar a quantidade de usuários na data 81449316859:
        SELECT count(id_user) FROM users where register_date = 81449316859;







