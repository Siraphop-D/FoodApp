import 'package:flutter/material.dart';
import 'package:foodapp/screen/navigation_screen.dart';
import 'package:foodapp/screen/splash_screen.dart';

void main(){
  
 var app = runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
  title: "My App",
  theme: ThemeData(
        primaryColor: Color.fromARGB(255, 0, 191, 99),
        useMaterial3: true,
      ),
      home: SplashScreen(),

 );
  }
}