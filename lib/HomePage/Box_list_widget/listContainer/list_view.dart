// ID  -- >        2040703
import 'package:flutter/material.dart';
import 'package:medh/Theme/theme.dart';
import 'package:medh/HomePage/Box_list_widget/spacing.dart';

import 'add_med_date.dart';
import 'lis_medFont.dart';
import 'list_image_container.dart';

class ListsContainer extends StatelessWidget {
  final Color backgroundColor;
  final String imageUrl;
  final String numberOfItems;
  final String cardTitle;
  final String cardDate;
  final String cardSubTitle;
  const ListsContainer(
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
        padding: const EdgeInsets.all(8),
        height: 90,
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
                      ListContainerImage(
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
                      Text(numberOfItems,
                          style: TextStyle(
                              color: backgroundColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 16)),
                      Icon(Icons.chevron_right,
                          color: colors(context).color1, size: 30),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                right: 100,
              ),
              child: Row(
                children: [
                  Row(children: [
                    ListsFontContainer(
                      cardSubTitle: cardSubTitle,
                    ), // ID  -- >        2040701
                  ]),
                  Container(
                    margin: const EdgeInsets.only(
                      right: 60,
                    ),
                    child: Row(
                      children: [
                        AddMedDateContainer(
                          cardDate: cardDate,
                          backgroundColor: backgroundColor,
                        ), //ID  -- >        2040700
                      ],
                    ),
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
