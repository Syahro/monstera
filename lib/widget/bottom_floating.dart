import 'package:flutter/material.dart';
import 'package:monstera/theme.dart';
import 'package:monstera/widget/menu_item.dart';

class BottomFloating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86,
      width: double.infinity,
      color: whiteColor,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 36,
          vertical: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MenuItem(true, 'leaf.png'),
            MenuItem(false, 'shopping-bag.png'),
            MenuItem(false, 'user.png'),
          ],
        ),
      ),
    );
  }
}
