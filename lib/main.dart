// @dart=2.9
import 'package:flutter/material.dart';
import 'app/DistributerHomeScreen.dart';
import 'app/users-screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery',
      initialRoute: DistributerHomeScreen.routName,
      routes: {
        // Home.routName:(BuildContext)=>Home(),
        UsersScreen.routName:(BuildContext)=>UsersScreen(),
        DistributerHomeScreen.routName:(BuildContext)=>DistributerHomeScreen(),
      },
    );



  }

}