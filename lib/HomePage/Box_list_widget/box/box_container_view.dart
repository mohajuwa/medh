//  ID  -- >        2040706
import 'package:flutter/material.dart';
import 'package:medh/Theme/theme.dart';
import 'package:medh/Values/values.dart';

import 'box_add_med_date.dart';
import 'box_list_image_container.dart';
import 'box_list_medFont.dart';

class BoxContainerList extends StatelessWidget {
  final Color backgroundColor;
  final String imageUrl;
  final String numberOfItems;
  final String cardTitle;
  final String cardDate;
  final String cardSubTitle;
  final String cardTitle2;
  const BoxContainerList(
      {Key? key,
      required this.imageUrl,
      required this.backgroundColor,
      required this.cardTitle,
      required this.cardSubTitle,
      required this.numberOfItems,
      required this.cardDate,
      required this.cardTitle2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Container(
          width: 400,
          height: 80,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 5),
                        child: BoxContainerListImage(
                          imageUrl: imageUrl,
                          backgroundColor: backgroundColor,
                        ),
                      ), // ID  -- >        2040707
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
                      Text(numberOfItems,
                          style: TextStyle(
                              color: backgroundColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 16)),
                      Icon(Icons.add, color: backgroundColor, size: 19),
                    ],
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BoxFonList(
                      cardSubTitle: cardSubTitle,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        right: 40,
                      ),
                      child: BoxAddMedDateContainer(
                        cardDate: cardDate,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final allMedsFuserHome = [
  BoxContainerList(
    cardTitle: "Nobasi",
    cardTitle2: "Novidasilen",
    cardSubTitle: "  ملاحظة",
    numberOfItems: "120",
    cardDate: "2024/2/11 م",
    imageUrl: "lib/FUSER/Summary/assets/green_pencil.png",
    backgroundColor: HexColor.fromHex("7FBC69"),
  ), //  ID  -- >        2040703
  BoxContainerList(
    cardSubTitle: "  ملاحظة",
    cardTitle: "Aspren",
    cardTitle2: "Panadil",
    numberOfItems: "74",
    cardDate: "2024/2/11 م",
    imageUrl: "lib/FUSER/Summary/assets/orange_pencil.png",
    backgroundColor: HexColor.fromHex("EFA17D"),
  ),
  BoxContainerList(
    cardSubTitle: "  ملاحظة",
    cardTitle: "Mocafin",
    cardTitle2: "Tocafin",
    numberOfItems: "23",
    cardDate: "2024/2/11 م",
    imageUrl: "assets/images/icon.png",
    backgroundColor: HexColor.fromHex("C395FC"),
  ), // ID  -- >        2040703
  BoxContainerList(
    cardSubTitle: "  ملاحظة",
    cardTitle: "Kafilen",
    cardTitle2: "Tafilen",
    numberOfItems: "15",
    cardDate: "2024/2/11 م",
    imageUrl: "lib/FUSER/Summary/assets/cone.png",
    backgroundColor: HexColor.fromHex("EDA7FA"),
  ),
  const BoxContainerList(
    cardSubTitle: "  ملاحظة",
    cardTitle: "Dobilen",
    cardTitle2: "Sovalen",
    numberOfItems: "9",
    cardDate: "2024/2/11 م",
    imageUrl: "assets/stickers/stic_10-17.png",
    backgroundColor: Color(0xFFC44036),
  ),
  const BoxContainerList(
    cardSubTitle: "  ملاحظة",
    cardTitle: "Hashilen",
    cardTitle2: "Fashilen",
    numberOfItems: "3",
    cardDate: "2024/2/11 م",
    imageUrl: "assets/images/Logo.png",
    backgroundColor: Color(0xFF9B0A00),
  ), // ID  -- >        2040703
  const BoxContainerList(
    cardSubTitle: "  ملاحظة",
    cardTitle: "Fattallen",
    cardTitle2: "Mazzallen",
    numberOfItems: "1",
    cardDate: "2024/2/11 م",
    imageUrl: "assets/images/Logo.png",
    backgroundColor: Color(0xFF700700),
  ), // ID  -- >        2040703
  const BoxContainerList(
    cardSubTitle: "  ملاحظة",
    cardTitle: "Dezmocin",
    cardTitle2: "Mezdocin",
    numberOfItems: "0",
    cardDate: "2024/2/11 م",
    imageUrl: "assets/images/Logo.png",
    backgroundColor: Color(0xFF3C0400),
  ), // ID  -- >        2040703
];
