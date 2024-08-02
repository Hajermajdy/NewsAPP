import 'package:flutter/material.dart';
import 'package:news_app/models/data_of_card.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key,required this.card});

  final DataOfCard card;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6),
      child: Container(
        height: 85,
        width: 120,
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(card.pathImg),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Center(
          child: Text(
            card.title,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
