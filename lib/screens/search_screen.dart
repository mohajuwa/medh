import 'package:flutter/material.dart';
import 'package:medh/screens/appointment_screen.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

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
const clr = Color(0xFF58329B);
bool shadowColor = false;
double? scrolledUnderElevation;

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  'الإستعلام عن الأدوية',
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
                    Container(
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: "إستعلام",
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
          const SizedBox(height: 3),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.0),
            child: Divider(
              thickness: 1,
              height: 2.0,
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "فلترة البحث حسب المنطقة",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 5),
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
                      color: const Color(0xFFF4F6FA),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: clr,
                          blurRadius: 4,
                          spreadRadius: 1,
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        symptoms[index],
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0x89000000),
                        ),
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
              style: TextStyle(
                fontSize: 18,
                color: Colors.black45,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.0),
            child: Divider(
              thickness: 1,
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
                            builder: (context) => AppointmentScreen(),
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
                      "موقع الصيدلية : بالقرب مني",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0x89000000),
                      ),
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
