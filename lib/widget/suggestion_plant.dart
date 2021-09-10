import 'package:flutter/material.dart';

import '../theme.dart';

class SuggestionPlant extends StatelessWidget {
  final String imageUrl;
  final String title;

  SuggestionPlant(this.imageUrl, this.title);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/$imageUrl',
          width: 34,
          height: 39,
        ),
        SizedBox(
          width: 24,
        ),
        Text(
          title,
          style: bodyRegularTextStyle.copyWith(
            color: darkColor,
          ),
        ),
      ],
    );
  }
}
