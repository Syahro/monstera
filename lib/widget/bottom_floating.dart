import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:monstera/theme.dart';
import 'package:monstera/widget/item_bag.dart';
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
            InkWell(
              onTap: () {
                return showMaterialModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25),
                    ),
                  ),
                  builder: (context) => SingleChildScrollView(
                    controller: ModalScrollController.of(context),
                    child: Container(
                      height: 400,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(25),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 4,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: accentDarkColor,
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 37,
                          ),
                          Text(
                            'Shopping Bag',
                            style: bodyBoldTextStyle.copyWith(
                              color: darkColor,
                            ),
                          ),
                          SizedBox(
                            height: 21,
                          ),
                          ItemBag(
                              'bag1.png', 'Philodendron xanadu', '20.000', '1'),
                          SizedBox(
                            height: 16,
                          ),
                          ItemBag('cate1.png', 'Starfish snake', '20.000', '2'),
                          SizedBox(
                            height: 21,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total',
                                style: bodyBoldTextStyle.copyWith(
                                  color: darkColor,
                                ),
                              ),
                              Text(
                                'IDR 215.000',
                                style: bodyBoldTextStyle.copyWith(
                                  color: darkColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 21,
                          ),
                          Container(
                            width: double.infinity,
                            height: 56,
                            child: FlatButton(
                              onPressed: () {},
                              color: primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28),
                              ),
                              child: Text(
                                'Checkout (2)',
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
                );
              },
              child: MenuItem(false, 'shopping-bag.png'),
            ),
            MenuItem(false, 'user.png'),
          ],
        ),
      ),
    );
  }
}
