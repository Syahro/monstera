import 'package:flutter/material.dart';
import 'package:monstera/theme.dart';
import 'package:monstera/widget/flower_info.dart';
import 'package:monstera/widget/preview_card.dart';

class HouseplantDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 490,
              width: double.infinity,
              color: accentColor,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.chevron_left),
                        Spacer(),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: warningColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              '2',
                              style: smallTextStyle.copyWith(
                                color: darkColor,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/shopping-bag.png',
                          width: 24,
                          height: 24,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 342.78,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              PreviewCard('preview1.png', true),
                              SizedBox(
                                height: 16,
                              ),
                              PreviewCard('preview2.png', false),
                              SizedBox(
                                height: 16,
                              ),
                              PreviewCard('preview3.png', false),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'assets/cate12.png',
                            width: 192,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 425),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25),
                      ),
                      color: whiteColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Houseplant',
                          style: bodyRegularTextStyle.copyWith(
                            color: subTitleColor,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Fiddle leaf fig plant',
                          style: bodyBoldTextStyle.copyWith(
                            color: darkColor,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'IDR 20.000',
                              style: bodyBoldTextStyle.copyWith(
                                color: primaryColor,
                              ),
                            ),
                            Container(
                              height: 48,
                              width: 145,
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: accentDarkColor),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/minus.png',
                                    width: 24,
                                    height: 24,
                                    color: primaryColor,
                                  ),
                                  Text(
                                    '1',
                                    style: bodyBoldTextStyle.copyWith(
                                      color: darkColor,
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/plus.png',
                                    width: 24,
                                    height: 24,
                                    color: primaryColor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 27,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FlowerInfo('leaf.png', 'About'),
                            FlowerInfo('droplet.png', 'How to care'),
                            FlowerInfo('message-circle.png', 'Reviews'),
                            FlowerInfo('heart.png', 'Saved'),
                          ],
                        ),
                        SizedBox(
                          height: 27,
                        ),
                        Container(
                          width: double.infinity,
                          height: 48,
                          child: FlatButton(
                            onPressed: () {},
                            color: primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Text(
                              'Add to cart',
                              style: bodyBoldTextStyle.copyWith(
                                color: whiteColor,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
