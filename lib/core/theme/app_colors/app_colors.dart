import 'package:flutter/material.dart';

class AppColors {
  const AppColors._();
 static const Color appBgColor= Color(0xff050B10);
  static const Color blackBg= Color.fromARGB(131, 5, 11, 16);
  static const Color whitePermenant = Colors.white;
  static const Color blackPermenant = Colors.black;
  static Color get batchSwitch => !isDarkMode
      ? const Color.fromARGB(255, 214, 212, 212)
      : Colors.grey[900]!;

  static Color get materialTab =>
      isDarkMode ? const Color.fromARGB(255, 45, 44, 44) : Colors.white;
  static Color get kBgDashNew =>
      !isDarkMode ? const Color(0xFFFCFAFA) : Colors.grey[900]!;
  static Color get skyBlueLight =>
      isDarkMode ? const Color(0xffeaf2fd) : const Color(0xffeaf2fd);
  // eaf2fd

  static const Color kBlueMedium = Color.fromRGBO(0, 145, 173, 1);
  static Color get blackVerca =>
      !isDarkMode ? const Color(0xFF191A1D) : Colors.white;
  static Color get blackVercaBtn =>
      !isDarkMode ? const Color(0xFF191A1D) : Colors.white70;
  static Color get blackVercaLight =>
      !isDarkMode ? const Color(0xFF191A1D) : Colors.white60;
  static Color get blackVercaLightMode =>
      !isDarkMode ? Colors.grey[400]! : Colors.white;
  static Color get blackWhite =>
      !isDarkMode ? const Color(0xFFF0F0F0) : const Color(0xFF333333);
  static Color get blackWhiteAlt =>
      !isDarkMode ? const Color(0xFFFFFFFF) : const Color(0xFF333333);
  static Color get blackWhiteMode =>
      !isDarkMode ? const Color(0xFFF0F0F0) : Colors.grey[400]!;
  static Color get blackBorder =>
      !isDarkMode ? Colors.grey[200]! : Colors.grey[700]!;
  static Color get black => !isDarkMode ? Colors.black : Colors.white;
  static Color get blackButton =>
      isDarkMode ? const Color(0xFF191A1D) : Colors.white60;
  static Color get blackProfile => isDarkMode ? Colors.white60 : Colors.black38;
  static Color get blackLight =>
      isDarkMode ? Colors.grey[600]! : Colors.white60;
  static Color get blackStatic => Colors.black;
  static Color get blackStaticLight => Colors.black.withOpacity(.7);
  static Color get shimmerGrey =>
      isDarkMode ? Colors.grey[700]! : Colors.grey[300]!;
  static Color shimmerGreyAlt = Colors.grey[100]!;
  static Color get shimmerGreyMode =>
      isDarkMode ? Colors.black : Colors.grey[100]!;
  static const blueAlt = Color(0xFF2196F3);
    static const kWhiteLight = Colors.white;
  static const kBlue = Colors.blue;
  static Color get kWhiteBg =>
      !isDarkMode ? const Color.fromRGBO(246, 244, 244, 1) : Colors.grey[600]!;
  static Color get kWhiteBgAlt =>
      !isDarkMode ? const Color.fromRGBO(240, 239, 239, 1) : Colors.grey[600]!;
  static const Color aquaMarine = Color.fromRGBO(122, 231, 199, 1);
  static const Color kBlueDark = Color.fromRGBO(40, 75, 99, 1);
  static const Color kBlueShade1 = Color.fromRGBO(0, 166, 251, 1);
  static const Color kBlueShade2 = Color.fromRGBO(5, 130, 202, 1);
  static const Color kBlueShade3 = Color.fromRGBO(0, 100, 148, 1);
  static Color get contact_us_backgroundcolor =>
      !isDarkMode ? const Color(0xffe9edf7) : Colors.black87;
  static Color get contact_us_color =>
      !isDarkMode ? const Color(0xffe9edf7) : Colors.black45;
  static Color get black05 =>
      !isDarkMode ? const Color(0x0C191A1D) : Colors.black12;
  static Color get black10 =>
      isDarkMode ? Colors.white24 : const Color.fromRGBO(185, 185, 185, 0.122);
  static Color get shimmerGrey300 =>
      isDarkMode ? Colors.grey[700]! : Colors.grey[300]!;
  static Color get shimmerGrey100 =>
      isDarkMode ? Colors.grey[900]! : Colors.grey[100]!;
  static Color get bgOffline =>
      isDarkMode ? Colors.black45 : const Color(0xfff8f8f8);
  static Color get kBgDash => !isDarkMode ? Colors.white10 : Colors.grey[900]!;
  static Color get kBgDashAlt => !isDarkMode
      ? const Color.fromRGBO(246, 244, 244, 1)
      : const Color.fromRGBO(24, 23, 20, 1);
  static Color get kBgDashAltDark =>
      !isDarkMode ? const Color.fromRGBO(246, 244, 244, 1) : Colors.grey[900]!;
  static Color get kBgDashAltGrey =>
      !isDarkMode ? const Color.fromRGBO(246, 244, 244, 1) : Colors.grey[900]!;
  static Color get kBgDashAltGrey900 =>
      !isDarkMode ? const Color.fromRGBO(246, 244, 244, 1) : Colors.grey[900]!;
  static Color get kBgTile => !isDarkMode ? Colors.white : Colors.black12;
  static Color get kBgTileAlt => !isDarkMode
      ? const Color.fromRGBO(246, 244, 244, 1)
      : const Color.fromRGBO(33, 33, 33, 1);
  static Color get kBgTileAlt2 =>
      !isDarkMode ? Colors.white : Colors.grey[800]!;
  static Color get kBgTileAlt3 =>
      !isDarkMode ? Colors.white30 : Colors.grey[800]!;
  static Color black20 = !isDarkMode ? const Color(0x33191A1D) : Colors.black26;
  static const Color kTeal = Color(0xff2b79e5);
  static const Color kOrange = Colors.orange;
  static const Color kPurple = Colors.purple;
  static const Color kPink = Colors.pink;
  static const Color kGreen = Colors.green;
  static const Color kgrey = Color(0xfff4f6f5);
  static Color get black30 =>
      !isDarkMode ? const Color(0x4C191A1D) : Colors.white30;
  static Color get black70 =>
      !isDarkMode ? const Color(0xff575757) : Colors.white70;
  static Color get black60 =>
      !isDarkMode ? const Color(0xff676767) : Colors.white60;
  static Color get black12 => !isDarkMode ? Colors.black12 : Colors.white12;
  static Color get black26 => !isDarkMode ? Colors.black26 : Colors.white24;
  static Color get black38 => !isDarkMode ? Colors.black38 : Colors.white38;

