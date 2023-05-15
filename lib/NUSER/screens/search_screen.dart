// ID  -- >    2040683
import 'package:flutter/material.dart';
import 'package:medh/widgets/Buttons/primary_tab_buttons.dart';
import 'package:medh/widgets/Forms/search_box.dart';
import 'package:medh/widgets/Shapes/app_settings_icon.dart';
import 'package:flutter/foundation.dart';
import 'package:medh/FUSER/Summary/Values/values.dart';
import 'package:medh/Theme/theme.dart';
import 'package:medh/NUSER/screens/results_screen.dart';
import 'package:medh/HomePage/Box_list_widget/listContainer/list_view.dart';

// ignore: must_be_immutable
class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  final _searchController = TextEditingController();
  final _settingsButtonTrigger = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SearchBox(
                        placeholder: 'إستعلام', controller: _searchController),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.only(top: 20, right: 10),
                      height: 60,
                      child: Text("إلغاء",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: HexColor.fromHex("616575"),
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    )),
              ],
            ),
            AppSpaces.verticalSpace10,
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              //tab indicators
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  PrimaryTabButton(
                      buttonText: "الكل",
                      itemIndex: 0,
                      notifier: _settingsButtonTrigger),
                  PrimaryTabButton(
                      buttonText: "السبل ",
                      itemIndex: 1,
                      notifier: _settingsButtonTrigger),
                  PrimaryTabButton(
                      buttonText: "الظهار",
                      itemIndex: 2,
                      notifier: _settingsButtonTrigger)
                ],
              ),
              Container(
                  alignment: Alignment.centerRight,
                  child: const AppSettingsIcon(
                      // callback: ((),{_showDashboardSettings(context);}),
                      ))
            ]),
            AppSpaces.verticalSpace20,
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
            Column(
              children: [
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
                    child: Column(
                      children: [
                        ListsContainer(
                          cardTitle: "إسم الدواء ",
                          cardSubTitle: "شوية كلام يكتب هنا",
                          numberOfItems: "120",
                          cardDate: "99%  متوفر ",
                          imageUrl: "lib/FUSER/Summary/assets/green_pencil.png",
                          backgroundColor: HexColor.fromHex("7FBC69"),
                        ), //  ID  -- >        2040703
                        ListsContainer(
                          cardSubTitle: "شوية كلام يكتب هنا",
                          cardTitle: "إسم الدواء",
                          numberOfItems: "74",
                          cardDate: "85%  متوفر ",
                          imageUrl:
                              "lib/FUSER/Summary/assets/orange_pencil.png",
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
                          imageUrl: "lib/FUSER/Summary/assets/cone.png",
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
                          imageUrl: "assets/images/Logo.png",
                          backgroundColor: Color(0xFF9B0A00),
                        ), // ID  -- >
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
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
