import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavour;
  final String donutPrice;
  final donutColor;
  final String imageName;

  const DonutTile(
      {super.key,
      required this.donutFlavour,
      required this.donutPrice,
      required this.donutColor,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: donutColor[50],
        ),
        child: Column(
          children: [
            //* Price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                    color: donutColor[200],
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    donutPrice,
                    style: GoogleFonts.acme(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: donutColor),
                  ),
                ),
              ],
            ),

            //* Donut Picture
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Image.asset(imageName),
            ),
            //* Donut Flavour
            Text(
              donutFlavour,
              style: GoogleFonts.acme(
                  fontWeight: FontWeight.bold, letterSpacing: 2),
            )

            //* donut Button
          ],
        ),
      ),
    );
  }
}
