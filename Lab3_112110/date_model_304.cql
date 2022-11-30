-- Unit a).

-- Create KeySpace:
        CREATE KEYSPACE wines WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};
        USE wines ;

-- Delete tables:
        DROP TABLE WINES;
        DROP TABLE GRAPES;
        DROP TABLE CELLARS;
        DROP TABLE OWNERS;

-- Create tables:
        CREATE TABLE Wines(id_wine int,wine_name text,id_cellar int, date_bottled timestamp, num_barrel map<text,int>, PRIMARY KEY(id_wine, wine_name));
        CREATE TABLE Grapes(id_grape int,origin text,date_harvest timestamp,type_grape set<text>,PRIMARY KEY (id_grape, date_harvest)) WITH CLUSTERING ORDER BY (date_harvest DESC);
        CREATE TABLE Cellars(id_cellar int,cellar_name text,location text,owner_name text,PRIMARY KEY (id_cellar, cellar_name));
        CREATE TABLE Owners(id_owner int, owner_name text, cellar_names list<text>, PRIMARY KEY(id_owner));