  static Color get black45 => !isDarkMode ? Colors.black45 : Colors.white54;
  static Color get black54 => !isDarkMode ? Colors.black54 : Colors.white54;
  static Color get black87 => !isDarkMode ? Colors.black87 : Colors.white;
  static Color get black87Lighet =>
      !isDarkMode ? Colors.black87.withOpacity(.7) : Colors.white;
  static const Color yellow = Colors.yellow;
  static Color kBorderGrey = const Color.fromARGB(255, 225, 224, 224);

  static const Color skyblue = Color(0xFFB7DFE9);
  static const Color chatBlue = Color(0xFFdfebfb);
  static const Color chatDarkBlue = Color(0xFFc4daf8);
  static const Color kBlueAlt = Color(0xFF0094CB);
  static const Color blue = Colors.blue;
  static const Color chatGreyColor = Color(0xFFf4f6f5);
  static Color get kBlueShadeMode =>
      isDarkMode ? Colors.grey[500]! : const Color(0xFF0094CB);
  static Color get gray =>
      isDarkMode ? Colors.white38 : const Color(0xFFF0F0F0);
  static Color kWhiteBgGrey = const Color.fromRGBO(235, 235, 235, 1);
  static Color get grayCourse =>
      isDarkMode ? Colors.grey[800]! : const Color(0xFFF0F0F0).withOpacity(.8);
  static Color get grayNew =>
      isDarkMode ? Colors.black12 : const Color(0xFFF0F0F0);

