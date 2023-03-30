// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../Cons/themes.dart';

class LeftWidget extends StatefulWidget {
  const LeftWidget({super.key});

  @override
  State<LeftWidget> createState() => _LeftWidgetState();
}

class _LeftWidgetState extends State<LeftWidget> {
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
            children: [
              Text("Welcome, Back!", textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 1.5, wordSpacing: 1.5,)),
              const SizedBox(height: 20.0),
              Text("To access your profile,\nenter your existing details!", textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.white, letterSpacing: 1.5, wordSpacing: 1.5,height: 2)),
              const SizedBox(height: 30.0),
              Container(
                       margin: const EdgeInsets.only(left:150.0, right: 150.0),
                       child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                         child: Material(
                          child: InkWell(
                            splashColor: theme().primaryColorDark.withOpacity(0.5),
                            highlightColor: theme().primaryColorDark.withOpacity(0.5),
                            onTap: (){
                              Navigator.pushNamed(context, '/login');
                            },
                          
                            child: Container(
                              padding: const EdgeInsets.only(left: 50, right: 50, top: 30, bottom: 30),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.black, border: Border.all(color: Colors.black)),
                              child: Text("Login", textAlign: TextAlign.center, style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
                            ),
                          )
                           
                         ),
              ),
          )],
          ),
          
          ),
      ),
    );
  }
}