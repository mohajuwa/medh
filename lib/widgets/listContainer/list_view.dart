import 'package:flutter/material.dart';
import 'package:medh/Theme/theme.dart';
import 'package:medh/widgets/spacing.dart';
import 'package:sizer/sizer.dart';

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
        width: double.infinity.h,
        padding: const EdgeInsets.all(8),
        height: 10.5.h,
        decoration: BoxDecoration(
          color: colors(context).color4,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const [
            BoxShadow(
              color: Color(0x47000000),
              blurRadius: 4,
              spreadRadius: 2,
            )
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(0.6.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ListContainerImage(
                        imageUrl: imageUrl,
                        backgroundColor: backgroundColor,
                      ),
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
              margin: EdgeInsets.only(
                right: 12.h,
              ),
              child: Row(
                children: [
                  Row(children: [
                    ListsFontContainer(
                      cardSubTitle: cardSubTitle,
                    )
                  ]),
                  Container(
                    margin: EdgeInsets.only(
                      right: 5.h,
                    ),
                    child: Row(
                      children: [
                        AddMedDateContainer(
                          cardDate: cardDate,
                        )
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
