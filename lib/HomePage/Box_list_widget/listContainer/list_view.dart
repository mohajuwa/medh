// ID  -- >        2040703
import 'package:flutter/material.dart';
import 'package:medh/Theme/theme.dart';

import 'package:medh/HomePage/Box_list_widget/listContainer/list_image_container.dart';
import 'package:medh/Values/values.dart';

class ListsContainer extends StatelessWidget {
  final Color backgroundColor;
  final String imageUrl;
  final String numberOfItems;
  final String cardTitle;
  final String cardDate;
  final String cardSubTitle;
  final String cardTitle2;
  final String cardCompany;

  const ListsContainer(
      {Key? key,
      required this.imageUrl,
      required this.backgroundColor,
      required this.cardTitle,
      required this.cardSubTitle,
      required this.numberOfItems,
      required this.cardDate,
      required this.cardTitle2,
      required this.cardCompany})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        width: 280,
        padding: const EdgeInsets.all(15),
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
              padding: const EdgeInsets.only(top: 0, right: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ListContainerImage(
                        imageUrl: imageUrl,
                        backgroundColor: backgroundColor,
                      ), //ID  -- >        2040702
                      AppSpaces.horizontalSpace10,

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
                              fontSize: 14)),
                      Icon(Icons.chevron_right,
                          color: colors(context).color1, size: 30),
                    ],
                  ),
                ],
              ),
            ),
            // Container(
            //   margin: const EdgeInsets.only(
            //     right: 100,
            //   ),
            //   child: Row(
            //     children: [
            //       Row(children: [
            //         ListsFontContainer(
            //           cardSubTitle: cardSubTitle,
            //         ), // ID  -- >        2040701
            //       ]),
            //       Container(
            //         margin: const EdgeInsets.only(
            //           right: 60,
            //         ),
            //         child: Row(
            //           children: [
            //             AddMedDateContainer(
            //               cardDate: cardDate,
            //               backgroundColor: backgroundColor,
            //             ), //ID  -- >        2040700
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

final allMedsFuser = [
  ListsContainer(
    cardTitle: "Nobasi",
    cardTitle2: "Osamasi",
    cardCompany: "الشركة الوطنية للأدوية",
    cardSubTitle: "وصف مختصر للصنف",
    numberOfItems: "120",
    cardDate: "2024/2/11 م",
    imageUrl: "lib/FUSER/Summary/assets/green_pencil.png",
    backgroundColor: HexColor.fromHex("7FBC69"),
  ), //  ID  -- >        2040703
  ListsContainer(
    cardSubTitle: "وصف مختصر للصنف",
    cardTitle: "Aspren",
    cardTitle2: "Panadol",
    cardCompany: "الشركة الوطنية للأدوية",
    numberOfItems: "74",
    cardDate: "2024/2/11 م",
    imageUrl: "lib/FUSER/Summary/assets/orange_pencil.png",
    backgroundColor: HexColor.fromHex("EFA17D"),
  ),
  ListsContainer(
    cardSubTitle: "وصف مختصر للصنف",
    cardTitle: "Mocafin",
    cardTitle2: "Tocafin",
    cardCompany: "الشركة الوطنية للأدوية",
    numberOfItems: "23",
    cardDate: "2024/2/11 م",
    imageUrl: "assets/images/icon.png",
    backgroundColor: HexColor.fromHex("C395FC"),
  ), // ID  -- >        2040703
  ListsContainer(
    cardSubTitle: "وصف مختصر للصنف",
    cardTitle: "Kafilen",
    cardTitle2: "Tafilen",
    cardCompany: "الشركة الوطنية للأدوية",
    numberOfItems: "15",
    cardDate: "2024/2/11 م",
    imageUrl: "lib/FUSER/Summary/assets/cone.png",
    backgroundColor: HexColor.fromHex("EDA7FA"),
  ),
  const ListsContainer(
    cardSubTitle: "وصف مختصر للصنف",
    cardTitle: "Dobalen",
    cardTitle2: "Sovalen",
    cardCompany: "شركة المقوتي للإدوية",
    numberOfItems: "9",
    cardDate: "2024/2/11 م",
    imageUrl: "assets/stickers/stic_10-17.png",
    backgroundColor: Color(0xFFC44036),
  ),
  const ListsContainer(
    cardSubTitle: "وصف مختصر للصنف",
    cardTitle: "Hashilen",
    cardTitle2: "Fashilen",
    cardCompany: "شركة عبدالله سعيد للقمح والأدوية",
    numberOfItems: "3",
    cardDate: "2024/2/11 م",
    imageUrl: "assets/images/Logo.png",
    backgroundColor: Color(0xFF9B0A00),
  ), // ID  -- >        2040703
  const ListsContainer(
    cardSubTitle: "وصف مختصر للصنف",
    cardTitle: "Fattallen",
    cardTitle2: "Mazzallen",
    cardCompany: "الوازعية للإدوية العقارية",
    numberOfItems: "1",
    cardDate: "2024/2/11 م",
    imageUrl: "assets/images/Logo.png",
    backgroundColor: Color(0xFF700700),
  ), // ID  -- >        2040703
  const ListsContainer(
    cardSubTitle: "وصف مختصر للصنف",
    cardTitle: "Dezmocin",
    cardTitle2: "Mezdocin",
    cardCompany: "الشركة المفروطة للإدوية ",
    numberOfItems: "0",
    cardDate: "2024/2/11 م",
    imageUrl: "assets/images/Logo.png",
    backgroundColor: Color(0xFF3C0400),
  ), // ID  -- >        2040703
];
