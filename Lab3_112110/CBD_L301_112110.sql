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

-- Escrita, Leitura, Edição, Remoção (CRUD)
-- Column Values - utilização de nested tuples, collections, etc.
-- Time-to-live e Timestamp
