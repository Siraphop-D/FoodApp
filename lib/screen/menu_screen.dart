import 'package:flutter/material.dart';
import 'package:foodapp/screen/chinesefood/chinesefood_screen.dart';
import 'package:foodapp/screen/cleanfood/cleanfood_screen.dart';
import 'package:foodapp/screen/dessert/dessert_screen.dart';
import 'package:foodapp/screen/drink/drink_screen.dart';
import 'package:foodapp/screen/koreafood/koreafood_screen.dart';
import 'package:foodapp/screen/thaifood/C/C_screen.dart';
import 'package:foodapp/screen/thaifood/E/e_screen.dart';
import 'package:foodapp/screen/thaifood/N/n_screen.dart';
import 'package:foodapp/screen/thaifood/S/s_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  late double screenWidth, screenHeight;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("สูตรอาหารทั้งหมด"),
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
                              builder: (context) => DessertScreen(),
                            ));
                },
                child: Container(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage('images/image5.jpg'),
                      fit: BoxFit.cover,
                      opacity: 0.8,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(width: 10),
                      Text(
                        "ของหวาน",
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
                              builder: (context) => CleanfoodScreen(),
                            ));
                },
                child: Container(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage('images/image6.jpg'),
                      fit: BoxFit.cover,
                      opacity: 0.8,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(width: 10),
                      Text(
                        "อาหารคลีน",
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
                              builder: (context) => DrinkScreen(),
                            ));
                },
                child: Container(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage('images/image7.jpg'),
                      fit: BoxFit.cover,
                      opacity: 0.8,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(width: 10),
                      Text(
                        "เครื่องดื่ม",
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
                              builder: (context) => KoreafoodScreen(),
                            ));
                },
                child: Container(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage('images/koreafood.jpg'),
                      fit: BoxFit.cover,
                      opacity: 0.8,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(width: 10),
                      Text(
                        "อาหารเกาหลี",
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
                              builder: (context) => ChinesefoodScreen(),
                            ));
                },
                child: Container(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage('images/chinesefood.webp'),
                      fit: BoxFit.cover,
                      opacity: 0.8,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(width: 10),
                      Text(
                        "อาหารจีน",
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
