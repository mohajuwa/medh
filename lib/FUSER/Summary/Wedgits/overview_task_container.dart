// ID  -- >        2040723
import 'package:flutter/material.dart';
import 'package:medh/FUSER/Summary/Values/values.dart';
import 'package:medh/Theme/theme.dart';
import 'package:sizer/sizer.dart';

import 'task_container_image.dart';

class OverviewTaskContainer extends StatelessWidget {
  final Color backgroundColor;
  final String imageUrl;
  final String numberOfItems;
  final String cardTitle;
  const OverviewTaskContainer(
      {Key? key,
      required this.imageUrl,
      required this.backgroundColor,
      required this.cardTitle,
      required this.numberOfItems})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Container(
          width: double.infinity.h,
          padding: const EdgeInsets.all(8),
          height: 7.h,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  TaskContainerImage(
                    imageUrl: imageUrl,
                    backgroundColor: backgroundColor,
                  ), // ID  -- >        2040726
                  AppSpaces.horizontalSpace20,
                  Text(
                    cardTitle,
                    style: const TextStyle(
                      fontFamily: 'El_Messiri',
                      fontSize: 18,
                    ),
                  )
                ],
              ),
              Row(children: [
                Text(numberOfItems,
                    style: TextStyle(
                        color: backgroundColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 16)),
                AppSpaces.horizontalSpace20,
                Icon(Icons.chevron_right,
                    color: colors(context).color1, size: 30)
              ])
            ],
          )),
    );
  }
}
