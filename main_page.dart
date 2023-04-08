import 'package:flutter/material.dart';
import 'package:snackbar_dailogs_bottom_sheets/bmi_screen.dart';
import 'package:snackbar_dailogs_bottom_sheets/home_page.dart';
import 'package:snackbar_dailogs_bottom_sheets/news_screen.dart';
import 'package:snackbar_dailogs_bottom_sheets/weather_screen.dart';

var indexClicked = 0;

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pages = [HomePage(), BmiScreen(), NewsScreen(), WeatherScreen()];
  final pageName = [
    Text('Globo Fitness'),
    Text('BMI Calculator'),
    Text('Breaking News'),
    Text('Weather')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: pageName[indexClicked],
      ),
      body: pages[indexClicked],
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/drawerimage.jpg'))),
                child: Text(
                  'Globo Fitness',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    selected: indexClicked == 0,
                    // selectedTileColor: Colors.red,
                    onTap: () {
                      setState(() {
                        indexClicked = 0;
                      });
                      Navigator.of(context).pop();
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) => pages[indexClicked]));
                    },
                    title: Text(
                      'Home',
                      style: TextStyle(
                          color: indexClicked == 0 ? Colors.red : Colors.white,
                          fontSize: 18),
                    ),
                  ),
                  ListTile(
                    selected: indexClicked == 0,
                    // selectedTileColor: Colors.red,
                    onTap: () {
                      setState(() {
                        indexClicked = 1;
                      });
                      Navigator.of(context).pop();
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) => pages[indexClicked]));
                    },
                    title: Text(
                      'BMI Calculator',
                      style: TextStyle(
                          color: indexClicked == 1 ? Colors.red : Colors.white,
                          fontSize: 18),
                    ),
                  ),
                  ListTile(
                    selected: indexClicked == 0,
                    // selectedTileColor: Colors.red,
                    onTap: () {
                      setState(() {
                        indexClicked = 2;
                      });
                      Navigator.of(context).pop();
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) => pages[indexClicked]));
                    },
                    title: Text(
                      'Breaking News',
                      style: TextStyle(
                          color: indexClicked == 2 ? Colors.red : Colors.white,
                          fontSize: 18),
                    ),
                  ),
                  ListTile(
                    selected: indexClicked == 0,
                    onTap: () {
                      setState(() {
                        indexClicked = 3;
                      });
                      Navigator.of(context).pop();
                    },
                    title: Text(
                      'Weather',
                      style: TextStyle(
                          color: indexClicked == 3 ? Colors.red : Colors.white,
                          fontSize: 18),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text(
                      'Training',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(color: Colors.red),
        unselectedLabelStyle: TextStyle(color: Colors.white),
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        elevation: 60,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(color: Colors.red),
        unselectedIconTheme: IconThemeData(color: Colors.white),
        currentIndex: indexClicked,
        onTap: (value) {
          setState(() {
            indexClicked = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              label: 'Home',
              icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'BMI', icon: Icon(Icons.monitor_weight)),
          BottomNavigationBarItem(
              label: 'News', icon: Icon(Icons.newspaper_outlined)),
              BottomNavigationBarItem(
              label: 'Weather', icon: Icon(Icons.cloud))
        ],
      ),
    );
  }
}
