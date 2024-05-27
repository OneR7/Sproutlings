import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_tm/register.dart';
import 'package:get/get.dart';

class welcome_screen extends StatelessWidget {
  const welcome_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Get.to(
        RegisterPage(),
        transition: Transition.fade,
        duration: Duration(milliseconds: 1000), 
      );
    });
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 142, 142),
      body: Center(
        child: Image.asset(
          'assets/images/logoawal.png', 
          width: 300, 
          height: 300, 
        ),
      ),
    );
  }
}
