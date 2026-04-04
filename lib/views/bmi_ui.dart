// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class BmiUi extends StatefulWidget {
  const BmiUi({super.key});

  @override
  State<BmiUi> createState() => _BmiUiState();
}

class _BmiUiState extends State<BmiUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( //ทำให้เลื่อนหน้าจอได้
        child: Padding( //ระยะห่างของเนื้อหาจากขอบหน้าจอ
          padding: EdgeInsetsGeometry.only(
            top: 40,
            left: 30,
            right: 30,
            bottom: 50,
          ),
          child: Center(
            child: Column(
              children: [
                //ส่วนชื่อหน้าจอ และรูป
                Text(
                  'คำนวณหาค่าดัชนีมวลกาย (BMI)',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                Image.asset(
                    'assets/images/bmi.png',
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 30),
                  //ส่วนของการป้อนข้อมูล
                  Align(
                    alignment: AlignmentGeometry.centerLeft,
                    child: Text(
                      'น้ำหนัก (กิโลกรัม)',
                    ),
                  ),
                  TextField(
                    keyboardType: TextInputType.number, //เปลี่ยนคีย์บอร์ดเป็นตัวเลข
                    decoration: InputDecoration( //ตกแต่งช่องกรอกข้อมูล
                      hintText: 'กรุณากรอกน้ำหนัก', //ข้อความแนะนำในช่องกรอกข้อมูล
                      border: OutlineInputBorder(), //เส้นขอบของช่องกรอกข้อมูล
                    ),
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: AlignmentGeometry.centerLeft,
                      child: Text(
                        'ส่วนสูง (เซนติเมตร)',
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'กรุณากรอกส่วนสูง',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 30),
                    //ส่วนปุ่ม
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'คำนวณ BMI',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 149, 4, 4),
                          fixedSize: Size(
                            MediaQuery.of(context).size.width, //ทำให้ปุ่มมีความกว้างเท่ากับหน้าจอ
                            50,
                          ),
                        ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'ล้างข้อมูล',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 167, 167, 166),
                        fixedSize: Size(
                          MediaQuery.of(context).size.width,
                          50,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    //ส่วนของการแสดงผลลัพธ์
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        children: [
                          Text(
                            'BMI',
                          ),
                          Text(
                            '0.00',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 149, 4, 4),
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'การแปรผล',
                          ),
                        ],
                      ),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}