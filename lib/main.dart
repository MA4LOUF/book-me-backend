import 'package:flutter/material.dart';
import 'Layouts/Splash_Page.dart';
import '/Cons/themes.dart';
import 'Config/App_Router.dart';


void main()=> runApp(const BookMe());

class BookMe extends StatelessWidget {
  const BookMe({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: theme(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: SplashPage.routeName
  );
  }
}