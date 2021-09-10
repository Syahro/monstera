import 'package:flutter/material.dart';

import '../theme.dart';

class HomeCategoryBullet extends StatelessWidget {
  final String title;
  final bool isActive;

  HomeCategoryBullet(
    this.title,
    this.isActive,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        title,
        style: bodyBoldTextStyle.copyWith(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: isActive ? whiteColor : darkColor,
        ),
      ),
      decoration: BoxDecoration(
        color: isActive ? primaryColor : accentColor,
        borderRadius: BorderRadius.circular(24),
      ),
    );
  }
}
