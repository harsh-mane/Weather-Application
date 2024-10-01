import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String username = ''; // Initialize the username variable

  Future<void> getData() async { // Return type should be Future<void>
    await Future.delayed(Duration(seconds: 2), () {
      setState(() { // Use setState to update the username
        username = "XYZ";
      });
    });
  }

  void showData() {
    print("$username");
  }

  int counter = 1;

  @override
  void initState() {
    super.initState();
    print("this is init state");
    getData(); // Call getData in initState
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Activity"),
        ),
        body: Column(
          children: [
            FloatingActionButton(
                onPressed: () => setState(() {
                      counter += 1;
                    })),
            Text("$counter"),
            Text("$username"), // Display the username
          ],
        ));
  }

  @override
  void dispose() {
    super.dispose();
    print("Widget Destroyed");
  }
}