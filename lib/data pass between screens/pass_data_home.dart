import 'package:flutter/material.dart';

import 'stateful_page.dart';
import 'stateless_page.dart';

class PassDataHome extends StatefulWidget {
  PassDataHome({Key? key}) : super(key: key);

  @override
  State<PassDataHome> createState() => _PassDataHomeState();
}

class _PassDataHomeState extends State<PassDataHome> {
  late String value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => StatelassPage(value : value)));
                },
                child: const Text(
                  "Navigate to Stateless class Page",
                  style: TextStyle(fontSize: 20),
                )),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: TextField(
                autofocus: false,
                keyboardType: TextInputType.name,style: const TextStyle(fontSize: 25),
                onChanged: (text) {
                  value = text;
                },
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => StatefulPage(value: value,)));
                },
                child: const Text(
                  "Navigete  to Stateful  class Page",
                  style: TextStyle(fontSize: 20),
                )),
          ],
        ),
      )),
    );
  }
}
