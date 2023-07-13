import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Screen1 extends StatelessWidget {
  Screen1({super.key});
  final tStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
  final peragraphfontstyle = TextStyle(
      color: Colors.black54, fontWeight: FontWeight.bold, letterSpacing: 0.2);
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
                borderRadius: BorderRadius.circular(40),
                child: Image(
                    fit: BoxFit.fill,
                    height: 80,
                    image: AssetImage("assets/images.jpeg")),
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
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(10)),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("General", style: tStyle),
                  SizedBox(height: 20),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("First name", style: peragraphfontstyle),
                        Text(
                          "Tom",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ]),
                  Divider(),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("last name", style: peragraphfontstyle),
                        Text(
                          "Stuart",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ]),
                  Divider(),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Date of Birth", style: peragraphfontstyle),
                        Text(
                          "07 June 1995",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ]),
                  Divider(),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Gender", style: peragraphfontstyle),
                        Text(
                          "Male",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ]),
                  Divider(),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(10)),
              width: MediaQuery.of(context).size.width,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Additional", style: tStyle),
                    SizedBox(height: 10),
                    Text("Therapist Notes:", style: peragraphfontstyle),
                    SizedBox(height: 10),
                    Text(
                      "Tom showed all nine symtoms of major depression for at least two weeks: depressed mood, weight loss, insomnia, restlessness, loss of engery, extreme guilt, all other symptoms of major depression for at least two weeks",
                      style: peragraphfontstyle,
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
