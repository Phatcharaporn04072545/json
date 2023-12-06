import 'package:flutter/material.dart';
import 'package:project1/page1.dart';
import 'package:project1/page2.dart';
import 'package:project1/page3.dart';
import 'package:project1/page4.dart';
import 'package:project1/page5.dart';
import 'package:project1/page6.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APHASIA HELP CARE",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: GridView.count(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: 0.9,
          shrinkWrap: true,
          children: [
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Page1(title:"items_talk")),
                );
              },
              child: Column(
                children: [
                  Image.asset("images/01.png", width: 200, height: 150),
                  Text(
                    "คำพูด",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Page1(title:"items_eat")),
                );
              },
              child: Column(
                children: [
                  Image.asset("images/02.png", width: 200, height: 150),
                  Text(
                    "กิน",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Page3()),
                );
              },
              child: Column(
                children: [
                  Image.asset("images/03.png", width: 200, height: 150),
                  Text(
                    "ความรู้สึก",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
              
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Page4()),
                );
              },
              child: Column(
                children: [
                  Image.asset("images/04.jpg", width: 200, height: 150),
                  Text(
                    "ของใช้",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
              
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Page5()),
                );
              },
              child: Column(
                children: [
                  Image.asset("images/05.png", width: 200, height: 150),
                  Text(
                    "งานอดิเรก",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
              
            ),
            // OutlinedButton(
            //   onPressed: () {
            //     Navigator.of(context).push(
            //       MaterialPageRoute(builder: (context) => Page6()),
            //     );
            //   },
            //   child: Column(
            //     children: [
            //       Image.asset("images/06.png", width: 200, height: 150),
            //       Text(
            //         "บุคคล",
            //         style: TextStyle(fontSize: 30, color: Colors.black),
            //       ),
            //     ],
            //   ),
              
            // ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}