import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'firstpage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) => runApp(CaseApp()));
  runApp(CaseApp());
  final prefs = await SharedPreferences.getInstance();
}

class CaseApp extends StatelessWidget {
  const CaseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("One Less Nuclear Power Plant"),
          backgroundColor: Colors.green,
        ),
        body: FirstPage(),
      ),
    );
  }
}
