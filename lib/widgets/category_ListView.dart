import 'package:flutter/material.dart';
import 'package:news_app/models/data_of_card.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  static final List<DataOfCard> cards = [
    DataOfCard(pathImg: "assets/technology.jpeg", title: "Technology"),
    DataOfCard(pathImg: "assets/entertaiment.avif", title: "Entertaiment"),
    DataOfCard(pathImg: "assets/science.avif", title: "Science"),
    DataOfCard(pathImg: "assets/health.avif", title: "Health"),
    DataOfCard(pathImg: "assets/technology.jpeg", title: "Technology"),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 120,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: cards.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoryCard(card: cards[index],);
          },
        ),
      ),
    );
  }
}
