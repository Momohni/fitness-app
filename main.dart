import 'package:flutter/material.dart';
import 'package:snackbar_dailogs_bottom_sheets/bmi_screen.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {
      //   '/':(context)=> HomePage(),
      //   '/bmi':(context)=> BmiScreen(),},
      //   initialRoute: '/',
      home: HomePage(),
      title: 'Fitness App',
      debugShowCheckedModeBanner: false,
      // darkTheme: ThemeData(
      //   primarySwatch: Colors.red
      // ),
    );
  }
}