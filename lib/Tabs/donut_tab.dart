import 'package:donut_app/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  List donutOnSale = [
    ["StrawBerry", "36", Colors.blue, "assets/images/donut.png"],
    ["Chocolate", "72", Colors.brown, "assets/images/donut_1.png"],
    ["Mango ", "69", Colors.yellow, "assets/images/donut_2.png"],
    ["Mango", "96", Colors.purple, "assets/images/donut_4.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: donutOnSale.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.4,
        ),
        itemBuilder: (context, index) {
          return DonutTile(
            donutFlavour: donutOnSale[index][0],
            donutPrice: donutOnSale[index][1],
            donutColor: donutOnSale[index][2],
            imageName: donutOnSale[index][3],
          );
        });
  }
}
