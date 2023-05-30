// ID  -- >    2040683
import 'package:flutter/material.dart';
import 'package:medh/widgets/Dev_Search/widgets/list_meds_container.dart';
import 'package:medh/widgets/Forms/search_box_nuser.dart';

// ignore: must_be_immutable
class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  final _searchController = TextEditingController();
  List<Meds> med = allMeds;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
        child: ListView(
          children: <Widget>[
            SizedBox(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 340,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: SearchBox(
                              placeholder: 'إستعلام',
                              controller: _searchController,
                            ),
                          ),
                        ],
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

// class CustomSearshDelegate extends SearchDelegate<String> {
//   CustomSearshDelegate()
//       : super(
//           searchFieldLabel: "إستعلام",
//           searchFieldStyle: const TextStyle(
//             locale: Locale("ar", "YE"),
//           ),
//         );
//   List<String> searchTerms = [
//     'Amfinac',
//     'Panadol Extra',
//     'حق المعدة ، هههه',
//     'Blue alephant',
//     'Sleep bells',
//   ];

//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         onPressed: () {
//           query = '';
//         },
//         icon: const Icon(
//           Icons.clear,
//         ),
//       ),
//     ];
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: const Icon(Icons.arrow_back),
//       onPressed: () => Navigator.of(context).pop(),
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     List<String> matchQuery = [];
//     for (var meds in searchTerms) {
//       if (meds.toLowerCase().contains(
//             query.toLowerCase(),
//           )) {
//         matchQuery.add(meds);
//       }
//     }
//     return ListView.builder(
//       itemCount: matchQuery.length,
//       itemBuilder: (BuildContext context, index) {
//         var result = matchQuery[index];
//         return ListTile(
//           title: Text(result),
//         );
//       },
//     );
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     List<String> matchQuery = [];
//     for (var meds in searchTerms) {
//       if (meds.toLowerCase().contains(
//             query.toLowerCase(),
//           )) {
//         matchQuery.add(meds);
//       }
//     }
//     return ListView.builder(
//       itemCount: matchQuery.length,
//       itemBuilder: (BuildContext context, index) {
//         var result = matchQuery[index];
//         return ListTile(
//           title: Text(result),
//         );
//       },
//     );
//   }
// }

// class CustomLocalizationDelegate
//     extends LocalizationsDelegate<MaterialLocalizations> {
//   const CustomLocalizationDelegate();

//   @override
//   bool isSupported(Locale locale) => locale.languageCode == 'ar';

//   @override
//   Future<MaterialLocalizations> load(Locale locale) =>
//       SynchronousFuture<MaterialLocalizations>(const CustomLocalization());

//   @override
//   bool shouldReload(CustomLocalizationDelegate old) => false;

//   @override
//   String toString() => 'CustomLocalization.delegate(ar_YE)';
// }

// class CustomLocalization extends DefaultMaterialLocalizations {
//   const CustomLocalization();
//   @override
//   String get searchFieldLabel => "My hint text";
// }
