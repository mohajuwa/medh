//  ID  -- >        2040759
// صفحة الأدوية

import 'package:flutter/material.dart';
import 'package:medh/widgets/Forms/search_box_fuser.dart';

// ignore: must_be_immutable
class FuserMedicineScreen extends StatelessWidget {
  FuserMedicineScreen({super.key});
  final _searchController = TextEditingController();
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
                            child: FuserSearchBox(
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
