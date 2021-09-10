import 'package:flutter/material.dart';

import '../theme.dart';

class CategoryCard extends StatelessWidget {
  final Gradient backgroundGradient;
  final String imageUrl;
  final Color backgroundTitle;
  final String title;

  CategoryCard(
    this.backgroundGradient,
    this.imageUrl,
    this.backgroundTitle,
    this.title,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 152,
      width:
          ((MediaQuery.of(context).size.width - (2 * defaultMargin)) / 2) - 8,
      decoration: BoxDecoration(
        gradient: backgroundGradient,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              'assets/$imageUrl',
              width: 124.45,
              height: 152,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 42,
              decoration: BoxDecoration(
                color: backgroundTitle,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(16),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                child: Text(
                  title,
                  style: bodyRegularTextStyle.copyWith(
                    color: darkColor,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
