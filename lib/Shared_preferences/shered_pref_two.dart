import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:some_packages/json%20serial-deserial/app_state.dart';

class SheredPrefTwo extends StatefulWidget {
  SheredPrefTwo({Key? key}) : super(key: key);

  @override
  State<SheredPrefTwo> createState() => _SheredPrefTwoState();
}

class _SheredPrefTwoState extends State<SheredPrefTwo> {
  //intances


  SharedPrefrencesHelper _prefrencesHelper = SharedPrefrencesHelper();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _prefrencesHelper.setStringInPrefrences();
                    },
                    child: const Text("Set String"),
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        _prefrencesHelper.setIntInPrefrefrences();
                      },
                      child: const Text("Set int"),
                      style: ElevatedButton.styleFrom(primary: Colors.blue)),
                  ElevatedButton(
                      onPressed: () {
                        _prefrencesHelper.setDoubleInPrefrences();
                      },
                      child: const Text("Set double"),
                      style: ElevatedButton.styleFrom(primary: Colors.green)),
                  ElevatedButton(
                      onPressed: () {
                        _prefrencesHelper.setBoolInPrefrences();
                      },
                      child: const Text("Set bool"),
                      style: ElevatedButton.styleFrom(primary: Colors.amber)),
                  ElevatedButton(
                      onPressed: () {
                        _prefrencesHelper.setListInPrefrences();
                      },
                      child: const Text("Set List"),
                      style: ElevatedButton.styleFrom(primary: Colors.pink)),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      
                          _prefrencesHelper.getStringFromPrefrences();
                     
                    },
                    child: const Text(
                      "Get String",
                    ),
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        _prefrencesHelper.getIntFromPrefrences();
                      },
                      child: const Text("Get int"),
                      style: ElevatedButton.styleFrom(primary: Colors.blue)),
                  ElevatedButton(
                      onPressed: () {
                        _prefrencesHelper.getDoubleFromPrefrences();
                      },
                      child: const Text("Get dauble"),
                      style: ElevatedButton.styleFrom(primary: Colors.green)),
                  ElevatedButton(
                      onPressed: () {
                        _prefrencesHelper.getBoolFromPrefrences();
                      },
                      child: const Text("Get bool"),
                      style: ElevatedButton.styleFrom(primary: Colors.amber)),
                  ElevatedButton(
                      onPressed: () {
                        _prefrencesHelper.getListFromPrefrences();
                      },
                      child: const Text("Get List"),
                      style: ElevatedButton.styleFrom(primary: Colors.pink)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 50),
          ElevatedButton(
              onPressed: () {
                _prefrencesHelper.removeData("string");
                _prefrencesHelper.removeData("int");
                _prefrencesHelper.removeData("double");
                _prefrencesHelper.removeData("bool");
                _prefrencesHelper.removeData("list");
              },
              child: const Text("Remove All Prefrences Data"),
              style: ElevatedButton.styleFrom(primary: Colors.black)),
        ],
      )),
    );
  }
}

class SharedPrefrencesHelper {
  //Shared Preferance set method.
  void setStringInPrefrences() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs
        .setString("string", "This is String")
        .then((value) => print(value));
  }

  void setIntInPrefrefrences() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setInt("int", 1).then((value) => print(value));
  }

  void setDoubleInPrefrences() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setDouble("double", 2.5).then((value) => print(value));
  }

  void setBoolInPrefrences() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setBool("bool", true).then((value) => print(value));
  }

  void setListInPrefrences() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setStringList(
        "list", <String>["StringList1", "StringList2", "StringList3"]);
  }

  //Shared Preferance get method.
  void getStringFromPrefrences() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? value = _prefs.getString("string");
    print(value);
  }

  void getIntFromPrefrences() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    int? intvalue = _prefs.getInt("int");
    print(intvalue);
  }

  void getDoubleFromPrefrences() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    double? doublevalue = _prefs.getDouble("double");
    print(doublevalue);
  }

  void getBoolFromPrefrences() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    bool? boolvalue = _prefs.getBool("bool");
    print(boolvalue);
  }

  void getListFromPrefrences() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    List<String>? listvalue = _prefs.getStringList("list");
    print(listvalue);
  }

  //Shared Preferance remove method.
  void removeData(String key) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.remove(key).then((value) => print("Data Removed"));
  }
}
