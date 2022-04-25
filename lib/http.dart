import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpHome extends StatefulWidget {
  const HttpHome({Key? key}) : super(key: key);

  @override
  State<HttpHome> createState() => _HttpHomeState();
}

//get request
class _HttpHomeState extends State<HttpHome> {
  Future<void> getRequest() async {
    var url = Uri.parse("http://reqres.in/api/users");

    var responses = await http.get(url);
    print(responses.body.toString());
  }

//post request
  void postRequest() async {
    var url = Uri.parse("https://reqres.in/api/login");
    var data = {"email": "eve.holt@reqres.in", "password": "cityslicka"};
    var responses = await http.post(url, body: data);
    print(responses.body.toString());
  }

  @override
  void initState() {
    super.initState();
    // getRequest();
    postRequest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container()),
    );
  }
}
