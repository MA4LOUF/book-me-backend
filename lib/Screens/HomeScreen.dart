// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../Cons/themes.dart';
import '../Screens/SideBarScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: theme().primaryColorDark,
        
      ),
      drawer: const SideBarScreen(), 
      body: Container(color: theme().primaryColorDark,)
      );
    
  }
}