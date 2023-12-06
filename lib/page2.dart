import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page1State();
}

class _Page1State extends State<Page2> {
  List _items = [];
// Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('json_file/icon.json');
    final data = await json.decode(response);
    // print(data);
    setState(() {
      _items = data["items2"];
    });
    //  prinmt(_items[0]);
  }
  @override
  void initState() {
    super.initState();
    // Call the readJson method when the app starts
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("กิน",
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

          children: List.generate(_items.length, (index) {
            return OutlinedButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                  Image.asset("images/"+_items[index]["IMG"], width: 200, height: 150),
                  Text(
                    _items[index]["TH"],
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
                    )
                  );
          }),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}