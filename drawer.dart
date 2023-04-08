// import 'package:flutter/material.dart';
// import 'package:snackbar_dailogs_bottom_sheets/home_page.dart';
// import 'package:snackbar_dailogs_bottom_sheets/bmi_screen.dart';

// class MenuDrawer extends StatefulWidget {
//   const MenuDrawer({super.key});

//   @override
//   State<MenuDrawer> createState() => _MenuDrawerState();
// }

// class _MenuDrawerState extends State<MenuDrawer> {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       backgroundColor: Colors.black,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           DrawerHeader(
//               decoration: BoxDecoration(
//                   image: DecorationImage(
//                       fit: BoxFit.fill,
//                       image: AssetImage('assets/drawerimage.jpg'))),
//               child: Text(
//                 'Globo Fitness',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 27,
//                   fontWeight: FontWeight.bold,
//                 ),
//               )),
//           Expanded(
//             child: ListView(
//               padding: EdgeInsets.zero,
//               children: [
//                 ListTile(
//                   onTap: () {
//                     setState(() {
//                       HomePage();
//                     });
//                     Navigator.of(context).pop();
//                     Navigator.of(context)
//                         .push(MaterialPageRoute(builder: (context) => HomePage()));
//                   },
//                   title: Text('Home',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18
//                   ),),
//                 ),
//                 ListTile(
//                   onTap: () {
//                     setState(() {
//                       BmiScreen();
//                     });
//                     Navigator.of(context).pop();
//                     Navigator.of(context)
//                         .push(MaterialPageRoute(builder: (context) => BmiScreen()));
//                   },
//                   title: Text('BMI Calculator',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18
//                   ),),
//                 ),
//                 ListTile(
//                   onTap: () {},
//                   title: Text('Weather',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18
//                   ),),
//                 ),
//                 ListTile(
//                   onTap: () {},
//                   title: Text('Training',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18
//                   ),),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
