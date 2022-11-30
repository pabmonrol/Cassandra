-- e). Utilização de 5 updates e 5 deletes de dados:

    -- UPDATE & DELETE: LIST
        DELETE cellar_names[0] FROM Owners WHERE id_owner = 5;
        UPDATE Owners SET cellar_names = cellar_names + ['Morissette-Barton'] WHERE id_owner = 2;

    -- UPDATE & DELETE: SET
        DELETE type_grape['Moon Drops'] FROM Grapes WHERE id_grape = 6;
        DELETE type_grape['Concord'] FROM Grapes WHERE id_grape = 2;
        UPDATE Grapes SET type_grape = type_grape - {'Dominga'} WHERE id_grape = 5;
        UPDATE Grapes SET type_grape = type_grape + {'Concord'} WHERE id_grape = 9;

    -- UPDATE & DELETE: MAP
        UPDATE Wines SET num_barrel = num_barrel + {'Cherry wood':18} WHERE id_wine = 1 AND wine_name = 'Calcareous Scribble Lichen';
        UPDATE Wines SET num_barrel = num_barrel - {'Oak'} WHERE id_wine = 6 AND wine_name = 'Mapele';
        DELETE num_barrel FROM Wines WHERE id_wine = 2 AND wine_name = 'Mapele';
        DELETE num_barrel['Acacia'] FROM Wines WHERE id_wine = 3 AND wine_name = 'Halls Rinodina Lichen';


-- f). Criação de 10 queries expressivas:

    -- Select a wine given a id and a name:
        SELECT * FROM Wines WHERE id_wine = 1 AND wine_name = 'Calcareous Scribble Lichen';

    -- Number of Acacia's barrel given a id and a name:
        SELECT num_barrel['Acacia'] FROM Wines WHERE id_wine = 6 AND wine_name = 'Mapele';

    -- Number of Acacia's barrel used in all cellar:
        SELECT sum(num_barrel['Acacia']) FROM Wines;

    -- Three grapes with a given id. Orders by date_harvest:
        SELECT * FROM Grapes WHERE id_grape = 10 ORDER BY date_harvest DESC LIMIT 3;

    --



