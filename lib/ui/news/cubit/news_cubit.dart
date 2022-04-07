import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nitv_flutter_test/core/exceptions/app_exceptions.dart';
import 'package:nitv_flutter_test/models/news.dart';
import 'package:nitv_flutter_test/repository/i_news_repo.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

part 'news_cubit.freezed.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  final NewsRepo newsRepo;
  late RefreshController refreshController;
  List<News> dataList = <News>[];

  NewsCubit({
    required this.newsRepo,
  }) : super(const _Loading()) {
    initListener();
  }

  initListener() {
    refreshController = RefreshController(initialRefresh: false);
    onRefresh();
  }

  void onRefresh() {
    _fetchNews();
  }

  Future<void> _fetchNews() async {
    try {
      await Future.delayed(const Duration(seconds: 2), () {});
      dataList = await newsRepo.getNewsList();
      emit(const _Loading());
      emit(_Idle(dataList));
      refreshController.refreshCompleted();
    } on AppException catch (e) {
      emit(_Error(e.message));
      refreshController.refreshFailed();
    } catch (e) {
      emit(const _Error("Something went wrong"));
      refreshController.refreshFailed();
    }
  }
}
