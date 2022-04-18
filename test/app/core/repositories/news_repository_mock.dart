import 'dart:convert';
import 'package:news_app/app/core/models/news_model.dart';
import 'package:news_app/app/core/repositories/news_repository/news_repository_interface.dart';
import 'package:news_app/app/core/rest_client/rest_client_response.dart';

class NewsRepositoryMock implements NewsRepositoryInterface {
  NewsRepositoryMock();

  @override
  Future<List<NewsModel>> getNews() async {
    try {
      var result = RestClientResponse(data: jsonDecode(jsonData));
      var newsList = <NewsModel>[];
      if (result.data != null) {
        newsList = (result.data as List).map<NewsModel>((item) => NewsModel.fromJson(item)).toList();
      }

      return newsList;
    } catch (e) {
      return <NewsModel>[];
    }
  }

  @override
  Future<void> update(NewsModel news) async {
    return;
  }
}

String jsonData = '''[
        {
            "id": "0",
            "type": 0,
            "title": "Test Mock",
            "contents": "The formal relationships of thick with thin lines, of broken with continuous, and of sinuous with jagged are forces of contrast and repetition in the design. Variations in the painted contours of images also provide a direct method of describing the volume, weight, spatial position, light, and textural characteristics of things.",
            "post_image": "https://i.picsum.photos/id/10/2500/1667.jpg?hmac=J04WWC_ebchx3WwzbM-Z4_KC_LeLBWr5LZMaAkWkF68",
            "liked": false,
            "featured": true,
            "tag": "Oil and Acrilic",
            "dimensions": "61W X 41.3H",
            "comments": [
                {
                    "email": "av1@email.com",
                    "comment": "Adorei o quadro",
                    "stars": 5
                },
                {
                    "email": "av2@email.com",
                    "comment": "Adorei o quadro",
                    "stars": 3
                },
                {
                    "email": "av3@email.com",
                    "comment": "Adorei o quadro",
                    "stars": 4
                }
            ],
            "author": {
                "name": "Bonnie Lybaert",
                "slogan": "Betterpaint Real Deals",
                "avatar": "https://i.pravatar.cc/150?img=16",
                "country": "Germany"
            }
        },
        {
            "id": "1",
            "type": 0,
            "title": "Beach Painting ",
            "contents": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            "post_image": "https://i.picsum.photos/id/100/2500/1656.jpg?hmac=gWyN-7ZB32rkAjMhKXQgdHOIBRHyTSgzuOK6U0vXb1w",
            "liked": false,
            "featured": false,
            "tag": "Change world",
            "dimensions": "90W X 90H",
            "comments": [
                {
                    "email": "email1@email.com",
                    "comment": "Adorei o quadro",
                    "stars": 5
                },
                {
                    "email": "email2@email.com",
                    "comment": "Ótima foto",
                    "stars": 4
                }
            ],
            "author": {
                "name": "Nikkita Tomasaki",
                "slogan": "The Best",
                "avatar": "https://i.pravatar.cc/150?img=33",
                "country": "Japan"
            }
        },
        {
            "id": "2",
            "type": 0,
            "title": "Tree Photo",
            "contents": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            "post_image": "https://i.picsum.photos/id/1023/3955/2094.jpg?hmac=AW_7mARdoPWuI7sr6SG8t-2fScyyewuNscwMWtQRawU",
            "liked": true,
            "featured": true,
            "tag": "Tree",
            "dimensions": "30W X 80H",
            "comments": [
                {
                    "email": "email1@email.com",
                    "comment": "Adorei o quadro",
                    "stars": 5
                },
                {
                    "email": "email2@email.com",
                    "comment": "Podia focar melhor a imagem",
                    "stars": 2
                },
                {
                    "email": "email3@email.com",
                    "comment": "Good",
                    "stars": 4
                },
                {
                    "email": "email4@email.com",
                    "comment": "Boa Foto",
                    "stars": 4
                }
            ],
            "author": {
                "name": "Jose da Silva",
                "slogan": "The Best",
                "avatar": "https://i.pravatar.cc/150?img=4",
                "country": "Brazil"
            }
        }
    ]''';
