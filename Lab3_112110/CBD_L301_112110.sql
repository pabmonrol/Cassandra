-- c) Produce a report (CBD_L301_<NMEC>.TXT) with all iterations with the "cqlsh". Comment on some of the operations.

-- Criação, descrição e utilização de Keyspace
    --- Created a keyspace: keyspace defines data replication on nodes in Cassandra. A cluster contains one keyspace per node
        CREATE KEYSPACE prueba WITH replication = {'class': 'SimpleStrategy','replication_factor': 1};
        ---- Kind of Replications:
                ----- Simple Strategy | Specifies a simple replication factor for the cluster.
                ----- Network Topology Strategy | Using this option, you can set the replication factor for each data-center independently.
                ----- Old Network Topology Strategy | This is a legacy replication strategy.
    --- Describe keyspaces: list the keyspaces in stock
        DESCRIBE keyspaces;
    --- Use a specific keyspace: to work in a specific keyspace
        USE prueba;
    --- Alter keyspace: used to alter properties such as the number of replicas and the durable_writes of a KeySpace
        ALTER KEYSPACE prueba WITH replication = {'class': 'new replication class','replication_factor': 'Number of replications'}
    --- Delete a keyspace
        DROP KEYSPACE prueba;

-- Criação e descrição de Tablas
    --- Create table: We need to select a column for the primaryKey
        cqlsh:prueba> DESCRIBE TABLEs
        cqlsh:prueba> CREATE TABLE student(
                  ... id_student int,
                  ... name_student text,
                  ... subjects_student set<text>
                  ... professors_student list<text>,
                  ... );
        cqlsh:prueba> DESCRIBE TABLES

        student

        cqlsh:prueba> SELECT * FROM student;

         id_student | name_student | professors_student | subjects_student
         -----------+--------------+--------------------+------------------

    --- Alter table: Add a new column
        cqlsh:prueba> ALTER TABLE student
                      ... ADD birthday date;
        cqlsh:prueba> SELECT * FROM student;

         id_student | birthday | name_student | professors_student | subjects_student
        ------------+----------+--------------+--------------------+------------------

        ---- As We can see, the order is alphabetical, but predomain primaryKey

        cqlsh:prueba> ALTER TABLE student DROP birthday ;
        cqlsh:prueba> SELECT * FROM student;

         id_student | name_student | professors_student | subjects_student
        ------------+--------------+--------------------+------------------

    --- Create an index: Create an index using an existing column
        cqlsh:prueba> CREATE INDEX name_student ON student (name_student);

    --- Delete an index:
        cqlsh:prueba> DROP INDEX name_student ;

    --- TRUNCATE: the fast way to empty a table
        cqlsh:prueba> TRUNCATE student ;
        cqlsh:prueba> SELECT * FROM student;

         id_student | name_student | professors_student | subjects_student
        ------------+--------------+--------------------+------------------

    --- Launch a batch: Execute multiple modifications at the same time
        cqlsh:prueba> BEGIN BATCH
                    ... INSERT INTO student (id_student , name_student , professors_student , subjects_student) VALUES ( 1,'Pedro',['Angela', 'Juan', 'Ana'],{'Matematicas','Lengua','Ingles'}) ;
                    ... INSERT INTO student (id_student , name_student , professors_student , subjects_student) VALUES ( 2,'Alicia',['Juan', 'Ana'],{'Lengua','Ingles'}) ;
                    ... INSERT INTO student (id_student , name_student , professors_student , subjects_student) VALUES ( 3,'Maria',['Juan', 'Ana','Lucia'],{'Lengua','Ingles','Frances'})
                    APPLY BATCH ;
        cqlsh:prueba> SELECT * FROM student;

         id_student | name_student | professors_student        | subjects_student
        ------------+--------------+---------------------------+-------------------------------------
                  1 |        Pedro | ['Angela', 'Juan', 'Ana'] | {'Ingles', 'Lengua', 'Matematicas'}
                  2 |       Alicia |           ['Juan', 'Ana'] |                {'Ingles', 'Lengua'}
                  3 |        Maria |  ['Juan', 'Ana', 'Lucia'] |     {'Frances', 'Ingles', 'Lengua'}

