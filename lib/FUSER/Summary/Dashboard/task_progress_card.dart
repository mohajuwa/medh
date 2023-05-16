// ID  -- >        2040736

import 'package:flutter/material.dart';
import 'package:medh/FUSER/Summary/Constants/constants.dart';
import 'package:medh/Values/values.dart';
import 'package:medh/FUSER/Summary/Wedgits/progress_card_close_button.dart';
import 'package:medh/Theme/theme.dart';

class GTaskProgressCard extends StatelessWidget {
  final String cardTitle;
  final String rating;
  final String progressFigure;
  final int percentageGap;
  const GTaskProgressCard(
      {Key? key,
      required this.rating,
      required this.cardTitle,
      required this.progressFigure,
      required this.percentageGap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 1.5,
              offset: Offset(4, 8), // Shadow position
            ),
          ],
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              ...progressCardGradientList, // ID  -- >        2040740
            ],
          ),
        ),
        child: Stack(children: [
          const Positioned(
            top: 10,
            right: 10,
            child: ProgressCardCloseButton(), // ID  -- >        2040725
          ),
          Positioned(
              top: 30,
              bottom: 20,
              right: 10,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(cardTitle,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22)),
                  AppSpaces.verticalSpace10, // ID  -- >        2040704
                  Text('$rating is completed',
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16)),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                          width: 220,
                          height: 10,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20.0)),
                            color: colors(context).color1,
                          ),
                          child: Row(children: [
                            Expanded(
                                flex: percentageGap,
                                child: Container(
                                    decoration: BoxDecoration(
                                  color: colors(context).color1,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    bottomLeft: Radius.circular(20.0),
                                  ),
                                ))),
                            const Expanded(flex: 1, child: SizedBox())
                          ])),
                      const Spacer(),
                      Text(
                        "$progressFigure%",
                        style: TextStyle(
                          color: colors(context).color1,
                        ),
                      )
                    ],
                  )
                ],
              ))
        ]));
  }
}
