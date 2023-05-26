// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medh/HomePage/Box_list_widget/listContainer/list_view.dart';
import 'package:medh/Theme/theme.dart';
import 'package:medh/Values/values.dart';
import 'package:medh/widgets/Buttons/primary_tab_buttons.dart';
import 'package:medh/widgets/Dev_Search/meds_screen.dart';
import 'package:medh/widgets/Shapes/app_settings_icon.dart';

class SearchBox extends StatefulWidget {
  final String placeholder;

  final TextEditingController? controller;
  const SearchBox({
    Key? key,
    required this.placeholder,
    this.controller,
  }) : super(key: key);

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

final _settingsButtonTrigger = ValueNotifier(0);

class _SearchBoxState extends State<SearchBox> {
  List<ListsContainer> medfuser = allMedsFuser;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Column(
            children: [
              SizedBox(
                child: TextFormField(
                  controller: widget.controller,
                  style: TextStyle(
                    fontSize: 20,
                    color: colors(context).colorWhiteToBlack0,
                  ),
                  onTap: () {},
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 15,
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(
                        FeatherIcons.search,
                        color: colors(context).colorWhiteToBlack,
                      ),
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                        widget.controller!.text = "";
                      },
                      child: Icon(
                        FontAwesomeIcons.solidTimesCircle,
                        color: colors(context).colorWhiteToBlack,
                      ),
                    ),

                    hintText: widget.placeholder,
                    hintStyle: TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontFamily: 'El_Messiri',
                      fontSize: 18,
                      color: colors(context).colorWhiteToBlack,
                    ),
                    filled: true,
                    fillColor: colors(context).color4,

                    // enabledBorder: UnderlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10.0),
                    //   borderSide: BorderSide(color: HexColor.fromHex("3C3E49")),
                    // ),
                    // focusedBorder: UnderlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10.0),
                    //   borderSide: BorderSide(color: HexColor.fromHex("BEF0B2")),
                    // ),
                  ),
                  onChanged: searchMeds,
                ),
              ),
            ],
          ),
          AppSpaces.verticalSpace10,
          Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    PrimaryTabButton(
                        buttonText: "الكل",
                        itemIndex: 0,
                        notifier: _settingsButtonTrigger),
                    PrimaryTabButton(
                        buttonText: "الطلب ",
                        itemIndex: 1,
                        notifier: _settingsButtonTrigger),
                    PrimaryTabButton(
                        buttonText: "الكمية",
                        itemIndex: 2,
                        notifier: _settingsButtonTrigger),
                    PrimaryTabButton(
                        buttonText: "الأقل",
                        itemIndex: 3,
                        notifier: _settingsButtonTrigger),
                    Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: const AppSettingsIcon(
                                    // callback: ((),{_showDashboardSettings(context);}),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                AppSpaces.verticalSpace20,
                Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: medfuser.length,
                            itemBuilder: (BuildContext context, int index) {
                              final meds = medfuser[index];

                              return SingleChildScrollView(
                                physics: const NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                child: ListTile(
                                  title: meds,
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MedsScreen(
                                        meds: meds,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
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
    );
  }

  void searchMeds(String query) {
    final suggesstions = allMedsFuser.where((medsFuser) {
      final cartTitle = medsFuser.cardTitle.toLowerCase();

      final input = query.toLowerCase();

      return cartTitle.contains(input);
    }).toList();

    setState(() => medfuser = suggesstions);
  }
}
