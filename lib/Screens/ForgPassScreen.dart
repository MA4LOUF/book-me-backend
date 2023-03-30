// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../Cons/names.dart';
import '../Cons/themes.dart';

class ForgPassScreen extends StatefulWidget {
  const ForgPassScreen({super.key});

  @override
  State<ForgPassScreen> createState() => _ForgPassScreenState();
}

class _ForgPassScreenState extends State<ForgPassScreen> {
  bool _isChecked = false;
  bool _isVisibile = true;

  @override
  Widget build(BuildContext Context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 0, 0, 0),
       body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 250), 
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Recover", style: Theme.of(context).textTheme.headline1?.copyWith(color: theme().primaryColorDark)),
                const SizedBox(height: 5,),
                Text("Account", style: Theme.of(context).textTheme.headline1?.copyWith(color: theme().primaryColorDark)),
                const SizedBox(height: 15,),
                Text("Please enter your email .", textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline4?.copyWith(color: theme().primaryColorDark)),
                
              ],
            ),
          ),
          //Upload Logo HERE
          const SizedBox(height: 100),
          Expanded(
            child: Container(
              decoration:  BoxDecoration(
                color: theme().primaryColor, 
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50), )
              ),
              child: Column(
                children: [
                  const SizedBox(height: 50,),
                  
                  
          //Username
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              padding: const EdgeInsets.only(left: 2, right: 2, top: 9, bottom: 9),
              decoration: BoxDecoration (
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              ), 
              child: SizedBox(
                height: 40, 
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Colors.white,
                  filled: true,
                  hintText: username, //Makes text hover on Press
                  prefixIcon: Icon(Icons.mail, color: theme().primaryColorDark),           
                  ),),),)),
              const SizedBox(
                height: 10.0,
              ),


          const SizedBox(height: 20,),
          //Continue Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: theme().primaryColorDark,
                minimumSize: const Size.fromHeight(45),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              ),
              
              onPressed: (){Navigator.pushNamed(context, '/forgotpassnum2');}, 
              child: const Text("Continue", style: TextStyle(color: Colors.white),)
            ),
          ),


          
        ])))]));
    
}}