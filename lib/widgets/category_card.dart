import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:upahaar_solutions/constants/colors.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String iconPath;
  final Function() onTap;

  const CategoryCard({
    Key key,
    @required this.title,
    @required this.iconPath,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 90,
        width: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20)
      ),
      border: Border.all(
        width: 2,
        color: orangeFontColor.withOpacity(0.2),
        style: BorderStyle.solid,
      ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: orangeFontColor.withOpacity(0.2),
                offset: Offset.zero,
                blurRadius: 15.0)
          ],
        ),
        child: Center(
          child: Wrap(
            direction: Axis.vertical,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Container(
                height: 42,
                width: 42,
                child: SvgPicture.asset(
                  iconPath,
                  color: primaryColor,
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16.0,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
