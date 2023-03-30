// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import '../Cons/themes.dart';
import '../Cons/names.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       extendBodyBehindAppBar: true,
       backgroundColor: theme().primaryColorDark,
       body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              decoration:  BoxDecoration(
                color: theme().primaryColorDark, 
                
              ),
              child: Column(
                children: [
                  const SizedBox(height: 30,),
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
              
        ])
      
          
        )
        ),
        Expanded(
          flex: 2,
          child:  Container(
                  width: double.infinity,
                  height: double.infinity, 
                  padding: const EdgeInsets.only(left: 2, right: 2, top: 9, bottom: 9),
                  decoration: const BoxDecoration(
                  color: Colors.white, 
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50), )
                  
                ),),
          ),
        ]
        )
        );
        
      
  }
}
