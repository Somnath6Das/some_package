import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:some_packages/json%20serial-deserial/app_state.dart';
import 'package:some_packages/json%20serial-deserial/model.dart';

class HomeJson extends StatefulWidget {
  const HomeJson({Key? key}) : super(key: key);

  @override
  State<HomeJson> createState() => _HomeJsonState();
}

class _HomeJsonState extends State<HomeJson> {
  UserModel userObject =
      UserModel(id: "0001", name: "Somnath", email: "helloworldon9@gmail.com");

  String userJson =
      '{"id": "0001","name":"Somnath", "email": "helloworldon9@gmail.com"}';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
          Center(child: Consumer<AppState>(builder: (context, provider, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  provider.temp,
                  style: const TextStyle(fontSize: 25),
                )),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      //Serialization
                      //user model to map.
                      Map<String, dynamic> userMap = userObject.toMap();
                      //Map to json encode.
                      var json = jsonEncode(userMap);

                      provider.updateTemp("Object to Json\n" + json.toString());
                    },
                    child: const Text("Serialize",
                        style: TextStyle(fontSize: 20))),
                ElevatedButton(
                    onPressed: () {
                      //Deserialization
                      //json decode
                      var decode = jsonDecode(userJson);
                      //decode to map
                      Map<String, dynamic> userMap = decode;
                      //map to usermodel.
                      UserModel newUser = UserModel.fromMap(userMap);
                      provider.updateTemp("Json to Object.\n" +
                          newUser.name.toString() +
                          "\n" +
                          newUser.id.toString() +
                          "\n" +
                          newUser.email.toString());
                    },
                    child: const Text("Deserialize",
                        style: TextStyle(fontSize: 20)))
              ],
            ),
          ],
        );
      }))),
    );
  }
}
