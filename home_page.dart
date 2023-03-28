import 'package:flutter/material.dart';
import 'package:snackbar_dailogs_bottom_sheets/shared/drawer.dart';
import 'package:snackbar_dailogs_bottom_sheets/shared/bottom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      bottomNavigationBar: BottomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Globo Fitness'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/fitnessmale.jpg'),
          ),
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(12.0),
            ),
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Commit to be fit,\nDare to be great with Globo Fitness',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
                  textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}