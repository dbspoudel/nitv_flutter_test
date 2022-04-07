import 'package:injectable/injectable.dart';
import 'package:nitv_flutter_test/data/source/remote_source.dart';
import 'package:nitv_flutter_test/models/news.dart';
import 'package:nitv_flutter_test/repository/i_news_repo.dart';

@lazySingleton(as: NewsRepo)
class NewsRepoImp implements NewsRepo {
  final RemoteSource remoteSource;

  NewsRepoImp({required this.remoteSource});

  @override
  Future<List<News>> getNewsList() async {
    await Future.delayed(const Duration(seconds: 2));
    return [];
  }
}
