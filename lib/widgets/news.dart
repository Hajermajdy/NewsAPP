import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            child: Image.network(
              "https://gratisography.com/wp-content/uploads/2024/03/gratisography-vr-glasses-1170x780.jpg",
            ),
          ),
          const Text(
            "This page says this setting became relevant in Android Oreo/8.0. You can change it in the layout xml file if you think keeping the visual changes in the layout xml is the way to go, instead of the way you have done it",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          const Text(
            "This page says this setting became relevant in Android Oreo/8.0. You can change it in the layout xml file if you think keeping the visual changes in the layout xml is the way to go",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