-- Escrita, Leitura, Edição, Remoção (CRUD)
    --- INSERT INTO: insert data in a table
        cqlsh:prueba> INSERT INTO student (id_student , name_student , professors_student , subjects_student) VALUES ( 1,'Pedro',['Angela', 'Juan', 'Ana'],{'Matematicas','Lengua','Ingles'}) ;
        cqlsh:prueba> INSERT INTO student (id_student , name_student , professors_student , subjects_student) VALUES ( 2,'Alicia',['Juan', 'Ana'],{'Lengua','Ingles'}) ;
        cqlsh:prueba> INSERT INTO student (id_student , name_student , professors_student , subjects_student) VALUES ( 3,'Maria',['Juan', 'Ana','Lucia'],{'Lengua','Ingles','Frances'},{'math':(3,7,1), 'ingles':(0,4,3)})

         id_student | name_student | professors_student        | subjects_student
        ------------+--------------+---------------------------+-------------------------------------
                  1 |        Pedro | ['Angela', 'Juan', 'Ana'] | {'Ingles', 'Lengua', 'Matematicas'}
                  2 |       Alicia |           ['Juan', 'Ana'] |                {'Ingles', 'Lengua'}
                  3 |        Maria |  ['Juan', 'Ana', 'Lucia'] |     {'Frances', 'Ingles', 'Lengua'}

        ---- Workinig with maps and nested object:
            cqlsh:prueba> ALTER TABLE student ADD marks_student map<text,tuple<int,int,int>> ;
            cqlsh:prueba> SELECT * FROM student;

             id_student | marks_student                            | name_student | professors_student
            ------------+------------------------------------------+--------------+---------------------------
                      1 | {'ingles': (4, 6, 8), 'math': (7, 3, 5)} |        Pedro | ['Angela', 'Juan', 'Ana']
                      2 | {'ingles': (0, 0, 6), 'math': (1, 5, 8)} |       Alicia |           ['Juan', 'Ana']
                      3 | {'ingles': (5, 7, 8), 'math': (3, 5, 9)} |        Maria |  ['Juan', 'Ana', 'Lucia']


    --- UPDATE _ SET _ WHERE: update data in table. Use WHERE to indicated the correct row
        cqlsh:prueba> UPDATE student SET name_student = 'Pablo' WHERE id_student = 1;
        cqlsh:prueba> SELECT * FROM student;

         id_student | name_student | professors_student        | subjects_student
        ------------+--------------+---------------------------+-------------------------------------
                  1 |        Pablo | ['Angela', 'Juan', 'Ana'] | {'Ingles', 'Lengua', 'Matematicas'}
                  2 |       Alicia |           ['Juan', 'Ana'] |                {'Ingles', 'Lengua'}
                  3 |        Maria |  ['Juan', 'Ana', 'Lucia'] |     {'Frances', 'Ingles', 'Lengua'}

    --- READING:
        cqlsh:prueba> SELECT id_student, subjects_student FROM student;

         id_student | subjects_student
        ------------+-------------------------------------
                  1 | {'Ingles', 'Lengua', 'Matematicas'}
                  2 |                {'Ingles', 'Lengua'}
                  3 |     {'Frances', 'Ingles', 'Lengua'}

        cqlsh:prueba> SELECT id_student, subjects_student FROM student WHERE name_student = 'Pablo' ALLOW FILTERING ;

         id_student | subjects_student
        ------------+-------------------------------------
                  1 | {'Ingles', 'Lengua', 'Matematicas'}

    ---DELETE FROM: Delete rows/columns from a table
        ---- Rows:
            cqlsh:prueba> DELETE FROM student WHERE id_student = 2;
            cqlsh:prueba> SELECT * FROM student;

             id_student | name_student | professors_student        | subjects_student
            ------------+--------------+---------------------------+-------------------------------------
                      1 |        Pablo | ['Angela', 'Juan', 'Ana'] | {'Ingles', 'Lengua', 'Matematicas'}
                      3 |        Maria |  ['Juan', 'Ana', 'Lucia'] |     {'Frances', 'Ingles', 'Lengua'}

        ---- Columns:
            cqlsh:prueba> DELETE subjects_student FROM student WHERE id_student = 3;
            cqlsh:prueba> SELECT * FROM student;

             id_student | name_student | professors_student        | subjects_student
            ------------+--------------+---------------------------+-------------------------------------
                      1 |        Pablo | ['Angela', 'Juan', 'Ana'] | {'Ingles', 'Lengua', 'Matematicas'}
                      3 |        Maria |  ['Juan', 'Ana', 'Lucia'] |                                null

-- Time-to-live e Timestamp
    cqlsh:prueba> INSERT INTO student (id_student , marks_student, name_student , professors_student) VALUES ( 4,{'math':(3,7,1), 'ingles':(0,4,3)},'Maria',['Juan', 'Ana','Lucia']) USING TTL 40;
    cqlsh:prueba> SELECT * FROM student;

     id_student | marks_student                            | name_student | professors_student
    ------------+------------------------------------------+--------------+---------------------------
              1 | {'ingles': (4, 6, 8), 'math': (7, 3, 5)} |        Pedro | ['Angela', 'Juan', 'Ana']
              2 | {'ingles': (0, 0, 6), 'math': (1, 5, 8)} |       Alicia |           ['Juan', 'Ana']
              4 | {'ingles': (0, 4, 3), 'math': (3, 7, 1)} |        Maria |  ['Juan', 'Ana', 'Lucia']
              3 | {'ingles': (5, 7, 8), 'math': (3, 5, 9)} |        Maria |  ['Juan', 'Ana', 'Lucia']

         
    cqlsh:prueba> SELECT * FROM student;

     id_student | marks_student                            | name_student | professors_student
    ------------+------------------------------------------+--------------+---------------------------
              1 | {'ingles': (4, 6, 8), 'math': (7, 3, 5)} |        Pedro | ['Angela', 'Juan', 'Ana']
              2 | {'ingles': (0, 0, 6), 'math': (1, 5, 8)} |       Alicia |           ['Juan', 'Ana']
              3 | {'ingles': (5, 7, 8), 'math': (3, 5, 9)} |        Maria |  ['Juan', 'Ana', 'Lucia']
