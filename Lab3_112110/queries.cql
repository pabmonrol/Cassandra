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

    ---





