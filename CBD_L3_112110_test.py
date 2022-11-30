from CBD_L3_112110 import *


def test_follower_of_video():
    table = 'Followers'
    id_v = '47828'
    print(follower_of_video(table, id_v))


def test_n_last_comments_video():
    table = 'Comments'
    id_v = '47280'
    n = '3'
    print(n_last_comments_video(table, id_v, n))


def test_tags_of_video():
    table = 'Videos'
    id_v = '82004'
    print(tags_of_video(table, id_v))


def test_min_rating_of_video():
    table = 'Ratings'
    id_v = '97995'
    min_rating_of_video(table, id_v)


if __name__ == '__main__':

    # print('Todos os seguidores (followers) de determinado vídeo:')
    # print(test_follower_of_video())
    # print(" ")

    # print('Os últimos n comentários introduzidos para um vídeo:')
    # print(test_n_last_comments_video())
    # print(" ")

    # print('Lista das tags de determinado vídeo:')
    # print(test_tags_of_video())
    # print(" ")

    # print('O rating mínimo de um vídeo:')
    # print(test_min_rating_of_video())
