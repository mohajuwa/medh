// ID  -- >        2040703
import 'package:flutter/material.dart';
import 'package:medh/widgets/Dev_Search/widgets/list_meds_date.dart';
import 'package:medh/widgets/Dev_Search/widgets/list_meds_im_container.dart';
import 'package:medh/Theme/theme.dart';

import 'package:medh/Values/values.dart';

class Meds extends StatelessWidget {
  final Color backgroundColor;
  final String imageUrl;
  final String cardTitle;
  final String cardDate;
  final String cardSubTitle;
  const Meds(
      {Key? key,
      required this.imageUrl,
      required this.backgroundColor,
      required this.cardTitle,
      required this.cardSubTitle,
      required this.cardDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(8),
        height: 70,
        decoration: BoxDecoration(
          color: colors(context).color4,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const [
            BoxShadow(
              color: Color(0x47000000),
              blurRadius: 1.5,
              spreadRadius: 1,
            )
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ListMedsContainerImage(
                        imageUrl: imageUrl,
                        backgroundColor: backgroundColor,
                      ), //ID  -- >        2040702
                      AppSpaces.horizontalSpace20,
                      Text(
                        cardTitle,
                        style: const TextStyle(
                          fontFamily: 'El_Messiri',
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MedsDateContainer(
                        cardDate: cardDate,
                        backgroundColor: backgroundColor,
                      ), //ID  -- >        2040700
                    ],
                  ),
                  // Column(
                  //   children: [
                  //     ListsMedsFontContainer(
                  //       cardSubTitle: cardSubTitle,
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final allMeds = [
  Meds(
    cardTitle: "Morfin",
    cardSubTitle: "شوية كلام يكتب هنا",
    cardDate: "99%  متوفر ",
    imageUrl: "lib/FUSER/Summary/assets/green_pencil.png",
    backgroundColor: HexColor.fromHex("7FBC69"),
  ), //  ID  -- >        2040703
  Meds(
    cardSubTitle: "شوية كلام يكتب هنا",
    cardTitle: "Socafin",
    cardDate: "85%  متوفر ",
    imageUrl: "lib/FUSER/Summary/assets/orange_pencil.png",
    backgroundColor: HexColor.fromHex("EFA17D"),
  ),
  Meds(
    cardSubTitle: "شوية كلام يكتب هنا",
    cardTitle: "ZobbyFin",
    cardDate: "77%  متوفر ",
    imageUrl: "assets/images/icon.png",
    backgroundColor: HexColor.fromHex("C395FC"),
  ), // ID  -- >        2040703
  Meds(
    cardSubTitle: "شوية كلام يكتب هنا",
    cardTitle: "NedoFin",
    cardDate: "60%  متوفر ",
    imageUrl: "lib/FUSER/Summary/assets/cone.png",
    backgroundColor: HexColor.fromHex("EDA7FA"),
  ), // ID  -- >        2040703
  const Meds(
    cardSubTitle: "شوية كلام يكتب هنا",
    cardTitle: "Hedafin",
    cardDate: "41%  متوفر ",
    imageUrl: "assets/stickers/stic_10-17.png",
    backgroundColor: Color(0xFFC44036),
  ), // ID  -- >        2040703
  const Meds(
    cardSubTitle: "شوية كلام يكتب هنا",
    cardTitle: "Tezkfin",
    cardDate: "5%  متوفر ",
    imageUrl: "assets/images/Logo.png",
    backgroundColor: Color(0xFF9B0A00),
  ), // ID  -- >
  const Meds(
    cardSubTitle: "شوية كلام يكتب هنا",
    cardTitle: "AntiMol",
    cardDate: "3%  متوفر ",
    imageUrl: "assets/stickers/stic_10-17.png",
    backgroundColor: Color(0xFF80201A),
  ), // ID  -- >        2040703
  const Meds(
    cardSubTitle: "شوية كلام يكتب هنا",
    cardTitle: "Hosinolcsodinel",
    cardDate: "0.10%  متوفر ",
    imageUrl: "assets/images/Logo.png",
    backgroundColor: Color(0xFF1E0200),
  ), // ID  -- >
];
