import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:some_packages/Stream%20Controller%20n%20Broadcast/stream_broadcast_home.dart';
import 'package:some_packages/http.dart';
import 'package:some_packages/json%20serial-deserial/app_state.dart';
import 'package:some_packages/json%20serial-deserial/home_json.dart';
import 'package:some_packages/shared_preferences.dart';
import 'package:some_packages/Stream%20Controller%20n%20Broadcast/stream_contro_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: SharedPrefsHome(),
        //  home:HttpHome()
       // home: HomeJson(),
        //home: StreamControHome(),
        home: StreamBroadcastHome(),
      ),
    );
  }
}
