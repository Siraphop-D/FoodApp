import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodapp/screen/navigation_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
        () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NavigationScreen())));
  }
  
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration:
           BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/image1.png"),
              fit: BoxFit.cover,
            
            ),
          ),
         ),
    );
  }
}