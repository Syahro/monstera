import 'package:flutter/material.dart';
import 'package:monstera/pages/houseplant_page.dart';

import '../theme.dart';

class CategoryDetailCard extends StatelessWidget {
  final String imageUrl;
  final String category;
  final String title;
  final String price;
  final Gradient backgorundLinear;

  CategoryDetailCard({
    this.imageUrl,
    this.category,
    this.title,
    this.price,
    this.backgorundLinear,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return HouseplantPage();
            },
          ),
        );
      },
      child: Container(
        height: 279,
        width: ((MediaQuery.of(context).size.width - (2 * 24)) / 2) - 8,
        decoration: BoxDecoration(
          border: Border.all(color: accentDarkColor),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: ((MediaQuery.of(context).size.width - (2 * 24)) / 2) - 8,
              height: 165,
              padding: EdgeInsets.symmetric(horizontal: 14.55, vertical: 10),
              decoration: BoxDecoration(
                gradient: backgorundLinear,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(16),
                ),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/$imageUrl',
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.favorite_border,
                        color: whiteColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category,
                    style: smallTextStyle.copyWith(
                      color: textDefaultColor,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    title,
                    style: bodyRegularTextStyle.copyWith(
                      color: darkColor,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'IDR $price',
                    style: bodyBoldTextStyle.copyWith(
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
