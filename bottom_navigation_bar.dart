import 'package:flutter/material.dart';
import 'package:snackbar_dailogs_bottom_sheets/bmi_screen.dart';
import 'package:snackbar_dailogs_bottom_sheets/home_page.dart';

class BottomDrawer extends StatefulWidget {
  const BottomDrawer({super.key});

  @override
  State<BottomDrawer> createState() => _BottomDrawerState();
}

class _BottomDrawerState extends State<BottomDrawer> {
  final pages = [
    HomePage(),
    BmiScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedLabelStyle: TextStyle(color: Colors.white),
      unselectedLabelStyle: TextStyle(color:Colors.white),
      backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      elevation: 60,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(color: Colors.white),
      unselectedIconTheme: IconThemeData(color: Colors.white),
      currentIndex: 0,
      onTap: (value) {
        setState(() {
          pages[value];
        });
        Navigator.of(context).pop();
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => pages[value]));
        // switch (index) {
        //   case 0:
        //     Navigator.pushNamed(context, '/');
        //     break;
        //   case 1:
        //     Navigator.pushNamed(context, '/bmi');
        //     break;
        // }
      },
      items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.black,
          label: 'Home', icon: Icon(
          color: Colors.white,
          Icons.home)),
        BottomNavigationBarItem(label: 'BMI', icon: Icon(Icons.monitor_weight))
      ],
    );
  }
}
