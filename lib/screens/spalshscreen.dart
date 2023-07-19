import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saolon/screens/Login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(
      Duration(
        milliseconds: 2000,
      ),
      () => Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (BuildContext context) => const LoginPage(),
          ),
          (route) => route.isFirst),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 215, 214, 214),
        body: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset('assests/Ellipse 2.png'),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset('assests/Ellipse 1.png'),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 246.h,
                    left: 20.w,
                    right: 19.96,
                  ),
                  child: Column(
                    children: [
                      Image.asset('assests/undraw_barber.png'),
                      SizedBox(
                        height: 41.h,
                      ),
                      Text(
                        'Set styled here and now...',
                        style: GoogleFonts.kalam(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Image.asset("assests/Saolon 1.png"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
