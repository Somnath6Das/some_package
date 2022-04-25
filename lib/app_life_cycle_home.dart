import 'package:flutter/material.dart';

class AppLifeCycleHome extends StatefulWidget {
  AppLifeCycleHome({Key? key}) : super(key: key);

  @override
  State<AppLifeCycleHome> createState() => _AppLifeCycleHomeState();
}

class _AppLifeCycleHomeState extends State<AppLifeCycleHome>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    print("Application is Starting");
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.inactive) {
      print("App runs in Background");
    } else if (state == AppLifecycleState.resumed) {
      print("App is on Screen");
    } else if (state == AppLifecycleState.detached) {
      print("App is colsed by user");
    }

    print("App Life cycle State : ${state}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => AnotherPage()));
              },
              child: Text("Route")),
          Text(
            "See in console \n to understand app life cycle",
            style: TextStyle(fontSize: 30),
          ),
        ],
      )),
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
    print("Screen one is desposed");
  }
}

class AnotherPage extends StatelessWidget {
  const AnotherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
