import 'package:flutter/material.dart';
import 'package:sweet_nav_bar/sweet_nav_bar.dart';

// ignore: must_be_immutable
class Shedule extends StatelessWidget {
  Shedule({super.key});
  List<String> week = ["Mon", "Tsd", "Wed", "Thu", "Fri", "Sat", "Sun"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 40),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image(
                      fit: BoxFit.fill,
                      height: 50,
                      width: 50,
                      image: AssetImage("assets/profile.jpeg")),
                ),
                Text("< 11 Feb 2021 >"),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 40,
                    width: 40,
                    child: Center(child: Icon(Icons.arrow_back_ios_new))),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "Good Morning Dr.Kim",
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            SizedBox(height: 10),
            Text(
              "You have 5 sessions today",
              style:
                  TextStyle(color: Colors.black54, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var i = 1; i < 16; i++)
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: Colors.black12.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 50,
                        width: 50,
                        child: Center(
                            child: Text(
                          "$i",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                              fontSize: 20),
                        ))),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var i = 0; i < week.length; i++)
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 50,
                        width: 50,
                        child: Center(
                            child: Text(
                          week[i],
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black45,
                              fontSize: 20),
                        ))),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Upcoming Sessions",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black87),
            ),
            SizedBox(height: 20),
            sessions(
              name: "Sarah Miller",
              date: "11 Feb 2021 09:30",
              details: "20 yo . Depression . Takes Meds",
            ),
            sessions(
              name: "Jill Robbins",
              date: "11 Feb 2021 09:30",
              details: "20 yo . Depression . Takes Meds",
            ),
            sessions(
              name: "Sarah Miller",
              date: "11 Feb 2021 09:30",
              details: "20 yo . Depression . Takes Meds",
            ),
          ]),
        ),
      ),
      bottomNavigationBar: SweetNavBar(
        currentIndex: 0,
        items: [
          SweetNavBarItem(
              isGradiant: false,
              sweetIcon: Icon(Icons.home),
              sweetLabel: 'Home',
              sweetBackground: Color(0xFF469072)),
          SweetNavBarItem(
              sweetIcon: const Icon(Icons.message), sweetLabel: 'Massage'),
          SweetNavBarItem(
              sweetIcon: const Icon(Icons.calendar_month_outlined),
              sweetLabel: 'Shedule'),
          SweetNavBarItem(
              sweetIcon: const Icon(Icons.person_2_outlined),
              sweetLabel: 'Profile'),
        ],
      ),
    );
  }
}

class sessions extends StatelessWidget {
  const sessions({
    super.key,
    required this.name,
    required this.details,
    required this.date,
  });
  final String name, details, date;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Color(0xFFF8F8F8), borderRadius: BorderRadius.circular(10)),
      width: MediaQuery.of(context).size.width,
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image(
                  fit: BoxFit.fill,
                  height: 50,
                  width: 50,
                  image: AssetImage("assets/profile.jpeg")),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                name,
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              Text(
                details,
                style: TextStyle(
                    color: Colors.black45, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 30),
              Text(
                date,
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.w500),
              )
            ]),
            Checkbox(
              activeColor: Colors.teal,
              value: true,
              onChanged: (value) {
                value = false;
              },
            )
          ]),
    );
  }
}
