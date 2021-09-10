import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:monstera/theme.dart';
import 'package:monstera/widget/bottom_floating.dart';
import 'package:monstera/widget/category_card.dart';
import 'package:monstera/widget/home_card.dart';
import 'package:monstera/widget/home_cateogry_bullet.dart';
import 'package:monstera/widget/suggestion_plant.dart';

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
                        InkWell(
                          onTap: () {
                            return showMaterialModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(25),
                                ),
                              ),
                              builder: (context) {
                                return SingleChildScrollView(
                                  controller: ModalScrollController.of(context),
                                  child: Container(
                                    height: 590,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(24),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: defaultMargin,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 9,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 4,
                                                width: 80,
                                                decoration: BoxDecoration(
                                                  color: accentDarkColor,
                                                  borderRadius:
                                                      BorderRadius.circular(2),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 40,
                                          ),
                                          Container(
                                            height: 52,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: accentColor,
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16),
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
                                                    style: bodyRegularTextStyle
                                                        .copyWith(
                                                      color: subTitleColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 24,
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height -
                                                (179),
                                            child: ListView(
                                              padding: EdgeInsets.only(top: 0),
                                              children: [
                                                Text(
                                                  'Suggestion Plant',
                                                  style: bodyBoldTextStyle
                                                      .copyWith(
                                                    color: darkColor,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 24,
                                                ),
                                                SuggestionPlant(
                                                    'agave.png', 'Agave '),
                                                SizedBox(
                                                  height: 24,
                                                ),
                                                SuggestionPlant('monstera.png',
                                                    'Monstera obliqua'),
                                                SizedBox(
                                                  height: 24,
                                                ),
                                                SuggestionPlant('cactus.png',
                                                    'Cereus cactus'),
                                                SizedBox(
                                                  height: 24,
                                                ),
                                                Text(
                                                  'Categories',
                                                  style: titleBoldTextStyle
                                                      .copyWith(
                                                    color: darkColor,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 16,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    CategoryCard(
                                                        lilyGradient,
                                                        'cate1.png',
                                                        succelentColor,
                                                        'Succulent'),
                                                    CategoryCard(
                                                        calatheaGradient,
                                                        'cate2.png',
                                                        fernsColor,
                                                        'Ferns'),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 16,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    CategoryCard(
                                                        palmGradient,
                                                        'cate3.png',
                                                        palmsColor,
                                                        'Palms'),
                                                    CategoryCard(
                                                        pothosGradient,
                                                        'cate4.png',
                                                        pothosColor,
                                                        'Pothos'),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 16,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    CategoryCard(
                                                        calatheaGradient,
                                                        'cate5.png',
                                                        fernsColor,
                                                        'Monstera'),
                                                    CategoryCard(
                                                        lilyGradient,
                                                        'cate6.png',
                                                        succelentColor,
                                                        'Calathea'),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 24,
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
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
