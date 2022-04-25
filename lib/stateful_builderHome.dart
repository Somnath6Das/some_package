import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatefulBuilderHome extends StatefulWidget {
  StatefulBuilderHome({Key? key}) : super(key: key);

  @override
  State<StatefulBuilderHome> createState() => _StatefulBuilderHomeState();
}

class _StatefulBuilderHomeState extends State<StatefulBuilderHome> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    print("The whole page is built.");
    return Scaffold(body: SafeArea(child: Center(
      child: StatefulBuilder(
        builder: (BuildContext context, internalState) {
          print("Stateful Builder is build.");
          return CupertinoButton(
              child: Text(
                counter.toString(),
                style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                internalState(() {
                  counter++;
                });
              });
        },
      ),
    )));
  }
}
