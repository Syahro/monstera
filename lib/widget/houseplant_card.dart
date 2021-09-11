import 'package:flutter/material.dart';

import '../theme.dart';

class HouseplantCard extends StatelessWidget {
  final String imageUrl;
  final String category;
  final String name;
  final String price;
  final Gradient backgroundImage;
  final String isSize;

  HouseplantCard({
    this.imageUrl,
    this.category,
    this.name,
    this.price,
    this.backgroundImage,
    this.isSize,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: (isSize == 'Big')
          ? 350
          : (isSize == "Medium")
              ? 329
              : (isSize == "Small")
                  ? 279
                  : 0,
      width: ((MediaQuery.of(context).size.width - (2 * 24)) / 2) - 9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: accentDarkColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: (isSize == "Big")
                ? 236
                : (isSize == "Medium")
                    ? 193
                    : (isSize == "Small")
                        ? 165
                        : 0,
            padding: EdgeInsets.symmetric(
              horizontal: 14.55,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              gradient: backgroundImage,
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
                )
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
                  name,
                  style: bodyRegularTextStyle.copyWith(
                    color: darkColor,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  price,
                  style: bodyBoldTextStyle.copyWith(
                    color: primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
