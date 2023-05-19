//                 ID  -- >    2040698

import 'package:flutter/material.dart';
import 'package:medh/Values/values.dart';

AppColors colors(context) => Theme.of(context).extension<AppColors>()!;

ThemeData getAppTheme(BuildContext context, bool isDarkTheme) {
  return ThemeData(
    extensions: <ThemeExtension<AppColors>>[
      AppColors(
        // White To Black Colors
        colorWhiteToBlack: isDarkTheme ? Colors.white54 : Colors.black54,
        // White To Black Colors
        colorWhiteToBlack0: isDarkTheme ? Colors.white : Colors.black,
        // Icons Colors in Theme
        color1: isDarkTheme ? Colors.deepPurple : const Color(0xD09B1642),

        //
        color2: isDarkTheme ? Colors.blue : const Color(0xFF6DACCB),

        // Overley Icons Colors in Theme
        color3: isDarkTheme ? Colors.white38 : Colors.black38,

        // Like BackGrround Colors in Theme
        color4:
            isDarkTheme ? HexColor.fromHex("262A34") : const Color(0xD2E5E4E4),

        // Colors of some of
        color5: isDarkTheme ? const Color(0xF7322C2C) : const Color(0xFF58329B),

        // Colors of sub Wedgits
        color6: isDarkTheme ? Colors.white12 : Colors.black12,

        // Containers Colors
        colorContainer:
            isDarkTheme ? const Color(0xC1000000) : const Color(0xE6FFFFFF),

        // Color of DashBoard Totals
        color7: isDarkTheme ? const Color(0xF7322C2C) : const Color(0xF7322C2C),
      ),
    ],
    scaffoldBackgroundColor:
        isDarkTheme ? const Color(0xA81B1717) : const Color(0xFFC8C8C8),
    textTheme: Theme.of(context)
        .textTheme
        .copyWith(
          titleLarge: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontSize: 24,
              fontFamily: 'El_Messiri',
              fontWeight: FontWeight.w500),
        )
        .copyWith(
          titleMedium: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontSize: 18,
              fontFamily: 'El_Messiri',
              fontWeight: FontWeight.w500),
        )
        .copyWith(
          titleSmall: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontSize: 14,
              fontFamily: 'El_Messiri',
              fontWeight: FontWeight.w500),
        )
        .copyWith(
          bodyLarge: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: 22,
              fontFamily: 'Amiri_Quran',
              fontWeight: FontWeight.w500),
        )
        .copyWith(
          bodyMedium: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 12,
              fontFamily: 'El_Messiri',
              fontWeight: FontWeight.w500),
        )
        .copyWith(
          bodySmall: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontSize: 12,
              fontFamily: 'El_Messiri',
              fontWeight: FontWeight.w500),
        )
        .apply(
          bodyColor: isDarkTheme ? Colors.white : Colors.black,
          displayColor: Colors.grey,
        ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(
          isDarkTheme ? Colors.orange : Colors.purple),
    ),
    listTileTheme:
        ListTileThemeData(iconColor: isDarkTheme ? Colors.pink : Colors.purple),
    appBarTheme: AppBarTheme(
        backgroundColor:
            isDarkTheme ? HexColor.fromHex("262A34") : const Color(0xD2E5E4E4),
        iconTheme:
            IconThemeData(color: isDarkTheme ? Colors.white : Colors.black54)),
  );
}

@immutable
class AppColors extends ThemeExtension<AppColors> {
  final Color? color1;
  final Color? color2;
  final Color? color3;
  final Color? color4;
  final Color? color5;
  final Color? color6;
  final Color? color7;
  final Color? colorContainer;
  final Color? colorWhiteToBlack;
  final Color? colorWhiteToBlack0;

  const AppColors({
    required this.color1,
    required this.color2,
    required this.color3,
    required this.color4,
    required this.color5,
    required this.color6,
    required this.color7,
    required this.colorContainer,
    required this.colorWhiteToBlack,
    required this.colorWhiteToBlack0,
  });

  @override
  AppColors copyWith({
    Color? color1,
    Color? color2,
    Color? color3,
    Color? color4,
    Color? color5,
    Color? color6,
    Color? color7,
    Color? colorContainer,
    Color? colorWhiteToBlack0,
    Color? colorWhiteToBlack,
  }) {
    return AppColors(
      color1: color1 ?? this.color1,
      color2: color2 ?? this.color2,
      color3: color3 ?? this.color3,
      color4: color4 ?? this.color4,
      color5: color5 ?? this.color5,
      color6: color6 ?? this.color6,
      color7: color7 ?? this.color7,
      colorContainer: colorContainer ?? this.colorContainer,
      colorWhiteToBlack: colorWhiteToBlack ?? this.colorWhiteToBlack,
      colorWhiteToBlack0: colorWhiteToBlack0 ?? this.colorWhiteToBlack0,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
        color1: Color.lerp(color1, other.color1, t),
        color2: Color.lerp(color2, other.color2, t),
        color3: Color.lerp(color3, other.color3, t),
        color4: Color.lerp(color4, other.color4, t),
        color5: Color.lerp(color5, other.color5, t),
        color6: Color.lerp(color6, other.color6, t),
        color7: Color.lerp(color7, other.color7, t),
        colorContainer: Color.lerp(colorContainer, other.colorContainer, t),
        colorWhiteToBlack:
            Color.lerp(colorWhiteToBlack, other.colorWhiteToBlack, t),
        colorWhiteToBlack0:
            Color.lerp(colorWhiteToBlack0, other.colorWhiteToBlack0, t));
  }
}
