import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';



class SharedPrefsHome extends StatefulWidget {
  @override
  State<SharedPrefsHome> createState() => _SharedPrefsHomeState();
}

class _SharedPrefsHomeState extends State<SharedPrefsHome> {
  TextEditingController _controller = TextEditingController();

  void saveText(String text) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("Text", text);
  }

  void readText() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? savedValue = prefs.getString("text");

    //if the savedValue is not equals to null then save the value into the controller
    if (savedValue != null) {
      _controller.text = savedValue;
    }
  }


  //when the the app build the data will be read.
  @override
  void initState() {
    super.initState();
    readText();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
          controller: _controller,
          onChanged: (value) {
              saveText(value);
          },
        ),
            )),
      )),
    );
  }
}
