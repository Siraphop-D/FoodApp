import 'package:flutter/material.dart';
import 'package:foodapp/screen/thaifood/C/C_screen.dart';
import 'package:foodapp/screen/thaifood/E/e_screen.dart';
import 'package:foodapp/screen/thaifood/N/n_screen.dart';
import 'package:foodapp/screen/thaifood/S/s_screen.dart';

class ThaifoodScreen extends StatefulWidget {
  const ThaifoodScreen({super.key});

  @override
  State<ThaifoodScreen> createState() => _ThaifoodScreenState();
}

class _ThaifoodScreenState extends State<ThaifoodScreen> {
  late double screenWidth, screenHeight;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("สูตรอาหารไทย"),
        backgroundColor: Color.fromARGB(255, 0, 191, 99),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                   Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NScreen(),
                        ));
                },
                child: Container(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage('images/image8.jpg'),
                      fit: BoxFit.cover,
                      opacity: 0.8,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(width: 10),
                      Text(
                        "อาหารภาคเหนือ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                   Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CScreen(),
                        ));
                },
                child: Container(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage('images/image4.jpg'),
                      fit: BoxFit.cover,
                      opacity: 0.8,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(width: 10),
                      Text(
                        "อาหารภาคกลาง",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                   Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EScreen(),
                        ));
                },
                child: Container(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage('images/image3.jpg.webp'),
                      fit: BoxFit.cover,
                      opacity: 0.8,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(width: 10),
                      Text(
                        "อาหารภาคอีสาน",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                   Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SScreen(),
                        ));
                },
                child: Container(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage('images/image2.webp'),
                      fit: BoxFit.cover,
                      opacity: 0.8,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(width: 10),
                      Text(
                        "อาหารภาคใต้",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      )),
    );
  }
}
