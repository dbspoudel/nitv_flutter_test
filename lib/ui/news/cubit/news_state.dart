part of 'news_cubit.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.idle(List<News> newsList) = _Idle;
  const factory NewsState.loading() = _Loading;
  const factory NewsState.error(String errorMessage) = _Error;
}
