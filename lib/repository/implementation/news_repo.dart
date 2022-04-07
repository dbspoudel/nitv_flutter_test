import 'package:injectable/injectable.dart';
import 'package:nitv_flutter_test/core/exceptions/app_exceptions.dart';
import 'package:nitv_flutter_test/data/source/remote_source.dart';
import 'package:nitv_flutter_test/models/news.dart';
import 'package:nitv_flutter_test/repository/i_news_repo.dart';

@LazySingleton(as: NewsRepo)
class NewsRepoImp implements NewsRepo {
  final RemoteSource remoteSource;

  NewsRepoImp({required this.remoteSource});

  @override
  Future<List<News>> getNewsList() async {
    try {
      final response = await remoteSource.get(newsEndpoint);
      final responseList = response['articles'] as List;
      return List<News>.generate(responseList.length, (index) => News.fromJson(responseList.elementAt(index)));
    } on AppException {
      rethrow;
    }
  }
}

const newsEndpoint = "top-headlines";
