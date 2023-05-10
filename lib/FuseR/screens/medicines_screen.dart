//  ID  -- >        2040759
// صفحة الأدوية

import 'package:flutter/material.dart';
import 'package:medh/Theme/theme.dart';
import 'package:medh/widgets/listContainer/list_view.dart';

import 'add_medcine.dart';
import 'package:medh/FuseR/Summary/Values/values.dart';

import 'edit_medicine2.dart';

// ignore: must_be_immutable
class FuserMedicineScreen extends StatelessWidget {
  List imgs = [
    "icon1.png",
    "icon1.png",
    "icon1.png",
    "icon1.png",
    "icon1.png",
    "icon1.png",
  ];

  FuserMedicineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          toolbarHeight: 8,
          floating: true,
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                    color: colors(context).color4,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x3C000000),
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "بحث",
                                  hintStyle: TextStyle(
                                    color: colors(context)
                                        .color6
                                        ?.withOpacity(0.5),
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.search,
                            color: colors(context).colorWhiteToBlack,
                          ),
                          Icon(
                            Icons.photo_camera,
                            color: colors(context).colorWhiteToBlack,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const AddMedcineScreen(), // ID  -- >        2040744
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(right: 20, top: 5),
                      child: Text(
                        'الأدوية',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SelectableText(
                  " حسب الأكثر طلباً",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: Divider(
                  color: colors(context).color3,
                  thickness: 2,
                  height: 2.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const FuserEdit2MedcineScreen(), // ID  -- >        2040746
                      ),
                    );
                  },
                  child: Hero(
                    tag: "hero",
                    child: Column(
                      children: [
                        Column(
                          children: [
                            ListsContainer(
                              cardTitle: "إسم الصنف ",
                              cardSubTitle: "شوية كلام يكتب هنا",
                              numberOfItems: "120",
                              cardDate: "2024/2/11 م",
                              imageUrl:
                                  "lib/FuseR/Summary/assets/orange_pencil.png",
                              backgroundColor: HexColor.fromHex("EFA17D"),
                            ), //  ID  -- >        2040703
                            ListsContainer(
                              cardSubTitle: "شوية كلام يكتب هنا",
                              cardTitle: "إسم الصنف",
                              numberOfItems: "74",
                              cardDate: "2024/2/11 م",
                              imageUrl:
                                  "lib/FuseR/Summary/assets/green_pencil.png",
                              backgroundColor: HexColor.fromHex("7FBC69"),
                            ),
                            ListsContainer(
                              cardSubTitle: "شوية كلام يكتب هنا",
                              cardTitle: "إسم الصنف ",
                              numberOfItems: "5",
                              cardDate: "2024/2/11 م",
                              imageUrl: "lib/FuseR/Summary/assets/cone.png",
                              backgroundColor: HexColor.fromHex("EDA7FA"),
                            ), // ID  -- >        2040703
                          ],
                        ),
                        Column(
                          children: [
                            ListsContainer(
                                cardSubTitle: "شوية كلام يكتب هنا",
                                cardTitle: "إسم الصنف ",
                                numberOfItems: "24",
                                cardDate: "2024/2/11 م",
                                imageUrl: "assets/images/icon.png",
                                backgroundColor: HexColor.fromHex("EFA17D")),
                            ListsContainer(
                                cardSubTitle: "شوية كلام يكتب هنا",
                                cardTitle: "إسم الصنف ",
                                numberOfItems: "80",
                                cardDate: "2024/2/11 م",
                                imageUrl: "assets/stickers/stic_10-17.png",
                                backgroundColor: HexColor.fromHex("7FBC69")),
                            ListsContainer(
                              cardSubTitle: "شوية كلام يكتب هنا",
                              cardTitle: "إسم الصنف ",
                              numberOfItems: "3",
                              cardDate: "2024/2/11 م",
                              imageUrl: "assets/images/icon1.png",
                              backgroundColor: HexColor.fromHex("EDA7FA"),
                            ), // ID  -- >        2040703
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
