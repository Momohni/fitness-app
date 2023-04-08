import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  String result = '';
  TextEditingController txtHeight = TextEditingController();
  TextEditingController txtWeight = TextEditingController();
  double? height;
  double? weight;

  @override
  void initState() {
    // height.text = 'height';
    super.initState();
  }

  @override
  void dispose() {
    // height.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(color: Colors.black,),
          Container(
            // color: Colors.black,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      controller: txtHeight,
                      // obscureText: true,
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 3,
                            color: Colors.white),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        labelText: 'Please input your height in meters',
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      controller: txtWeight,
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 3,
                            color: Colors.white),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        labelText: 'Please input your weight in kilos',
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      double bmi = 0;
                      double height = double.tryParse(txtHeight.text) ?? 0;
                      double weight = double.tryParse(txtWeight.text) ?? 0;
                      bmi = weight / (height * height);
                      setState(() {
                        result = 'Your BMI is ' + bmi.toStringAsFixed(2);
                      });
                    },
                    child: Text('Calculate BMI',style: TextStyle(color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.white),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    '$result',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ],
      );
  }
}
