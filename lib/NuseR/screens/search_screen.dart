// ID  -- >    2040683
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/Theme/theme.dart';
import 'package:medh/NuseR/screens/results_screen.dart';

// ignore: must_be_immutable
class SearchScreen extends ConsumerWidget {
  List imgs = [
    "doc2.jpg",
    "doc2.jpg",
    "doc2.jpg",
    "doc2.jpg",
    "doc2.jpg",
    "doc2.jpg",
  ];
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
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          title: Padding(
            padding: const EdgeInsets.only(top: 1, bottom: 5),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: colors(context).color4,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x3C000000),
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 300,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: TextFormField(
                            onTap: () => showSearch(
                              context: context,
                              delegate: CustomSearshDelegate(),
                            ),
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
                      const Icon(
                        Icons.search,
                      ),
                      const Icon(
                        Icons.photo_camera,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Divider(
                color: colors(context).color3,
                thickness: 2,
                height: 2.0,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("فلترة البحث حسب المنطقة",
                  style: Theme.of(context).textTheme.titleMedium),
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: symptoms.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                        color: colors(context).color4,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x3C000000),
                            blurRadius: 4,
                            spreadRadius: 2,
                          )
                        ],
                      ),
                      child: Center(
                        child: Text(
                          symptoms[index],
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "نتيجة الإستعلام ",
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
            const SizedBox(height: 10),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      minVerticalPadding: 15,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ResultScreen(), // ID  -- >    2040695
                            ));
                      },
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                          "assets/images/${imgs[index]}",
                        ),
                      ),
                      title: const Text(
                        "إسم الدواء",
                      ),
                      subtitle: Text(
                        "وصف الدواء يتم كتابته هنا",
                        maxLines: 16,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      trailing: Text(
                        "موقع الصيدلية : بالقرب مني",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  );
                })
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
