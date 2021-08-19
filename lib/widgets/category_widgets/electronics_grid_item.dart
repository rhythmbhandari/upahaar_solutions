import 'package:flutter/material.dart';
import 'package:upahaar_solutions/constants/colors.dart';
import 'package:upahaar_solutions/models/item.dart';


class ElectronicsGridItem extends StatelessWidget {
  final Item item;
  final EdgeInsets margin;

  const ElectronicsGridItem({
    Key key,
    @required this.item,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin == null ? EdgeInsets.zero : margin,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: Offset.zero,
            blurRadius: 15.0,
          )
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 37),
                  height: 180,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.bottomCenter,
                      image: AssetImage(item.imagePath),
                    ),
                  ),
                ),
                if (item.discountPercent != null)
                  Positioned(
                    top: 16,
                    right: 16,
                    child: Container(
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        '${item.discountPercent}%',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    height: 1.5,
                  ),
                ),
                Wrap(
                  spacing: 3,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      '${Item.format(item.price)}',
                      style: TextStyle(
                        fontSize: 18,
                        color: primaryColor,
                        height: 1.5,
                      ),
                    ),
                    if (item.discountPercent != null)
                      Text(
                        '${Item.format(item.originalPrice)}',
                        style: TextStyle(
                          fontSize: 12,
                          height: 1.5,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.black38,
                        ),
                      )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Row(
                    children: [
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
