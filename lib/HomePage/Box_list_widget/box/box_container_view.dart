//  ID  -- >        2040706
import 'package:flutter/material.dart';
import 'package:medh/Theme/theme.dart';
import 'package:medh/HomePage/Box_list_widget/spacing.dart';

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
  const BoxContainerList(
      {Key? key,
      required this.imageUrl,
      required this.backgroundColor,
      required this.cardTitle,
      required this.cardSubTitle,
      required this.numberOfItems,
      required this.cardDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        width: 350,
        height: 85,
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
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(children: [
                        BoxFonList(
                          cardSubTitle: cardSubTitle,
                        ), // ID  -- >        2040708
                      ]),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
