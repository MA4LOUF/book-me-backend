import 'package:flutter/material.dart';
import '../Cons/themes.dart';
import '../Cons/names.dart';

Widget profileView (BuildContext context) => Container(
  decoration:  BoxDecoration(
    color: theme().primaryColorDark, 
  ),
  child:Container(
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).padding.top,
      bottom: 20,
    ) ,
    child: Column(
      children: [
        CircleAvatar(
          radius: 45, 
          backgroundColor: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.person, color: Colors.black,size: 50,)
            ],
          ),
        ),
        const SizedBox(height: 15),

        TextButton(
          onPressed: (){
            Navigator.pushNamed(context,'/profile');
          },
          child: SizedBox(
            child: Text(
              registeredUsername,
              style: TextStyle(color: Colors.white, fontSize: 20)
            ),
          ),
        )
      ],
    ),
  ),
);