// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medh/Theme/theme.dart';

class SearchBox extends StatelessWidget {
  final String placeholder;

  final TextEditingController? controller;
  const SearchBox({
    Key? key,
    required this.placeholder,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(
        fontSize: 20,
        color: colors(context).colorWhiteToBlack0,
      ),
      onTap: () {},
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12.0),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 15,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Icon(
            FeatherIcons.search,
            color: colors(context).colorWhiteToBlack,
          ),
        ),
        suffixIcon: InkWell(
          onTap: () {
            controller!.text = "";
          },
          child: Icon(
            FontAwesomeIcons.solidTimesCircle,
            color: colors(context).colorWhiteToBlack,
          ),
        ),
        hintText: placeholder,
        hintStyle: TextStyle(
          //fontWeight: FontWeight.bold,
          fontFamily: 'El_Messiri',
          fontSize: 18,
          color: colors(context).colorWhiteToBlack,
        ),
        filled: true,
        fillColor: colors(context).color4,
        // enabledBorder: UnderlineInputBorder(
        //   borderRadius: BorderRadius.circular(10.0),
        //   borderSide: BorderSide(color: HexColor.fromHex("3C3E49")),
        // ),
        // focusedBorder: UnderlineInputBorder(
        //   borderRadius: BorderRadius.circular(10.0),
        //   borderSide: BorderSide(color: HexColor.fromHex("BEF0B2")),
        // ),
      ),
    );
  }
}
