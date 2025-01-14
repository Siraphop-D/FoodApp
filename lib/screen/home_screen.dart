import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:foodapp/screen/chinesefood/chinesefood_screen.dart';
import 'package:foodapp/screen/drink/drink_screen.dart';
import 'package:foodapp/screen/koreafood/koreafood_screen.dart';
import 'package:foodapp/screen/menu_screen.dart';
import 'package:foodapp/screen/thaifood/thaifood_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late double screenWidth, screenHeight;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("สูตรอาหาร"),
        backgroundColor: Color.fromARGB(255, 0, 191, 99),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Container(
            //   height: screenHeight * 0.2,
            //   width: screenWidth * 0.9,
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(12),
            //       color: Color.fromARGB(255, 0, 191, 99)),
            // ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.topLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "    สูตรอาหารต่างๆ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MenuScreen(),
                            ));
                      },
                      icon: Icon(Icons.arrow_forward_ios))
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThaifoodScreen(),
                        ));
                  },
                  child: Container(
                    width: screenWidth * 0.4,
                    height: screenHeight * 0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage('images/thaifood.jpg'),
                        fit: BoxFit.cover,
                        opacity: 0.8,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(width: 10),
                        Text(
                          "อาหารไทย",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DrinkScreen(),
                            ));
                  },
                  child: Container(
                    width: screenWidth * 0.4,
                    height: screenHeight * 0.15,
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
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => KoreafoodScreen(),
                            ));
                  },
                  child: Container(
                    width: screenWidth * 0.4,
                    height: screenHeight * 0.15,
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
                InkWell(
                  onTap: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChinesefoodScreen(),
                            ));
                  },
                  child: Container(
                    width: screenWidth * 0.4,
                    height: screenHeight * 0.15,
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
              ],
            ),
            SizedBox(height: 40),
            Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    "สูตรอาหารที่ดูล่าสุด",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: screenWidth * 0.35,
                      height: screenHeight * 0.20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage('images/image9.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: screenWidth * 0.35,
                      height: screenHeight * 0.20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                          image: AssetImage('images/image10.jpg'),
                          fit: BoxFit.cover,
                        ),),
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: screenWidth * 0.35,
                      height: screenHeight * 0.20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                          image: AssetImage('images/image11.jpg'),
                          fit: BoxFit.cover,
                        ),),
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: screenWidth * 0.35,
                      height: screenHeight * 0.20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                          image: AssetImage('images/image12.webp'),
                          fit: BoxFit.cover,
                        ),),
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: screenWidth * 0.35,
                      height: screenHeight * 0.20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                          image: AssetImage('images/image13.jpg'),
                          fit: BoxFit.cover,
                        ),),
                    ),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
