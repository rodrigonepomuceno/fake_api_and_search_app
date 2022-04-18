import 'package:news_app/app/core/models/news_model.dart';

abstract class NewsRepositoryInterface {
  Future<List<NewsModel>> getNews();
  Future<void> update(NewsModel news);
}
