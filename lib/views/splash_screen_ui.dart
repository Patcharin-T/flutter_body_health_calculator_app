import 'package:flutter/material.dart';
import 'package:flutter_body_health_calculator_app/views/home_ui.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {

  @override
  void initState() {
    // หน่วงเวลาหน้าจอ 3 วินาที แล้วเปลี่ยนไปหน้าHomeuiแบบย้อนกลับไม่ได้
    Future.delayed(
      //เวลาที่จะหน่วง
      Duration(seconds: 3),
      //พอครบเวลาที่หน่วงแล้วจะให้ทำอะไร
      (){
        //เปิดไปHomeแบบย้อนกลับไม่ได้
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUi(),
          ),
        );
      }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 149, 4, 4),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 250,
              height: 250,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Body Health Calculator',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 255, 255, 255)),
            ),
            Text(
              '© 2026 All rights reserved.',
              style: TextStyle(
                fontSize: 15,
                color: const Color.fromARGB(255, 206, 204, 199),
              ),
            ),
            Text(
              'Created by: Patcharin SAU',
              style: TextStyle(
                fontSize: 15,
                color: const Color.fromARGB(255, 206, 204, 199),
              ),
            ),
            SizedBox(height: 30),
            CircularProgressIndicator(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
