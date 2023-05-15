import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/provider.dart';

class SettingsStrip extends ConsumerWidget {
  const SettingsStrip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isDarkMode = ref.watch(appThemeProvider);
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: isDarkMode ? Colors.deepPurple : const Color(0xD09B1642),
              width: 2.5,
            ),
          ),
        ),
        SizedBox(width: 2),
        Container(
          width: 15,
          height: 3,
          decoration: BoxDecoration(
            color: isDarkMode ? Colors.white : Colors.black54,
          ),
        ),
      ],
    );
  }
}
