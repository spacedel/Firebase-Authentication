// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitledapp/main_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(36.0),
            child: Image.asset(
              'assets/image/cameraIcon.png',
              width: 72.0,
              height: 72.0,
              fit: BoxFit.fill,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 3),
          child: Text("Super Splash Screen Demo",
              style: TextStyle(color: Colors.black54, fontSize: 24)),
        ),
      ],
    );
    return titleSection;
  }
}
