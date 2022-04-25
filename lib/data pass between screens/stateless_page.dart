import 'package:flutter/material.dart';

class StatelassPage extends StatelessWidget {
  String value;
  StatelassPage({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Screen One")),
      body: Center(
          child: Text(
        "Stateless Page\n ${value}",
        style: TextStyle(fontSize: 25),
      )),
    );
  }
}
