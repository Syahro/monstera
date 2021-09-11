import 'package:flutter/material.dart';
import 'package:monstera/theme.dart';
import 'package:monstera/widget/home_cateogry_bullet.dart';
import 'package:monstera/widget/houseplant_card.dart';

class HouseplantPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.only(left: 24),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.chevron_left,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Houseplant',
                        style: bodyBoldTextStyle.copyWith(
                          color: darkColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height - 89,
                    width: double.infinity,
                    child: ListView(
                      padding: EdgeInsets.all(0),
                      children: [
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
                          height: 16.5,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 24),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      HouseplantCard(
                                        imageUrl: 'cate5.png',
                                        category: 'Houseplant',
                                        name: 'Monstera',
                                        price: '45.000',
                                        backgroundImage: lilyGradient,
                                        isSize: 'Small',
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      HouseplantCard(
                                        imageUrl: 'cate11.png',
                                        category: 'Houseplant',
                                        name: 'Snake plant',
                                        price: '23.000',
                                        backgroundImage: pothosGradient,
                                        isSize: 'Big',
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      HouseplantCard(
                                        imageUrl: 'cate10.png',
                                        category: 'Houseplant',
                                        name: 'Bird of paradise',
                                        price: '45.000',
                                        backgroundImage: calatheaGradient,
                                        isSize: 'Medium',
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      HouseplantCard(
                                        imageUrl: 'cate10.png',
                                        category: 'Houseplant',
                                        name: 'Bird of paradise',
                                        price: '45.000',
                                        backgroundImage: calatheaGradient,
                                        isSize: 'Big',
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      HouseplantCard(
                                        imageUrl: 'cate12.png',
                                        category: 'Houseplant',
                                        name: 'Fiddle leaf fig\nplant',
                                        price: '150.000',
                                        backgroundImage: palmGradient,
                                        isSize: 'Medium',
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      HouseplantCard(
                                        imageUrl: 'cate5.png',
                                        category: 'Houseplant',
                                        name: 'Monstera',
                                        price: '45.000',
                                        backgroundImage: lilyGradient,
                                        isSize: 'Small',
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
