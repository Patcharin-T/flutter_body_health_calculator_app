import 'package:flutter/material.dart';

class BmrUi extends StatefulWidget {
  const BmrUi({super.key});

  @override
  State<BmrUi> createState() => _BmrUiState();
}

class _BmrUiState extends State<BmrUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.only(
            top: 40,
            left: 30,
            right: 30,
            bottom: 50,
          ),
          child: Center(
            child: Column(
              children: [
                // ส่วนชื่อของหน้าจอ และรูปภาพ
                Text(
                  'คำนวณหาอัตราการเผาผลาญที่',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'ร่างกายต้องการ (BMR)',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                Image.asset(
                  'assets/images/bmr.png',
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 30),
                // ส่วนของปุ่มเลือกเพศ
                Align(
                  alignment: AlignmentGeometry.centerLeft,
                  child: Text(
                    'เพศ',
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'ชาย',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 149, 4, 4),
                        fixedSize: Size(
                          MediaQuery.of(context).size.width * 0.4, //ทำให้ปุ่มมีความกว้างเท่ากับหน้าจอ
                          50,
                        ),
                        shape: RoundedRectangleBorder( //กำหนดรูปแบบของปุ่ม
                          borderRadius: BorderRadius.circular(10), //ทำให้ปุ่มมีขอบโค้งมน
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'หญิง',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 149, 4, 4),
                        fixedSize: Size(
                          MediaQuery.of(context).size.width * 0.4, //ทำให้ปุ่มมีความกว้างเท่ากับหน้าจอ
                          50,
                        ),
                        shape: RoundedRectangleBorder( //กำหนดรูปแบบของปุ่ม
                          borderRadius: BorderRadius.circular(10), //ทำให้ปุ่มมีขอบโค้งมน
                        ),
                      ),
                    ),
                    
                  ],
                ),
                SizedBox(height: 30),
                // ส่วนป้อนข้อมูล น้ำหนัก ส่วนสูง และอายุ
                Align(
                  alignment: AlignmentGeometry.centerLeft,
                  child: Text(
                    'น้ำหนัก (Kg)',
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'กรุณากรอกน้ำหนักของคุณ',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                Align(
                  alignment: AlignmentGeometry.centerLeft,
                  child: Text(
                    'ส่วนสูง (Cm)',
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'กรุณากรอกส่วนสูงของคุณ',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                Align(
                  alignment: AlignmentGeometry.centerLeft,
                  child: Text(
                    'อายุ (ปี)',
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'กรุณากรอกอายุของคุณ',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                // ส่วนปุ่มคำนวณ และล้างข้อมูล
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'คำนวณ BMR',
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
                SizedBox(height: 30),
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
                    backgroundColor: const Color.fromARGB(255, 158, 153, 153),
                    fixedSize: Size(
                      MediaQuery.of(context).size.width, //ทำให้ปุ่มมีความกว้างเท่ากับหน้าจอ
                      50,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                // ส่วนแสดงผลลัพธ์การคำนวณ BMR
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ), 
                  child: Column(
                    children: [
                      Text(
                        'BMR',
                      ),
                      Text(
                        '0.00',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 149, 4, 4),
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        'kcal/day',
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