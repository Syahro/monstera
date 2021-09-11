import 'package:flutter/material.dart';

import '../theme.dart';

class ItemBag extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String qty;

  ItemBag(
    this.imageUrl,
    this.title,
    this.price,
    this.qty,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: accentDarkColor,
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 67,
            width: 67,
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              gradient: calatheaGradient,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(
              'assets/$imageUrl',
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          SizedBox(
            width: 13,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: bodyRegularTextStyle.copyWith(
                  color: darkColor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'IDR $price',
                    style: bodyBoldTextStyle.copyWith(
                      color: darkColor,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 48,
                    width: 114,
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 36,
                          width: 33,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: accentColor,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Image.asset(
                            'assets/minus.png',
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        ),
                        Text(
                          qty,
                          style: bodyBoldTextStyle.copyWith(
                            color: darkColor,
                          ),
                        ),
                        Container(
                          height: 36,
                          width: 33,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: accentColor,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Image.asset(
                            'assets/plus.png',
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
