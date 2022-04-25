import 'dart:async';

import 'package:flutter/material.dart';

class StreamControHome extends StatefulWidget {
  const StreamControHome({Key? key}) : super(key: key);

  @override
  State<StreamControHome> createState() => _StreamControHomeState();
}

class _StreamControHomeState extends State<StreamControHome> {
  int counter = 0;
  StreamController<int> counterController = StreamController<int>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: StreamBuilder(
            stream: counterController.stream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(
                  snapshot.data.toString(),
                  style: TextStyle(
                      fontSize: 100,
                      color: Colors.green.shade900,
                      fontWeight: FontWeight.bold),
                );
              } else {
                return Text(
                  "Snapshot has no data!",
                  style: TextStyle(
                      fontSize: 100,
                      color: Colors.orange.shade900,
                      fontWeight: FontWeight.bold),
                );
              }
            }),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          counterController.sink.add(counter);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
