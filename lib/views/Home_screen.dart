import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_ListView.dart';
import 'package:news_app/widgets/news.dart';
import 'package:news_app/widgets/news_listview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "Cloud",
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CategoryListView(),
            ),
            NewsListView(),
          ],
        ),
      ),
    );
  }
}
