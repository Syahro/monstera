import 'package:flutter/material.dart';
import 'package:monstera/theme.dart';
import 'package:monstera/widget/preview_card.dart';

class PreviewImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: accentColor,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.close,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Image.asset(
            'assets/cate12.png',
            height: MediaQuery.of(context).size.height - 238,
            fit: BoxFit.cover,
          ),
          Spacer(),
          Container(
            height: 130,
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(25),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PreviewCard(
                  'preview1.png',
                  true,
                ),
                PreviewCard(
                  'preview2.png',
                  false,
                ),
                PreviewCard(
                  'preview3.png',
                  false,
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
