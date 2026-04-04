import 'package:flutter/material.dart';

class AboutUi extends StatefulWidget {
  const AboutUi({super.key});

  @override
  State<AboutUi> createState() => _AboutUiState();
}

class _AboutUiState extends State<AboutUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack( //stack คือการวาง widget ซ้อนกัน เขียนก่อนบน เขียนหลังล่าง
        children: [
          // ชั้นที่1 
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Body Health Calculator ',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Image.asset(
                  'assets/images/logo.png',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20),
                Text(
                  'คำนวณหาค่าดัชนีมวลกาย (BMI)',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(
                  'คำนวณหาแคลอรี่ที่ร่างกายต้องการในแต่ละวัน (BMR)',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          // ชั้นที่ 2
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.network(
                  'data:image/png;base64,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',
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 10),
                Text(
                  'Developed by Patcharin SAU 2026',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}