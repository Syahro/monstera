import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final double defaultMargin = 24.0;

Color primaryColor = Color(0XFF51B1A6);
Color secondaryColor = Color(0XFF5E5BD9);
Color darkColor = Color(0XFF24243F);
Color accentDarkColor = Color(0XFFE1E5EB);
Color accentColor = Color(0XFFF5F7FA);
Color lightColor = Color(0XFFFAFCFE);
Color whiteColor = Color(0XFFFFFFFF);
Color errorColor = Color(0XFFED4B68);
Color successColor = Color(0XFF31D0AA);
Color warningColor = Color(0XFFFFB802);
Color textDefaultColor = Color(0XFF5A5A75);
Color subTitleColor = Color(0XFF5A5A75);

LinearGradient lilyGradient = LinearGradient(
  colors: [Color(0XFFE5E0DA), Color(0XFFD3CCC4)],
  begin: Alignment.centerLeft,
  end: Alignment.bottomRight,
);

LinearGradient calatheaGradient = LinearGradient(
  colors: [Color(0XFFDAE0E5), Color(0XFFC4C9D3)],
  begin: Alignment.centerLeft,
  end: Alignment.bottomRight,
);

LinearGradient palmGradient = LinearGradient(
  colors: [Color(0XFFE1E5DA), Color(0XFFCED3C4)],
  begin: Alignment.centerLeft,
  end: Alignment.bottomRight,
);

LinearGradient pothosGradient = LinearGradient(
  colors: [Color(0XFFE5DADF), Color(0XFFCEBCBF)],
  begin: Alignment.centerLeft,
  end: Alignment.bottomRight,
);

TextStyle headerOneTextStyle = GoogleFonts.workSans(
  fontSize: 31,
  fontWeight: FontWeight.w600,
  // letterSpacing: -2,
);

TextStyle headerTwoTextStyle = GoogleFonts.workSans(
  fontSize: 25,
  fontWeight: FontWeight.w500,
  // letterSpacing: -2,
);

TextStyle smallTextStyle = GoogleFonts.workSans(
  fontSize: 13,
  fontWeight: FontWeight.w400,
);

TextStyle captionTextStyle = GoogleFonts.workSans(
  fontSize: 10,
  fontWeight: FontWeight.w400,
);

TextStyle buttonTextStyle = GoogleFonts.workSans(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  letterSpacing: 4,
);

TextStyle titleRegularTextStyle = GoogleFonts.workSans(
  fontSize: 20,
  fontWeight: FontWeight.w400,
  // letterSpacing: -2,
);

TextStyle titleBoldTextStyle = GoogleFonts.workSans(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  // letterSpacing: -2,
);

TextStyle bodyRegularTextStyle = GoogleFonts.workSans(
  fontSize: 16,
  fontWeight: FontWeight.w400,
);

TextStyle bodyBoldTextStyle = GoogleFonts.workSans(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  // letterSpacing: -2,
);
