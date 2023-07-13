import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF36715A),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image(
                fit: BoxFit.fill,
                height: 250,
                width: MediaQuery.of(context).size.width,
                image: AssetImage("assets/logo.png")),
            Center(
                child: Text(
              "Therapy & Care",
              style: TextStyle(
                  color: Color(0xFFF6FAF8),
                  fontSize: 35,
                  fontWeight: FontWeight.w700),
            )),
            SizedBox(height: 10),
            Text(
              "We Help professional therapists \nand Patients find each other",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xC9FFFFFF),
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xC9FFFFFF),
              ),
              height: 60,
              width: 200,
              child: Center(child: Text("Get started")),
            ),
            Image(
                fit: BoxFit.fill,
                height: 250,
                width: MediaQuery.of(context).size.width,
                image: AssetImage("assets/design.png"))
          ],
        ),
      ),
    );
  }
}
