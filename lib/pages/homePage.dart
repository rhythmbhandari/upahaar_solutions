import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upahaar_solutions/data/fake.dart';
import 'package:upahaar_solutions/widgets/app_bottom_navigation.dart';
import 'package:upahaar_solutions/widgets/category_card.dart';
import 'package:upahaar_solutions/widgets/header.dart';
import 'package:upahaar_solutions/widgets/image_card.dart';
import 'package:upahaar_solutions/widgets/promo_card.dart';
import 'package:upahaar_solutions/widgets/search_bar.dart';
import 'package:upahaar_solutions/widgets/section.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  onCategorySelected(category) {
    Get.toNamed("/categoryPage");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavigation(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              SearchBar(),
              Section(
                'Select Categories',
                Fake.categories.map((c) {
                  return CategoryCard(
                    title: c.title,
                    iconPath: c.iconPath,
                    onTap: () {
                      onCategorySelected(c);
                    },
                  );
                }).toList(),
              ),
              Section(
                'Special Offer',
                Fake.promotions.map((p) {
                  return PromoCard(
                    title: p.title,
                    subtitle: p.subtitle,
                    tag: p.tag,
                    caption: p.caption,
                    //imagePath: p.imagePath,
                    backgroundImagePath: p.backgroundImagePath,
                  );
                }).toList(),
              ),
              Section(
                  'Hot Sales',
                  Fake.trending
                      .map((imagePath) => ImageCard(imagePath))
                      .toList()),
              Section(
                  'Best Sellers',
                  Fake.featured
                      .map((imagePath) => ImageCard(imagePath))
                      .toList()),
            ],
          ),
        ),
      ),
    );
  }
}
