
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'utils/constants.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();

  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ORIXON ENTERPRISES",
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    routes: {
        "/login":(context) => LoginPage(),
        "/home" :(context) => HomePage()
    },
    )
  );
}