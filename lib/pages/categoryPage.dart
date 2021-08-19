import 'package:flutter/material.dart';
import 'package:upahaar_solutions/data/fake.dart';
import 'package:upahaar_solutions/widgets/app_bottom_navigation.dart';
import 'package:upahaar_solutions/widgets/category_widgets/electronics_grid_item.dart';
import 'package:upahaar_solutions/widgets/category_widgets/header_sliver.dart';
class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavigation(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate: HeaderSliver(
                minExtent: 120,
                maxExtent: 120,
              ),
            ),
            SliverGrid.count(
              crossAxisCount: 2,
              childAspectRatio: 0.65,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: Fake.electronics.asMap().entries.map((f) {
                return ElectronicsGridItem(
                    item: f.value,
                    margin: EdgeInsets.only(
                      left: f.key.isEven ? 16 : 0,
                      right: f.key.isOdd ? 16 : 0,
                    ));
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
