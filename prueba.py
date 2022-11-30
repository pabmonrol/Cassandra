from cassandra.cluster import Cluster

cluster = Cluster(['localhost'], port=9999)
print('CLUSTER: Success conection ✓\n')

#### SELECT KEYSPACE ####
keyspace_name = "apartadoa"
session = cluster.connect(keyspace_name)
print('KEYSPACE: Success access ✓\n')

# 3.3 a).
print("Desmostration of CRUD operations:")


def read_all_table(table):
    res = session.execute('SELECT * FROM ' + table + ';')
    for r in res:
        print(r, end="\n")


def read_all_query_table(query):
    res = session.execute(query)
    for r in res:
        print(r, end="\n")


# def read_id_exception_table(table, exception):
#     query = session.prepare('SELECT * FROM ' + table + ' WHERE id_student = ?')
#     for e in exception:
#         res = session.execute(query, [e]).one()
#         print(res, end="\n")
#
#
# def insert_table():
#     table = input("Table: ")
#     query = input("Insert query: ")
#     session.execute(str(query))
#     print('Table´s Check:')
#     print(read_all_table(str(table)))
#
#
# def update_add_column_table(table, column, type_colum):
#     session.execute('ALTER TABLE ' + table + ' ADD ' + column + ' ' + type_colum + ';')
#     print(read_all_table(table))


# 3.3 b).

def create_index(table, column):
    session.execute('CREATE INDEX ON ' + table + ' (' + column + ');')


# def videos_with_tag(table, exception):
# create_index('Videos', 'tag_set')
# session.execute('SELECT * FROM ' + table + ' WHERE tag_set CONTAINS ' + exception)
# print(read_all_table(table) 'dosage')

text = "existing monthly omissions parts incidence"
queryy = 'SELECT * FROM Videos WHERE title_video = ' + text + ';'
print(read_all_query_table(queryy))
