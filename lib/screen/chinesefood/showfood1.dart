import 'package:flutter/material.dart';

class Showfood1 extends StatefulWidget {
  const Showfood1({super.key});

  @override
  State<Showfood1> createState() => _ShowfoodState();
}

class _ShowfoodState extends State<Showfood1> {
  late double screenWidth, screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: screenHeight * 0.35,
            floating: false,
            pinned: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                child: Container(
                  width: screenWidth * 0.85,
                  height: screenHeight * 0.4,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('images/c1.webp'),
                    fit: BoxFit.cover,
                  )),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Text(
                        "ไก่แช่เหล้า",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: screenWidth * 0.95,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 152, 152, 152),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: Column(
                     
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Text("วัตถุดิบ"),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: screenWidth * 0.85,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("1.สะโพกไก่ 2 ชิ้น"),
                                Text("2.น้ำซุปไก่ 1 ลิตร"),
                                Text("3.กระเทียมจีนทุบ 1 ช้อนโต๊ะ"),
                                Text("4.ขิง 1 แง่ง"),
                                Text("5.โป๊ยกั๊ก 1 ช้อนโต๊ะ"),
                                Text("6.อบเชย 3 แท่ง"),
                                Text("7.เหล้าจีน 2 ช้อนโต๊ะ"),
                                Text("8.ซีอิ๊วขาว 2 ช้อนโต๊ะ"),
                                Text("9.น้ำตาลทราย 1 ช้อนโต๊ะ"),
                                Text("10.ซอสหอยนางรม 1 ช้อนโต๊ะ"),
                                Text("11.เกลือ 1 ช้อนโต๊ะ"),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: screenWidth * 0.95,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 152, 152, 152),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Text("วิธีทำ"),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: screenWidth * 0.85,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "1.เตรียมน้ำต้มไก่ปรุงขิง กระเทียม โป๊ยกั๊ก อบเชย เหล้าจีน นำ้ตาลทราย ซอสหอยนางรม ซีอิ๊วขาว เกลือ ตั้งน้ำพอเดือด นำไก่ลงไปต้มในหม้อปิดฝา แล้วกดหุงประมาณ 30 นาที "),
                                Text(
                                    "2.ทำน้ำราดไก่ เอาส่วนผสมของน้ำราดผสมให้เข้ากัน"),
                                Text(
                                    "3.นำไก่มาชิ้นเป็นชิ้น แล้วราดด้วยเหล้าจีน จัดเสิร์ฟตกแต่งด้วยพริกชี้ฟ้าซอย ผักชี ให้สวยงาม"),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
