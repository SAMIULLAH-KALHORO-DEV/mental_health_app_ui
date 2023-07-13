import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  Screen1({super.key});
  final tStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
  List tList = [
    "bad mood",
    "insomnia",
    "apathy",
    "anger",
    "mood savings",
    "panic attacks"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 40, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 40,
                  width: 40,
                  child: Center(child: Icon(Icons.arrow_back_ios_new))),
              Text(
                "Session Info",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 40,
                  width: 40,
                  child: Center(child: Icon(Icons.add_moderator_outlined))),
            ]),
            SizedBox(height: 20),
            Row(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Icon(
                  CupertinoIcons.person_alt_circle,
                  size: 100,
                ),
              ),
              SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Tom Stuart",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "25 yo  \t\t Depression \t\t  Takes meds ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black26),
                ),
                SizedBox(height: 10),
                Text(
                  "11 Feb 2023 16:00 - 17:00",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xFF73AC95)),
                )
              ])
            ]),
            SizedBox(height: 20),
            Text("Complaints", style: tStyle),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Flex(
                verticalDirection: VerticalDirection.down,
                direction: Axis.horizontal,
                children: [
                  for (var i = 0; i < tList.length; i++)
                    Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color(0xFF469072),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          tList[i],
                          style: TextStyle(
                              color: Color(0xE3FFFFFF),
                              fontWeight: FontWeight.bold),
                        )),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Information",
                  style: TextStyle(
                      color: Color(0xFF469072), fontWeight: FontWeight.bold),
                ),
                Text("Medicine"),
                Text("Diagnoses"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
