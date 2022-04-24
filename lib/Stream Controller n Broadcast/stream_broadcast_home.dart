import 'dart:async';

import 'package:flutter/material.dart';

class StreamBroadcastHome extends StatefulWidget {
  StreamBroadcastHome({Key? key}) : super(key: key);

  @override
  State<StreamBroadcastHome> createState() => _StreamBroadcastHomeState();
}

class _StreamBroadcastHomeState extends State<StreamBroadcastHome> {
  int counter = 0;
  StreamController<int> singleStream = StreamController<int>();
  late Stream MultipleStream;

  int counterOne = 0;
  StreamController<int> StreamOne = StreamController<int>();
  late Stream MultipleStreamOne;

  @override
  void initState() {
    super.initState();
    MultipleStream = singleStream.stream.asBroadcastStream();
    MultipleStreamOne = StreamOne.stream.asBroadcastStream();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        
          children: [
            StreamBuilder(
                stream: MultipleStream,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(
                      snapshot.data.toString(),
                      style: TextStyle(
                          fontSize: 100,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    );
                  } else {
                    return Text(
                      "Snapshot has no data!",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    );
                  }
                }),
            StreamBuilder(
                stream: MultipleStreamOne,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(
                      snapshot.data.toString(),
                      style: TextStyle(
                          fontSize: 100,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    );
                  } else {
                    return Text(
                      "Snapshot has no data!",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.orange.shade900,
                          fontWeight: FontWeight.bold),
                    );
                  }
                }),
            ElevatedButton(
                onPressed: () {
                  counter--;
                  StreamOne.sink.add(counter);
                },style: ElevatedButton.styleFrom(primary: Colors.red),
                child: const Icon(Icons.drag_handle))
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.green,
        onPressed: () {
          counter++;

          singleStream.sink.add(counter);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
