import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramadan_appp/app/users-screen.dart';

class DistributerHomeScreen extends StatelessWidget {
  static const String routName = 'DistributerHomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        elevation: 0,
        backgroundColor: Color(0xff090A28),

        title: Text('food delivery confirmation system'),
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("assets/images/login_bg.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              //////////////////singleChildScrollView
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 400,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, right: 50, bottom: 15, left: 50),
                    child: Center(
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xff090A28),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: MaterialButton(
                          onPressed: (){

                          },
                          child: GestureDetector(
                            onTap: () => Navigator.pushNamed(context,UsersScreen.routName),
                            child: Text(
                              'Manual Registration',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),

                        ),
                      ),
                    ),
                  ), // login but/ password
                  SizedBox(
                    height: 10,
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
