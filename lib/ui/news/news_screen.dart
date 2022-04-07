import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nitv_flutter_test/ui/news/cubit/news_cubit.dart';
import 'package:nitv_flutter_test/ui/news/news_details_screen.dart';
import 'package:nitv_flutter_test/ui/news/widgets/news_card.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final notificationCubit = context.read<NewsCubit>();

    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: SmartRefresher(
            controller: notificationCubit.refreshController,
            enablePullDown: true,
            enablePullUp: false,
            onRefresh: notificationCubit.onRefresh,
            child: state.when(
              loading: () => const Center(child: CircularProgressIndicator.adaptive()),
              error: (errMsg) => Center(child: Text(errMsg)),
              idle: (newsList) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: newsList
                      .map(
                        (e) => NewsCard(
                          model: e,
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => NewsDetailsScreen(
                                model: e,
                              ),
                            ));
                          },
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