  static Color get grayTextfiled =>
      isDarkMode ? Colors.white38 : const Color.fromRGBO(236, 236, 236, 1);
  static Color red = const Color(0xFFDA2631);
  static Color get white => isDarkMode ? Colors.grey[900]! : Colors.white;
  static const Color whiteAlt = Color.fromRGBO(222, 222, 226, 1);
  static const Color whiteAlt2 = Color.fromRGBO(247, 247, 248, 1);
  static const Color whiteAlt3 = Color.fromRGBO(255, 255, 255, 1);
  static Color get white800 => isDarkMode ? Colors.grey[900]! : Colors.white;
  static Color get whiteLightDash =>
      isDarkMode ? Colors.grey[900]!.withOpacity(.7) : Colors.white;
  static Color get whiteShimmer =>
      isDarkMode ? Colors.grey[900]! : Colors.white;
  static Color get whiteLightAlt =>
      isDarkMode ? Colors.grey[800]! : Colors.white70;
  static Color get whiteLightAltChat =>
      isDarkMode ? Colors.grey[800]! : Colors.white;
  static Color get whiteProfile => isDarkMode ? Colors.black26 : Colors.white;
  static Color get whiteLive => isDarkMode ? Colors.black26 : Colors.black87;
  static Color get whiteMode =>
      isDarkMode ? Colors.black : const Color(0xFFFFFFFF);
  static Color get whiteTile => isDarkMode ? Colors.black12 : Colors.grey[200]!;
  static Color get white700 =>
      isDarkMode ? Colors.white.withOpacity(.85) : const Color(0xFFFFFFFF);
  static Color get whiteLight => isDarkMode ? Colors.grey : Colors.white60;
  static Color kWhite = Colors.white;
  static Color get kWhiteMode => isDarkMode ? Colors.grey[600]! : Colors.white;
  static Color get kWhiteBottom =>
      isDarkMode ? Colors.grey[900]! : Colors.white;
  static const Color kGrey = Colors.grey;
  static const Color kDarkBlue = Color.fromRGBO(20, 33, 61, 1);
  static Color get kDarkBlueMode =>
      isDarkMode ? Colors.white : const Color.fromRGBO(20, 33, 61, 1);
  static const kRedAccent = Colors.redAccent;
  static const kLavender = Color(0xFF8B94BC);
  static const kGreenColor = Color(0xFF6AC259);
  static const kdarkGreen = Color.fromARGB(197, 21, 146, 88);
  static const kDashboardBgClip = Color(0xffE5EFF1);
  static const kDashHeadTileBg = Color(0xffDEF3F8);
  static const kLightBorderBlue = Color(0xff589ABC);
  static const kNotiFicationBlue = Color(0xff94CBCF);
  static const kGradientBorderColor1 = Color(0xff94CBCF);
  static const kGradientBorderColor2 = Color(0xffE8BEDB);
  static const kLightBlueShadeHead = Color(0xffB7E3E6);
  static const kLearnigTile0 = Color(0xff2B7AE8);
  static const kLearnigTile1 = Color(0xffFF92A6);
  static const kLearnigTile2 = Color(0xffC4E8E6);
  static const kLearnigTile3 = Color(0xff9EBDC2);
  static const kExtraLightBlue = Color(0xffedf6f9);
  static const kRed = Color.fromARGB(255, 231, 19, 58);
  static const kGainpointsSkyBlue = Color(0xffF0F9F8);
  static const kExamTileSkyBlue = Color(0xffC5E7E6);
  static const kBgGeneralClass = Color(0xffF7F7F7);
  static const kBgGeneralMore = Color(0xffF0F9F8);
  static const kExamPractice3 = Color(0xffCED7E6);
  static const kExamPractice4 = Color(0xffE6DBD7);
  static const krecentExamsTile = Color(0xffF3F3F3);
  static const kInstaStoryBorderRed = Color(0xffd53369);
  static Color kInstaStoryBorderRedAlt = const Color.fromRGBO(250, 0, 0, .53);
  static Color kInstaStoryBorderBlueAlt = const Color.fromRGBO(0, 0, 255, .53);
  static Color kInstaStoryBorderAlt = const Color.fromRGBO(250, 0, 0, .53);
  static const kInstaStoryBorderYello = Color(0xffcbad6d);
  static const background = Color(0xFFF2F3F8);
  static const ktextColor = Color(0xff777777);
  static const kOrangeColor = Colors.deepOrangeAccent;
  static Color get kProfiletopColor => const Color(0xffeaf1fc);
  static Color get kProfiletopColorAlt =>
      const Color.fromRGBO(244, 246, 245, 1);
  static Color get kProfiletopColorAlt2 =>
      const Color.fromRGBO(215, 229, 250, 1);

  static Color get kProfiletopColorMode =>
      isDarkMode ? Colors.grey[700]! : const Color(0xffeaf1fc);
  static const kProfileewsfeedColor = Color(0xff2b79e5);
  static const kProfilePeachColor = Color(0xfffee9ec);
  static const kProfileSettingsColor = Color(0xfffd90a0);
  static const ktransparent = Color(0x00000000);
  static const kBorderGrey1 = Color.fromARGB(255, 181, 179, 179);

  static const kBorderGrey2 = Color.fromARGB(255, 206, 204, 204);

