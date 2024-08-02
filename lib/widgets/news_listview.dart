import 'package:flutter/material.dart';
import 'package:news_app/widgets/news.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 3,
        (context, index) {
          return const News();
        },
      ),
    );
  }
}
