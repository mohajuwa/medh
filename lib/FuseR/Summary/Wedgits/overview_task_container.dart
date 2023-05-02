import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medh/FuseR/Summary/Values/values.dart';
import 'package:medh/FuseR/Summary/Wedgits/task_container_image%20copy.dart';
import 'package:medh/Theme/theme.dart';

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
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(8),
          height: 80,
          decoration: BoxDecoration(
            color: colors(context).color7,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: const [
              BoxShadow(
                color: Color(0x47000000),
                blurRadius: 4,
                spreadRadius: 2,
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
                  ),
                  AppSpaces.horizontalSpace20,
                  Text(
                    cardTitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'El_Messiri',
                      fontSize: 22,
                    ),
                  )
                ],
              ),
              Row(children: [
                Text(numberOfItems,
                    style: GoogleFonts.lato(
                        color: backgroundColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 20)),
                AppSpaces.horizontalSpace20,
                const Icon(Icons.chevron_right, color: Colors.white, size: 30)
              ])
            ],
          )),
    );
  }
}
