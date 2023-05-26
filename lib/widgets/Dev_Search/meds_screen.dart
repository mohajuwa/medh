import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medh/HomePage/Box_list_widget/listContainer/list_view.dart';
import 'package:medh/HomePage/Box_list_widget/spacing.dart';
import 'package:medh/Theme/theme.dart';

class MedsScreen extends StatelessWidget {
  final ListsContainer meds;

  const MedsScreen({
    super.key,
    required this.meds,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: meds.backgroundColor,
        body: SingleChildScrollView(
          child: ListBody(
            children: [
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 360,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Icon(
                                  Icons.arrow_back_ios_new,
                                  color: Colors.white70,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Icon(
                                  Icons.more_vert,
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: colors(context).color4,
                            radius: 70,
                            backgroundImage: AssetImage(meds.imageUrl),
                          ),
                          const SizedBox(height: 15),
                          Text(
                            meds.cardTitle,
                            style: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            meds.cardCompany,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: colors(context).color1,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.call,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ),
                              const SizedBox(width: 20),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: colors(context).color1,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  CupertinoIcons.chat_bubble_text_fill,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 1.9,
                    width: 360,
                    padding: const EdgeInsets.only(
                      top: 20,
                      right: 15,
                    ),
                    decoration: BoxDecoration(
                      color: colors(context).color4,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(90),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          meds.cardSubTitle,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          meds.cardCompany,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Text(
                              "الكمية  :",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(width: 10),

                            Text(
                              meds.numberOfItems,
                              style: TextStyle(
                                color: colors(context).color1,
                                fontSize: 24,
                              ),
                            ),
                            const SizedBox(width: 5),

                            // align next widget to the end of row
                            const Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "قراءة المزيد",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: colors(context).color1,
                                  fontFamily: 'El_Messiri',
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 2,
                          height: 2,
                        ),
                        AppSpaces.verticalSpace10,
                        const Text(
                          "أدوية مشابهة",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 130,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.all(10),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                decoration: BoxDecoration(
                                  color: colors(context).color4,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x3C000000),
                                      blurRadius: 1.5,
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: SizedBox(
                                  width: 250,
                                  child: Column(
                                    children: [
                                      ListTile(
                                        leading: CircleAvatar(
                                          backgroundColor: meds.backgroundColor,
                                          radius: 25,
                                          backgroundImage: AssetImage(
                                            meds.imageUrl,
                                          ),
                                        ),
                                        title: Text(meds.cardTitle2,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w500,
                                            )),
                                        subtitle: Text(
                                          meds.cardDate,
                                        ),
                                        trailing: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(5),
                                              decoration: const BoxDecoration(
                                                color: Colors.green,
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                            const SizedBox(width: 5),
                                            Text(
                                              "متوفر",
                                              style: TextStyle(
                                                color: colors(context).color2,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          "ملاحظة الدواء",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const Divider(
                          thickness: 2,
                          height: 2,
                        ),
                        const Text(
                          "موقع الصيدلية",
                        ),
                        ListTile(
                          leading: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: colors(context).color4,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.location_on,
                              size: 30,
                            ),
                          ),
                          title: const Text(
                            "إسم الصيدلية",
                          ),
                          subtitle: const Text(" موقع الصيدلية ، يظهر هنا "),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 360,
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(bottom: 10),
              height: 130,
              decoration: BoxDecoration(
                color: colors(context).color4,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(90),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x3C000000),
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
                      const Text(
                        "سعر الدواء",
                      ),
                      Text(
                        "\$غير محدد",
                        style: TextStyle(color: colors(context).color3),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: colors(context).color1,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(
                            context,
                            //   MaterialPageRoute(
                            //     builder: ((context) => FuserEdit2MedcineScreen(
                            //         medsFuserEdit:
                            //             meds)), // ID  -- >        2040746
                            //   ),
                          );
                        },
                        child: Row(
                          children: [
                            Container(
                              width: 200,
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color: colors(context).color1,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Center(
                                child: Text(
                                  "إستعلام الآن",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ],
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
