// ID  -- >    2040683
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:medh/FuseR/Summary/Values/values.dart';
import 'package:medh/Theme/theme.dart';
import 'package:medh/NuseR/screens/results_screen.dart';
import 'package:medh/widgets/listContainer/list_view.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class SearchScreen extends StatelessWidget {
  List symptoms = [
    "الكل",
    "الظهار",
    "السبل",
    "المركزي",
    "الدائري",
  ];

  double? scrolledUnderElevation;

  SearchScreen({super.key});

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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.23,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: TextFormField(
                            // onTap: () => showSearch(
                            //   context: context,
                            //   delegate: CustomSearshDelegate(),
                            // ),
                            decoration: InputDecoration(
                              hintText: "إستعلام",
                              hintStyle: TextStyle(
                                color: colors(context).color6?.withOpacity(0.5),
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
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SelectableText(
                  "فلترة البحث حسب المنطقة",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              const SizedBox(height: 1),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: Divider(
                  color: colors(context).color3,
                  thickness: 2,
                  height: 2.0,
                ),
              ),
              SizedBox(
                height: 5.3.h,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: symptoms.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        padding: EdgeInsets.symmetric(horizontal: 2.2.h),
                        decoration: BoxDecoration(
                          color: colors(context).color3,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x47000000),
                              blurRadius: 1.5,
                              spreadRadius: 1,
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            symptoms[index],
                            style: const TextStyle(
                              fontFamily: 'El_Messiri',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 8),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "نتيجة الإستعلام ",
                  style: TextStyle(fontSize: 18),
                ),
              ),
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
                            const ResultScreen(), // ID  -- >    2040695
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
                              cardTitle: "إسم الدواء ",
                              cardSubTitle: "شوية كلام يكتب هنا",
                              numberOfItems: "120",
                              cardDate: "99%  متوفر ",
                              imageUrl:
                                  "lib/FuseR/Summary/assets/green_pencil.png",
                              backgroundColor: HexColor.fromHex("7FBC69"),
                            ), //  ID  -- >        2040703
                            ListsContainer(
                              cardSubTitle: "شوية كلام يكتب هنا",
                              cardTitle: "إسم الدواء",
                              numberOfItems: "74",
                              cardDate: "85%  متوفر ",
                              imageUrl:
                                  "lib/FuseR/Summary/assets/orange_pencil.png",
                              backgroundColor: HexColor.fromHex("EFA17D"),
                            ),
                            ListsContainer(
                              cardSubTitle: "شوية كلام يكتب هنا",
                              cardTitle: "إسم الدواء ",
                              numberOfItems: "23",
                              cardDate: "77%  متوفر ",
                              imageUrl: "assets/images/icon.png",
                              backgroundColor: HexColor.fromHex("C395FC"),
                            ), // ID  -- >        2040703
                            ListsContainer(
                              cardSubTitle: "شوية كلام يكتب هنا",
                              cardTitle: "إسم الدواء ",
                              numberOfItems: "15",
                              cardDate: "60%  متوفر ",
                              imageUrl: "lib/FuseR/Summary/assets/cone.png",
                              backgroundColor: HexColor.fromHex("EDA7FA"),
                            ), // ID  -- >        2040703
                            const ListsContainer(
                              cardSubTitle: "شوية كلام يكتب هنا",
                              cardTitle: "إسم الدواء ",
                              numberOfItems: "7",
                              cardDate: "41%  متوفر ",
                              imageUrl: "assets/stickers/stic_10-17.png",
                              backgroundColor: Color(0xFFC44036),
                            ), // ID  -- >        2040703
                            const ListsContainer(
                              cardSubTitle: "شوية كلام يكتب هنا",
                              cardTitle: "إسم الدواء ",
                              numberOfItems: "3",
                              cardDate: "5%  متوفر ",
                              imageUrl: "assets/images/icon1.png",
                              backgroundColor: Color(0xFF9B0A00),
                            ), // ID  -- >
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

class CustomSearshDelegate extends SearchDelegate<String> {
  CustomSearshDelegate()
      : super(
          searchFieldLabel: "إستعلام",
          searchFieldStyle: const TextStyle(
            locale: Locale("ar", "YE"),
          ),
        );
  List<String> searchTerms = [
    'Amfinac',
    'Panadol Extra',
    'حق المعدة ، هههه',
    'Blue alephant',
    'Sleep bells',
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(
          Icons.clear,
        ),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => Navigator.of(context).pop(),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var meds in searchTerms) {
      if (meds.toLowerCase().contains(
            query.toLowerCase(),
          )) {
        matchQuery.add(meds);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (BuildContext context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var meds in searchTerms) {
      if (meds.toLowerCase().contains(
            query.toLowerCase(),
          )) {
        matchQuery.add(meds);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (BuildContext context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}

class CustomLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const CustomLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'ar';

  @override
  Future<MaterialLocalizations> load(Locale locale) =>
      SynchronousFuture<MaterialLocalizations>(const CustomLocalization());

  @override
  bool shouldReload(CustomLocalizationDelegate old) => false;

  @override
  String toString() => 'CustomLocalization.delegate(ar_YE)';
}

class CustomLocalization extends DefaultMaterialLocalizations {
  const CustomLocalization();
  @override
  String get searchFieldLabel => "My hint text";
}
