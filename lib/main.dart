import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:some_packages/app_life_cycle_home.dart';
import 'package:some_packages/data%20pass%20between%20screens/pass_data_home.dart';
import 'package:some_packages/json serial-deserial/app_state.dart';
import 'package:some_packages/stateful_builderHome.dart';
import 'Stream Controller n Broadcast/stream_broadcast_home.dart';

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
        //home: StreamBroadcastHome(),
        // home: StreamBroadcastHome(),
        //home: StatefulBuilderHome(),
        //home: AppLifeCycleHome(),
        home: PassDataHome(),
      ),
    );
  }
}
