// ID  -- >        2040722
import 'package:flutter/material.dart';
import 'package:medh/FUSER/Summary/Values/values.dart';
import 'package:medh/Theme/theme.dart';
import 'package:sizer/sizer.dart';

class DailyGoalCard extends StatelessWidget {
  const DailyGoalCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: 40.h,
          padding: const EdgeInsets.all(15.0),
          height: 24.h,
          decoration: BoxDecoration(
            color: colors(context).color4,
            borderRadius: BorderRadius.circular(18),
            boxShadow: const [
              BoxShadow(
                color: Color(0xAD000000),
                blurRadius: 1.5,
                spreadRadius: 1,
              )
            ],
          ),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //left side
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('مبيعات يومية',
                        style: TextStyle(
                            color: colors(context).colorWhiteToBlack,
                            fontSize: 17,
                            fontWeight: FontWeight.w500)),
                    AppSpaces.verticalSpace10, // ID  -- >        2040704
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 50,
                          height: 25,
                          decoration: BoxDecoration(
                            color: colors(context).color2,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              '56',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        AppSpaces.horizontalSpace10,
                        const Text('مبيعات',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500)),
                      ],
                    ),
                    AppSpaces.verticalSpace10, // ID  -- >        2040704
                    const Text('مرتجع 56/5 \nمكتملة  56🎉',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500)),
                    Center(
                      child: SizedBox(
                        width: 90,
                        height: 45,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: colors(context).color1,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Text(
                                "كل المبيعات",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 8, color: HexColor.fromHex("434552"))),
                        child: Center(
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration:
                                const BoxDecoration(shape: BoxShape.circle),
                            child: const ClipOval(
                              child: Image(
                                fit: BoxFit.contain,
                                image: AssetImage(
                                  "assets/images/Logo.png",
                                ),
                              ),
                            ),
                          ),
                        )),
                    Positioned(
                      top: 5,
                      left: 5,
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: TweenAnimationBuilder<double>(
                          tween: Tween<double>(begin: 0.0, end: 0.80),
                          duration: const Duration(milliseconds: 1000),
                          builder: (context, value, _) => SizedBox(
                            width: 90,
                            height: 90,
                            child: CircularProgressIndicator(
                              strokeWidth: 8,
                              value: value,
                              color: colors(context).color2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ])),
    );
  }
}
