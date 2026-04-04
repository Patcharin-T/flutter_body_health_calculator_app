import 'package:flutter/material.dart';
import 'package:flutter_body_health_calculator_app/views/about_ui.dart';
import 'package:flutter_body_health_calculator_app/views/bmi_ui.dart';
import 'package:flutter_body_health_calculator_app/views/bmr_ui.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
//สร้างตัวแปรเก็นหมายเลขที่จะเอาไปใช้กับBarItem
int selectedIndex = 1;

//สร้างตัวแปรเก็บหน้าจอย่อย ที่จะเอามาใช้กับBody
//ข้อมูลที่อยู่ในตัวแปรแบบ List จะมี Index กำกับ เริ่มต้นที่ 0,1,2
//List ใช้ เก็บตัวแปรหลายๆตัวไว้ในตัวแปรเดียว 
List subPage = [
  BmiUi(),
  AboutUi(),
  BmrUi(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //ส่วนของ AppBar ----
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 149, 4, 4),
        title: Text(
          'BHC App',
          style: TextStyle(
            color: const Color.fromARGB(255, 250, 250, 250),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      // ส่วนของ  BottomNavigationBar ----
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex, //ทำให้เลือกไอคอนที่ 2 เป็นค่าเริ่มต้น
        selectedItemColor: const Color.fromARGB(255, 149, 4, 4), //สีของไอคอนเมื่อถูกเลือก
        unselectedItemColor:Colors.grey, //สีของไอคอนที่ไม่ได้ถูกเลือก
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'BMI',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'เกี่ยวกับ',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.run_circle_outlined,
            ),
            label: 'BMR',
          ),
        ],
      ),
      //ส่วนของ Body ----
      body: subPage[selectedIndex], //เรียกใช้ตัวแปร subPage ที่เก็บหน้าจอย่อยไว้ โดยใช้ selectedIndex เป็นตัวกำหนดว่าให้แสดงหน้าจอไหน
    );
  }
}
