import 'package:flutter/material.dart';
import 'package:monstera/pages/home_page.dart';
import 'package:monstera/theme.dart';

class OnBoardingpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/onboard.png',
            width: double.infinity,
            height: 370,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(top: 325),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(42),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: defaultMargin,
                  right: defaultMargin,
                  top: 36,
                  bottom: 56,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Don’t just think\ngreen, live green',
                      style: headerOneTextStyle.copyWith(
                        color: darkColor,
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Text(
                      'I’m planting a tree to remind me to be open and kindhearted.',
                      style: bodyRegularTextStyle.copyWith(
                        color: darkColor,
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 1.5,
                          width: 15,
                          color: darkColor.withOpacity(0.4),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Andrea Koehle Jones',
                          style: bodyRegularTextStyle.copyWith(
                            color: darkColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 54,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Get Started',
                          style: bodyBoldTextStyle.copyWith(
                            color: darkColor,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return HomePage();
                                },
                              ),
                            );
                          },
                          child: Icon(
                            Icons.arrow_forward,
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
