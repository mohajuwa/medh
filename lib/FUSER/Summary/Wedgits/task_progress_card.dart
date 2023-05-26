// ID  -- >        2040727
import 'package:flutter/material.dart';
import 'package:medh/FUSER/Summary/Constants/constants.dart';
import 'package:medh/Values/values.dart';
import 'package:medh/FUSER/Summary/Wedgits/progress_card_close_button.dart';
import 'package:medh/Theme/theme.dart';

class TaskProgressCard extends StatelessWidget {
  final String cardTitle;

  final String rating;
  final String progressFigure;
  final int percentageGap;
  const TaskProgressCard(
      {Key? key,
      required this.rating,
      required this.cardTitle,
      required this.progressFigure,
      required this.percentageGap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 160,
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
            top: 5, right: 10,
            child: ProgressCardCloseButton(), //ID  -- >        2040725
          ),
          Positioned(
              top: 30,
              bottom: 20,
              right: 10,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cardTitle,
                    style: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'El_Messiri',
                    ),
                  ),
                  AppSpaces.verticalSpace10, // ID  -- >        2040704

                  Text(
                    '$rating co',
                    style: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'El_Messiri',
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                          width: 190,
                          height: 10,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.white),
                          child: Row(children: [
                            Expanded(
                                flex: percentageGap,
                                child: Container(
                                    decoration: BoxDecoration(
                                  color: colors(context).color7,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    bottomLeft: Radius.circular(20.0),
                                  ),
                                ))),
                            const Expanded(flex: 1, child: SizedBox())
                          ])),
                      const Spacer(),
                      Text("$progressFigure%",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ))
                    ],
                  )
                ],
              ))
        ]));
  }
}
