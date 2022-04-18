import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:news_app/app/core/repositories/news_repository/news_repository_interface.dart';
import '../../core/repositories/news_repository_mock.dart';

void main() {
  final binding = BindingsBuilder(() {
    Get.lazyPut<NewsRepositoryInterface>(
      () => NewsRepositoryMock(),
      fenix: true,
    );
  });
  binding.builder();
  final repository = Get.find<NewsRepositoryInterface>();
  test('Return NewsModel list', () async {
    final list = await repository.getNews();

    expect(list[0].title, 'Test Mock');
  });
}
