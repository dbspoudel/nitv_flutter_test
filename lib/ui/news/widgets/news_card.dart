import 'package:flutter/material.dart';
import 'package:nitv_flutter_test/models/news.dart';

class NewsCard extends StatelessWidget {
  final News model;
  final VoidCallback? onTap;

  const NewsCard({
    Key? key,
    required this.model,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          elevation: 5,
          margin: const EdgeInsets.only(bottom: 18.0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Column(
            children: [
              Hero(
                tag: model.title??"",
                child: Image.network(
                  model.imageUrl ?? "",
                  height: 200,
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.title ?? "",
                      style: themeData.textTheme.bodyText1,
                    ),
                    const SizedBox(height: 12.0),
                    Text(
                      model.description ?? "",
                      maxLines: 4,
                      textAlign: TextAlign.justify,
                      overflow: TextOverflow.ellipsis,
                      style: themeData.textTheme.caption?.copyWith(color: themeData.disabledColor),
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
