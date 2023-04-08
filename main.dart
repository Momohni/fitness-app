import 'package:flutter/material.dart';
// import 'package:snackbar_dailogs_bottom_sheets/bmi_screen.dart';
import 'package:snackbar_dailogs_bottom_sheets/news_data.dart';
import 'main_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create:(context) => NewsData(),)
  ],
  child: MyApp(),
  ),
  );
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
      home: MainPage(),
      title: 'Fitness App',
      debugShowCheckedModeBanner: false,
      // darkTheme: ThemeData(
      //   primarySwatch: Colors.red
      // ),
    );
  }
}