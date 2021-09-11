import 'package:flutter/material.dart';

import '../theme.dart';

class FlowerInfo extends StatelessWidget {
  final String imageUrl;
  final String title;

  FlowerInfo(
    this.imageUrl,
    this.title,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 56,
          width: 56,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: accentColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(
            'assets/$imageUrl',
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        SizedBox(
          height: 9,
        ),
        Text(
          title,
          style: smallTextStyle.copyWith(
            color: darkColor,
          ),
        ),
      ],
    );
  }
}
