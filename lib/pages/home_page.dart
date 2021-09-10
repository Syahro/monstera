import 'package:flutter/material.dart';
import 'package:monstera/theme.dart';
import 'package:monstera/widget/bottom_floating.dart';
import 'package:monstera/widget/home_card.dart';
import 'package:monstera/widget/home_cateogry_bullet.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      floatingActionButton: BottomFloating(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 24, top: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Discover',
                              style: headerOneTextStyle.copyWith(
                                color: darkColor,
                              ),
                            ),
                            Icon(
                              Icons.notifications_outlined,
                              color: darkColor,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: double.infinity,
                          height: 52,
                          decoration: BoxDecoration(
                            color: accentColor,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/search.png',
                                  width: 24,
                                  height: 24,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Search plant',
                                  style: bodyRegularTextStyle.copyWith(
                                    color: subTitleColor.withOpacity(0.7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        HomeCategoryBullet('Top Picks', true),
                        SizedBox(
                          width: 13,
                        ),
                        HomeCategoryBullet('Indoor', false),
                        SizedBox(
                          width: 13,
                        ),
                        HomeCategoryBullet('Garden', false),
                        SizedBox(
                          width: 13,
                        ),
                        HomeCategoryBullet('Succulent', false),
                        SizedBox(
                          width: 24,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        HomeCard(
                          imageUrl: 'lily.png',
                          category: 'Indoor',
                          flowerName: 'Peace Lily',
                          description:
                              'The peace lily plant is well known for its air-purifying abilities as a houseplant',
                          flowerPrice: '20.000',
                        ),
                        HomeCard(
                          imageUrl: 'calathea.png',
                          category: 'Indoor',
                          flowerName: 'Calathea',
                          description:
                              'Calathea is a species of perennial plant in the family known as the pra...',
                          flowerPrice: '22.000',
                        ),
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
