from cassandra.cluster import Cluster

cluster = Cluster(['localhost'], port=9999)

#### SELECT KEYSPACE ####
keyspace_name = "system_views"
session = cluster.connect(keyspace_name)

# Read simple:
print("Reading")

clients = session.execute('SELECT * FROM system_schema.keyspaces;')
for client in clients:
    print(client, end="\n")


