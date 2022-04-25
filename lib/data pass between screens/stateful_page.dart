import 'package:flutter/material.dart';

class StatefulPage extends StatefulWidget {
  String value;
  StatefulPage({Key? key, required this.value}) : super(key: key);

  @override
  State<StatefulPage> createState() => _StatefulPageState(value);
}

class _StatefulPageState extends State<StatefulPage> {
  late String value;
  _StatefulPageState(this.value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Screen Two")),
      body: Center(
          child: Text(
        "Stateful Page\n ${value}",
        style: TextStyle(fontSize: 25),
      )),
    );
  }
}
