import 'package:flutter/material.dart';

import '../theme.dart';

class MenuItem extends StatelessWidget {
  final bool isActive;
  final String imageUrl;

  MenuItem(this.isActive, this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      width: 54,
      decoration: BoxDecoration(
        color: isActive ? primaryColor : Colors.transparent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Image.asset(
          'assets/$imageUrl',
          width: 24,
          height: 24,
          color: isActive ? whiteColor : darkColor,
        ),
      ),
    );
  }
}
