import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medh/widgets/Dev_Search/widgets/list_meds_container.dart';
import 'package:medh/Theme/theme.dart';

class MedsScreen extends StatelessWidget {
  final Meds meds;
  const MedsScreen({
    super.key,
    required this.meds,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: colors(context).color5,
        body: SingleChildScrollView(
          child: ListBody(
            children: [
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Stack(
                  children: [
                    Row(
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
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 35,
                            backgroundImage:
                                AssetImage("assets/images/Logo.png"),
                          ),
                          const SizedBox(height: 15),
                          Text(
                            meds.cardTitle,
                            style: const TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            meds.cardSubTitle,
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
                    height: MediaQuery.of(context).size.height / 1.5,
                    width: 360,
                    padding: const EdgeInsets.only(
                      top: 20,
                      right: 15,
                    ),
                    decoration: BoxDecoration(
                      color: colors(context).colorContainer,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Text(
                          "معلومات الدواء",
                        ),
                        const SizedBox(height: 5),
                        Text(
                          meds.cardSubTitle,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Text(
                              "التقييمات",
                            ),
                            const SizedBox(width: 10),
                            Icon(Icons.star, color: colors(context).color2),
                            const Text(
                              "4.8",
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              "(عدد المراجعات)",
                              style: TextStyle(fontSize: 12),
                            ),
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
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x3C000000),
                                      blurRadius: 1.5,
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: SizedBox(
                                  width: 300,
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
                                        title: const Text("إسم الدواء ",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                            )),
                                        subtitle: const Text("وصف الدواء"),
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
                                      const SizedBox(height: 5),
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          "نشرة أساسية للدواء",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 10),
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
                            "إسم الصدلية",
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
              height: 130,
              decoration: BoxDecoration(
                color: colors(context).colorContainer,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x3C000000),
                    blurRadius: 3,
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
                  InkWell(
                    onTap: () {
                      // Go back to last page
                      Navigator.pop(
                        context,
                        // ID  -- >    2040687
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: colors(context).color1,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "طلب : إستعلام",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ),
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
