import 'package:flutter/material.dart';

import '../theme.dart';

class PreviewCard extends StatelessWidget {
  final String imageUrl;
  final bool isAactive;

  PreviewCard(
    this.imageUrl,
    this.isAactive,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 85,
      padding: EdgeInsets.symmetric(
        horizontal: 23,
        vertical: 14,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(13),
        border: Border.all(
          color: isAactive ? primaryColor : whiteColor,
          width: 2,
        ),
      ),
      child: Image.asset(
        'assets/$imageUrl',
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
