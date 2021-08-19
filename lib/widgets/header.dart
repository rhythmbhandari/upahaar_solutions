import 'package:flutter/material.dart';
import 'package:upahaar_solutions/data/fake.dart';
import 'package:upahaar_solutions/widgets/cart.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /*Icon(
                Icons.pin_drop,
                color: orangeFontColor,
                size: 20.0,
              ),*/
              /*Text(
                '  Sanepa, Kathmandu',
                style: GoogleFonts.raleway(
                    color: darkFontColor,
                    fontSize: 20),
              ),*/
              Image.asset(
                "assets/images/Logo_Orange.png",
                width: screenSize.width * 0.5,
                height: screenSize.height * 0.1,
              ),
              /*Text(
                'Upahaar Solutions',
                style: GoogleFonts.raleway(
                    color: darkFontColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),*/
              Cart(numberOfItemsInCart: Fake.numberOfItemsInCart),
            ],
          ),
        ],
      ),
    );
  }
}
