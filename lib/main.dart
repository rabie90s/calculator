import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rabie90s Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final darkBg = const Color(0xff735d78);
  final lightBg = const Color(0xfff7d1cd);
  final lightFontColor = const Color(0xffe8c2ca);
  final mediumFontColor = const Color(0xfff7d1cd);
  final darkFontColor = const Color(0xff001233);
  bool darkTheme = true;

  final buttonsPad = [
    'C',
    '%',
    '/',
    '*',
    '7',
    '8',
    '9',
    '-',
    '4',
    '5',
    '6',
    '+',
    '1',
    '2',
    '3',
    '='
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkTheme ? darkBg : lightBg,
      body: SafeArea(
        child: Column(
          children: [
            // Result Box:
            Container(
              height: MediaQuery.of(context).size.height * 0.30,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade600,
                    offset: Offset.zero,
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                    blurStyle: BlurStyle.normal,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // First Row of the result box with tiny font which contains the op1, op2, and operator
                  Text(
                    '3+5',
                    style: TextStyle(
                      color: lightFontColor,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Second Row of the result box contains the result and las pressed number
                  Text(
                    '8',
                    style: TextStyle(
                      color: mediumFontColor,
                      fontSize: 60,
                    ),
                  ),
                ],
              ),
            ),

            // Buttons Pad:
            GridView.builder(
                itemCount: buttonsPad.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 16),
                itemBuilder: (context, index) {
                  return new Text('OK');
                }),
          ],
        ),
      ),
    );
  }
}

// First thing to do tomorrow to search how GridView Builder work???????????