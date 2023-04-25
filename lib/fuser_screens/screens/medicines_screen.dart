// صفحة الأدوية

import 'package:flutter/material.dart';

import 'add_medcine.dart';
import 'medicine_detils2_screen.dart';

class FuserMedicineScreen extends StatefulWidget {
  const FuserMedicineScreen({super.key});

  @override
  State<FuserMedicineScreen> createState() => _FuserMedicineScreenState();
}

List imgs = [
  "doc2.jpg",
  "doc2.jpg",
  "doc2.jpg",
  "doc2.jpg",
  "doc2.jpg",
  "doc2.jpg",
];
const clr = Color(0xFF58329B);
bool shadowColor = false;
double? scrolledUnderElevation;

class _FuserMedicineScreenState extends State<FuserMedicineScreen> {
  @override
  Widget build(BuildContext context) {
    //  هذا عشان زر الرجوع

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          scrolledUnderElevation: scrolledUnderElevation,
          shadowColor: shadowColor ? Theme.of(context).colorScheme.shadow : clr,
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 0, top: 5, left: 160),
                  child: Text(
                    'الأدوية',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x1F000000),
                        blurRadius: 10,
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
                            decoration: const InputDecoration(
                              hintText: "بحث",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.search,
                        color: Color(0xFF58329B),
                      ),
                      const Icon(
                        Icons.photo_camera,
                        color: Color(0xFF58329B),
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
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddMedcineScreen(),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: clr,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x1F000000),
                          blurRadius: 6,
                          spreadRadius: 4,
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.add,
                            color: clr,
                            size: 20,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "إضافة دواء",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "جديد",
                          style: TextStyle(
                            color: Colors.blue.shade100,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                " الأكثر طلباً",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    width: 65,
                    height: 65,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x1F000000),
                          spreadRadius: 2,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Stack(
                      textDirection: TextDirection.rtl,
                      children: [
                        Center(
                          child: SizedBox(
                            height: 65,
                            width: 65,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                "assets/images/${imgs[index]}",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(4),
                          padding: const EdgeInsets.all(3),
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.amber.shade200,
                              shape: BoxShape.circle,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
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
                                  const FuserMedicineDitles2Screen(),
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
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        "وصف الدواء يتم كتابته هنا",
                        maxLines: 16,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0x89000000),
                        ),
                      ),
                      trailing: const Text(
                        "12:30  : ساعة او تاريخ الإضافة",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0x89000000),
                        ),
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
