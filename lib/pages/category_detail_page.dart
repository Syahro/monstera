import 'package:flutter/material.dart';
import 'package:monstera/theme.dart';
import 'package:monstera/widget/category_detail_card.dart';
import 'package:monstera/widget/home_cateogry_bullet.dart';

class CategoryDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          Container(
            height: 231,
            width: double.infinity,
            child: Stack(
              children: [
                Image.asset(
                  'assets/frame1.png',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24,
                    top: 40,
                  ),
                  child: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Icon(
                      Icons.chevron_left,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 180),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                      24,
                      24,
                      0,
                      24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Succulent',
                          style: headerTwoTextStyle.copyWith(
                            color: darkColor,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              HomeCategoryBullet('Most Relevant', true),
                              SizedBox(
                                width: 13,
                              ),
                              HomeCategoryBullet('Highest Price', false),
                              SizedBox(
                                width: 13,
                              ),
                              HomeCategoryBullet('Lowest Price', false),
                              SizedBox(
                                width: 24,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 24),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CategoryDetailCard(
                                    imageUrl: 'cate1.png',
                                    category: 'Succulent',
                                    title: 'Starfish snake',
                                    price: '20.000',
                                    backgorundLinear: lilyGradient,
                                  ),
                                  CategoryDetailCard(
                                    imageUrl: 'cate7.png',
                                    category: 'Succulent',
                                    title: 'Small succulent',
                                    price: '45.000',
                                    backgorundLinear: calatheaGradient,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CategoryDetailCard(
                                    imageUrl: 'cate8.png',
                                    category: 'Succulent',
                                    title: 'Small succulent',
                                    price: '23.000',
                                    backgorundLinear: lilyGradient,
                                  ),
                                  CategoryDetailCard(
                                    imageUrl: 'cate9.png',
                                    category: 'Succulent',
                                    title: 'Small succulent',
                                    price: '45.000',
                                    backgorundLinear: calatheaGradient,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
