import 'package:flutter/material.dart';
import 'package:kin/Screens/home.dart';
import 'package:kin/constant.dart';

import 'Screens/SetupScreen.dart';
import 'Screens/setup_circle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green
        ),
        useMaterial3: true,
      ),
      home:  const SetupCircle(),
    );
  }
}

class DividerContainer extends StatelessWidget {
  final bool active;
  const DividerContainer({Key? key, required this.active}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.41,
      height: 5,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: active ? color : Colors.grey,
      ),
    );
  }
}


