import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/Values/values.dart';
import 'package:medh/provider.dart';

class PrimaryTabButton extends ConsumerWidget {
  final String buttonText;
  final int itemIndex;
  final ValueNotifier<int> notifier;
  final VoidCallback? callback;
  const PrimaryTabButton(
      {Key? key,
      this.callback,
      required this.notifier,
      required this.buttonText,
      required this.itemIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isDarkMode = ref.watch(appThemeProvider);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ValueListenableBuilder(
        valueListenable: notifier,
        builder: (BuildContext context, _, __) {
          return ElevatedButton(
            onPressed: () {
              notifier.value = itemIndex;
              if (callback != null) {
                callback!();
              }
            },
            style: ButtonStyle(
              backgroundColor: notifier.value == itemIndex
                  ? MaterialStateProperty.all<Color>(
                      isDarkMode ? Colors.deepPurple : const Color(0xD09B1642),
                    )
                  : MaterialStateProperty.all<Color>(
                      isDarkMode ? Colors.white12 : Colors.black54,
                    ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  side: notifier.value == itemIndex
                      ? BorderSide(
                          color: isDarkMode
                              ? Colors.deepPurple
                              : const Color(0xD09B1642),
                        )
                      : BorderSide(
                          color: HexColor.fromHex("181A1F"),
                        ),
                ),
              ),
            ),
            child: Text(
              buttonText,
              style: const TextStyle(
                  fontSize: 16, fontFamily: 'El_Messiri', color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}
