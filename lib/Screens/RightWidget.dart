// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../Cons/themes.dart';

class RightWidget extends StatefulWidget {
  const RightWidget({super.key});

  @override
  State<RightWidget> createState() => _RightWidgetState();
}

class _RightWidgetState extends State<RightWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: theme().primaryColorDark,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Hello, User!", textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 1.5, wordSpacing: 1.5)),
              const SizedBox(height: 20.0),
              Text("Enter your personal details\nand begin your journey with us!", textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.white, letterSpacing: 1.5, wordSpacing: 1.5, height: 2)),
              const SizedBox(height: 30.0),
            ]
      ),
    )));
  }
}