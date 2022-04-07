
import 'package:nitv_flutter_test/models/news.dart';

abstract class NewsRepo {
  Future<List<News>> getNewsList();
}
