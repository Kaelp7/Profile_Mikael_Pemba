import 'package:flutter/material.dart';
import 'package:mobiledev_flutter_1/theme.dart';

class Day2Page extends StatelessWidget {
  const Day2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: ListView(
        padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
        children: [
          Text(
            'Mikael Pemba',
            style: poppinsTextStyle.copyWith(
                fontSize: 24, color: Colors.black, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Just a Small Part About Me',
            style: poppinsTextStyle.copyWith(
              fontSize: 16,
              color: const Color(0XFFFFFFFF),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 70),
            height: 402,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/home.png'), fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Terms & Conditions',
            textAlign: TextAlign.center,
            style: TextStyle(decoration: TextDecoration.underline),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
