// ignore_for_file: deprecated_member_use, non_constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../Cons/names.dart';
import '../Cons/themes.dart';
import '../components/SquareTile.dart';

//Login Part
class RegScreen extends StatefulWidget {
  const RegScreen({super.key});

  @override
  State<RegScreen> createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  bool _isChecked = false;
  bool _isVisibile = true;
  final _eController = TextEditingController();
  final _uController = TextEditingController();
  final _pController = TextEditingController();

  @override
  Widget build(BuildContext Context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 0, 0, 0),
       body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 170), 
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Create", style: Theme.of(context).textTheme.headline1?.copyWith(color: theme().primaryColorDark)),
                const SizedBox(height: 5,),
                Text("Account", style: Theme.of(context).textTheme.headline1?.copyWith(color: theme().primaryColorDark)),
                const SizedBox(height: 15,),
                Text("Please enter credentials to continue", style: Theme.of(context).textTheme.headline4?.copyWith(color: theme().primaryColorDark), ),
              ],
            ),
          ),
          //Upload Logo HERE
          const SizedBox(height: 50),
          Expanded(
            child: Container(
              decoration:  BoxDecoration(
                color: theme().primaryColor, 
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50), )
              ),
              child: Column(
                children: [
                  const SizedBox(height: 50,),
                  
          //Email
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
                  controller: _eController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Colors.white,
                  filled: true,
                  hintText: email, //Makes text hover on Press
                  prefixIcon: Icon(Icons.mail, color: theme().primaryColorDark),           
                  ),),),)),
              const SizedBox(
                height: 10.0,
              ),


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
                  controller: _uController,
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


          //Password Input
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Container(
              padding: const EdgeInsets.only(left: 2, right: 2, top: 9, bottom: 9),
              decoration: BoxDecoration (
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              ), 
              child: SizedBox(
                height: 40, 
                child: TextFormField(
                  controller: _pController,
            obscureText: _isVisibile, // To hide password characters.
            decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade100),
                ),
                fillColor: Colors.white,
                filled: true,
                labelText: password, //Makes text hover on Press
                prefixIcon: Icon(Icons.lock, color: theme().primaryColorDark), 
                suffixIcon: Tooltip(
                  message: "Show Password", 
                  verticalOffset: -48,
                  child: IconButton(icon: Icon(_isVisibile ? Icons.visibility: Icons.visibility_off,color: theme().primaryColorDark) , onPressed: (){setState(() {
                    _isVisibile = !_isVisibile;
                  });},),),),),),),), 

        
          

          const SizedBox(height: 60,),
          //Continue Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: theme().primaryColorDark,
                minimumSize: const Size.fromHeight(45),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              ),
              
              onPressed: (){
                FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: _eController.text, password: _pController.text).then((value) {
                      Navigator.pushNamed(context, '/homepage');}).onError((error, stackTrace){
                        print("Error: ${error.toString()}");
                });
                },
              child: const Text("Register", style: TextStyle(color: Colors.white),)
            ),
          ),

          const SizedBox(height: 10.0),
          Row(children: const [
            SizedBox(width: 40,),
            Expanded(
              child: Divider(thickness: 0.2, color: Colors.white)
            ), 
            Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text("Or", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),)
            ),
            Expanded(
              child: Divider(thickness: 0.2,color: Colors.white)
            ),
            SizedBox(width: 40,),
          ],
            ),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40,),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                minimumSize: const Size.fromHeight(45),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              ),
              
              onPressed: (){Navigator.pushNamed(context, '/login');}, 
              child: const Text("Log in", style: TextStyle(color: Colors.black),)
            ),
          ),
        ])
      
          
        ))]));
    
}}
