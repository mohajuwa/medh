import 'package:flutter/material.dart';

AppColors colors(context) => Theme.of(context).extension<AppColors>()!;

ThemeData getAppTheme(BuildContext context, bool isDarkTheme) {
  return ThemeData(
    extensions: <ThemeExtension<AppColors>>[
      AppColors(
          // Icons Colors in Theme
          color1: isDarkTheme ? Colors.purple : Colors.pink,
          //
          color2: isDarkTheme ? Colors.blue : Colors.blueGrey,
          // Overley Icons Colors in Theme
          color3: isDarkTheme ? Colors.white38 : Colors.black38,
          // Containers Colors
          colorContainer:
              isDarkTheme ? const Color(0x5F000000) : const Color(0xE6FFFFFF),
          // Like BackGrround Colors in Theme
          color4:
              isDarkTheme ? const Color(0xF7322C2C) : const Color(0xE6FFFFFF),
          color5:
              isDarkTheme ? const Color(0xF7322C2C) : const Color(0xFF58329B)),
    ],
    scaffoldBackgroundColor:
        isDarkTheme ? const Color(0xA8322C2C) : Colors.white,
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
              fontSize: 16,
              fontFamily: 'El_Messiri',
              fontWeight: FontWeight.w500),
        )
        .copyWith(
          bodySmall: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontSize: 14,
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
    listTileTheme: ListTileThemeData(
        iconColor: isDarkTheme ? Colors.pinkAccent : Colors.purple),
    appBarTheme: AppBarTheme(
        backgroundColor: isDarkTheme ? const Color(0xA8322C2C) : Colors.white,
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
  final Color? colorContainer;

  const AppColors({
    required this.color1,
    required this.color2,
    required this.color3,
    required this.color4,
    required this.color5,
    required this.colorContainer,
  });

  @override
  AppColors copyWith({
    Color? color1,
    Color? color2,
    Color? color3,
    Color? color4,
    Color? color5,
    Color? colorContainer,
  }) {
    return AppColors(
      color1: color1 ?? this.color1,
      color2: color2 ?? this.color2,
      color3: color3 ?? this.color3,
      color4: color4 ?? this.color4,
      color5: color4 ?? this.color5,
      colorContainer: colorContainer ?? this.colorContainer,
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
      colorContainer: Color.lerp(colorContainer, other.colorContainer, t),
    );
  }
}