  static Color get kscertNotes =>
      isDarkMode ? Colors.black : const Color(0xfff8f8f8);

  static Color get kGreyMode => isDarkMode ? Colors.grey[800]! : Colors.white30;
  static Color get kGreyModeAlt => isDarkMode ? Colors.grey[800]! : Colors.grey;
  static bool _isDarkMode = false;

  static bool get isDarkMode => _isDarkMode;

  static set isDarkMode(bool value) {
    _isDarkMode = value;
    // Additional logic or side effects can be added here if needed.
  }

  // static bool isDarkMode = true;

  // static bool isDarkMode = true;
//  static Color get ktransparent =>
  //     !isDarkMode ? Color(0x000000) : Color(0x000000);

  static Color get whiteStaticColor => const Color(0xFFFFFFFF);
  static Color get kbackgroundlogin => isDarkMode
      ? const Color(0xFF333333)
      : const Color.fromRGBO(240, 240, 240, 1);
  static const kloginButtonColor = Color(0xff2b79e6);
  static const kVerifyColor = Color(0xffe6f3fd);
  static Color kColorModeColor = const Color(0xfffce6e8);
  static Color get blackAlt =>
      isDarkMode ? const Color(0xFF191A1D) : Colors.white;

  static Color get primaryColor => Colors.pink[400]!;
  static MaterialColor get primarySwatch => Colors.pink;
  static Color get accentColor =>
      !isDarkMode ? primaryColor : Colors.grey[600]!;
  static Color get bgColor => !isDarkMode ? Colors.black : Colors.grey[50]!;

  static Color get backgroundColorCourse =>
      isDarkMode ? const Color(0xFF333333) : Colors.white;
  static Color get kbackgroundnotification => isDarkMode
      ? const Color(0xFF333333)
      : const Color.fromRGBO(246, 244, 244, 1);
  static Color get blackColor => isDarkMode ? Colors.white : Colors.black;
  static Color get whiteColor =>
      isDarkMode ? const Color(0xFF333333) : const Color(0xFFFFFFFF);
  static Color get coursetabColor =>
      isDarkMode ? const Color(0xffdae6f6) : const Color(0xff9cbff2);
  static Color get examtabColor =>
      isDarkMode ? const Color(0xffdeebff) : const Color(0xfff7e2e1);
  static Color get videotabColor =>
      isDarkMode ? const Color(0xfff3f3f3) : const Color(0xffe6f3fd);
  static Color get containerbottomColor =>
      isDarkMode ? const Color(0xffdfebfb) : const Color(0xffe6f3fd);
  static Color get blackfixed => Colors.black;
  static Color get defaultScheduleBackground =>
      isDarkMode ? const Color(0xFF333333) : const Color(0xfff8f8f8);

  static ThemeData get getTheme => ThemeData(
        primaryColor: primaryColor,
        primarySwatch: primarySwatch,
        appBarTheme: AppBarTheme(
          backgroundColor: bgColor,
          iconTheme: IconThemeData(
            color: Colors.grey[500],
          ),
          elevation: 0,
          foregroundColor: Colors.grey[600],
        ),
        colorScheme: const ColorScheme.light(),
        // b: bgColor,c
        textTheme: TextTheme(
          displayMedium: TextStyle(
            color: Colors.blueGrey[800],
            fontWeight: FontWeight.w800,
            fontSize: 28,
          ),
          displaySmall: TextStyle(
            color: Colors.blueGrey[800],
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
          labelMedium: TextStyle(
            color: Colors.grey[600],
            fontWeight: FontWeight.w600,
          ),
        ),
        scaffoldBackgroundColor: bgColor,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.transparent,
        ),
      );
  static const kbackgroundread = Color(0xff2b79e5);
  static const kmodified = Color(0xffeaeaea);
  static LinearGradient getLinearGradient(MaterialColor color) {
    return LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [
        color[300]!,
        color[200]!,
        color[100]!,
      ],
      stops: const [
        0.4,
        0.7,
        0.9,
      ],
    );
  }

  static LinearGradient getDarkLinearGradient(MaterialColor color) {
    return LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [
        color[400]!,
        color[300]!,
        color[200]!,
      ],
      stops: const [
        0.4,
        0.6,
        1,
      ],
    );
  }

  static LinearGradient getDarkLinearGradientTip(MaterialColor color) {
    return LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [
        color[400]!,
        color[400]!,
        color[400]!,
      ],
      stops: const [
        0.6,
        0.8,
        1,
      ],
    );
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }
}
