import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medh/Values/values.dart';

import 'back_button.dart';

class MedhAppHeader extends StatelessWidget {
  final String title;
  final bool? messagingPage;
  final Widget? widget;
  const MedhAppHeader(
      {Key? key, this.widget, required this.title, this.messagingPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      const AppBackButton(),
      (messagingPage != null)
          ? Row(children: [
              Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: HexColor.fromHex("94D57B"))),
              const SizedBox(width: 5),
              Text(title,
                  style: GoogleFonts.lato(fontSize: 20, color: Colors.white))
            ])
          : Text(title,
              style: GoogleFonts.lato(fontSize: 20, color: Colors.white)),
      widget!
    ]);
  }
}
