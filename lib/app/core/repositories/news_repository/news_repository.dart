import 'package:get/get.dart';
import 'package:news_app/app/core/helper/loggers/logger.dart';
import 'package:news_app/app/core/models/news_model.dart';
import 'package:news_app/app/core/repositories/news_repository/news_repository_interface.dart';
import 'package:news_app/app/core/rest_client/rest_client.dart';

class NewsRepository implements NewsRepositoryInterface {
  final _logger = Get.find<ILogger>();
  final RestClient _restClient;

  NewsRepository({required RestClient restiClient}) : _restClient = restiClient;

  @override
  Future<List<NewsModel>> getNews() async {
    try {
      var result = await _restClient.get(
        'http://localhost:3031/news',
      );
      var newsList = <NewsModel>[];
      if (result.data != null) {
        for (var item in result.data) {
          newsList.add(
            NewsModel.fromJson(item),
          );
        }
      }
      return newsList;
    } catch (e, s) {
      _logger.error('Error loading news', e, s);
      return <NewsModel>[];
    }
  }
}
