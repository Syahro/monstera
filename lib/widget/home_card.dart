import 'package:flutter/material.dart';

import '../theme.dart';

class HomeCard extends StatelessWidget {
  final String imageUrl;
  final String category;
  final String flowerName;
  final String description;
  final String flowerPrice;

  HomeCard({
    this.imageUrl,
    this.category,
    this.flowerName,
    this.description,
    this.flowerPrice,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 508,
      width: 274,
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 426,
              width: 240.53,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: darkColor.withOpacity(0.1),
                    blurRadius: 20,
                    spreadRadius: 3,
                    offset: Offset(0, 0),
                  )
                ],
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: lilyGradient,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(24),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 49.92,
            top: 7,
            child: Image.asset(
              'assets/$imageUrl',
              width: 251,
              height: 300,
            ),
          ),
          Positioned(
            left: 16.73,
            top: 246,
            child: Container(
              height: 223,
              width: 240.53,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(24),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      category,
                      style: bodyRegularTextStyle.copyWith(
                        color: subTitleColor,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      flowerName,
                      style: headerTwoTextStyle.copyWith(
                        color: darkColor,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      description,
                      style: bodyRegularTextStyle.copyWith(
                        color: subTitleColor,
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: darkColor,
                        ),
                        Text(
                          'IDR $flowerPrice',
                          style: bodyBoldTextStyle.copyWith(
                            color: primaryColor,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
