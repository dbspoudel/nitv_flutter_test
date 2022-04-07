import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nitv_flutter_test/models/news.dart';
import 'package:nitv_flutter_test/ui/news/cubit/news_cubit.dart';
import 'package:nitv_flutter_test/ui/news/widgets/news_card.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:intl/intl.dart';

class NewsDetailsScreen extends StatelessWidget {
  final News model;

  const NewsDetailsScreen({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Hero(
                    tag: model.title ?? "",
                    child: Image.network(
                      model.imageUrl ?? "",
                      height: 300,
                      width: double.maxFinite,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: const CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.white54,
                          child: Center(
                              child: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Colors.black,
                          )),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.title ?? "",
                      style: themeData.textTheme.headline6,
                    ),
                    const SizedBox(height: 12.0),
                    Text(
                      DateFormat("dd/mm/yyyy").format(DateTime.parse(model.publishedAt ?? "")),
                      textAlign: TextAlign.right,
                      style: themeData.textTheme.caption,
                    ),
                    Text(
                      model.authorName ?? "",
                      style: themeData.textTheme.bodyText2,
                    ),
                    const SizedBox(height: 12.0),
                    Text(
                      model.content ?? "",
                      textAlign: TextAlign.justify,
                      style: themeData.textTheme.bodyText2?.copyWith(color: themeData.disabledColor),
                    ),
                    const SizedBox(height: 8.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
