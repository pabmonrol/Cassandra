from cassandra.cluster import Cluster
# To convert the solution in dicts:
    # from cassandra.query import dict_factory

cluster = Cluster(['localhost'], port=9999)
print('CLUSTER: Success conection ✓\n')

#### SELECT KEYSPACE ####
keyspace_name = "apartadoa"
session = cluster.connect(keyspace_name)
# session.row_factory = dict_factory
print('KEYSPACE: Success access ✓\n')


# 3.3 a).
# print("Desmostration of CRUD operations:")


def read_all_table(table):
    res = session.execute('SELECT * FROM ' + table + ';')
    for r in res:
        print(r, end="\n")


def read_all_query_table(query):
    res = session.execute(query)
    for r in res:
        print(r, end="\n")


def read_id_exception_table(table, exception):
    query = session.prepare('SELECT * FROM ' + table + ' WHERE id_student = ?')
    for e in exception:
        res = session.execute(query, [e]).one()
        print(res, end="\n")


def insert_table():
    table = input("Table: ")
    query = input("Insert query: ")
    session.execute(str(query))
    print('Table´s Check:')
    print(read_all_table(str(table)))


def update_add_column_table(table, column, type_colum):
    session.execute('ALTER TABLE ' + table + ' ADD ' + column + ' ' + type_colum + ';')
    print(read_all_table(table))


# 3.3 b).


def follower_of_video(table, id_v):
    query = 'SELECT * FROM ' + table + ' WHERE id_video = ' + id_v + ';'
    print(read_all_query_table(query))


def n_last_comments_video(table, id_v, n):
    query = 'SELECT * FROM ' + table + ' WHERE id_video = ' + id_v + ' LIMIT ' + n + ';'
    print(read_all_query_table(query))


def tags_of_video(table, id_v):
    query = 'SELECT tag_set FROM ' + table + ' WHERE id_video = ' + id_v + ';'
    read_all_query_table(query)


def min_rating_of_video(table, id_v):
    query = 'SELECT min(rating) FROM ' + table + ' WHERE id_video = ' + id_v + ';'
    print(read_all_query_table(query))
