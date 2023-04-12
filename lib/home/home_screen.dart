import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  List nameList = [
    "Anna Areletti",
    "ALex Sollary",
    "Archie Mellory",
    "ALisoan Boals",
    "Alicia Halls",
    "Anna Areletti",
    "ALex Sollary",
    "Archie Mellory",
  ];
  List photoList = [
    "assets/images/person1.jpg",
    "assets/images/person2.jpg",
    "assets/images/person3.jpg",
    "assets/images/person4.jpg",
    "assets/images/person5.jpg",
    "assets/images/person2.jpg",
    "assets/images/person4.jpg",
    "assets/images/person5.jpg",
  ];

  List MobileList = [
    "1122334455",
    "9988776655",
    "1212121212",
    "1112223334",
    "1100110011",
    "1122334455",
    "1112223334",
    "1100110011",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.black,
          )
        ],
        elevation: 0,
      ),
      floatingActionButton: Icon(Icons.add,color: Colors.black),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              children: [
                Text("MY CONTACT"),
              ],
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: "Type Name or Number",
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  ("A"),
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: nameList.length,
                itemBuilder: (context, index) {
                  return ContactList(
                      nameList[index], photoList[index], MobileList[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget ContactList(String name, String image, String mobile) {
    return SingleChildScrollView(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage("${image}"),
        ),
        title: Text("${name}",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
        subtitle: Text("${mobile}"),
        trailing: IconButton(onPressed: () {
          Future<void> launchPhoneNumber(String phoneNumber) async {
            String url = 'tel:';

            if (await launchUrl(url as Uri)) {
              await (url);
            }
          }
        },icon: Icon((Icons.call),),),
      ),
    );
  }
}
