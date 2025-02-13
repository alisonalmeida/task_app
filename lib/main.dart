import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Color.fromRGBO(233, 230, 248, 1),
                child: Icon(Icons.person),
              ),
            ),
            actions: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    iconSize: 18,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(28, 28, 28, 1),
                        iconColor: Colors.white),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  iconSize: 18,
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(233, 230, 248, 1),
                    iconColor: Color.fromRGBO(28, 28, 28, 1),
                  ),
                ),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  "Manage Your Task",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [],
                )
              ],
            ),
          )),
    );
  }
}
