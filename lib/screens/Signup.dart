// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saolon/screens/Login.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: LayoutBuilder(
                builder: (context, constraints) => SingleChildScrollView(
                      child: Stack(children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Image.asset('assests/Ellipse 2.png',),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Image.asset('assests/Ellipse 1.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 94.w, top: 198.h),
                          child: Image.asset(
                            'assests/lady.png',
                            width: 160.w,
                            height: 179.h,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 23.w, top: 400.h, right: 15.w),
                          child: Form(
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                      label: Text(
                                        "Name",
                                        style: GoogleFonts.comfortaa(
                                          textStyle: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14.sp,
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 1)),
                                        ),
                                      ),
                                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(
                                        color: Color.fromRGBO(
                                                  141, 125, 243, 1)
                                      )
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  141, 125, 243, 1)
                                                  ))),
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      label: Text(
                                        "Email",
                                        style: GoogleFonts.comfortaa(
                                          textStyle: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14.sp,
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 1)),
                                        ),
                                      ),
                                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(
                                        color: Color.fromRGBO(
                                                  141, 125, 243, 1)
                                      )
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  141, 125, 243, 1)))),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      label: Text(
                                        "Phone Number",
                                        style: GoogleFonts.comfortaa(
                                          textStyle: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14.sp,
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 1)),
                                        ),
                                      ),
                                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(
                                        color: Color.fromRGBO(
                                                  141, 125, 243, 1)
                                      )
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  141, 125, 243, 1)))),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      label: Text(
                                        "Password",
                                        style: GoogleFonts.comfortaa(
                                          textStyle: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14.sp,
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 1)),
                                        ),
                                      ),
                                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(
                                        color: Color.fromRGBO(
                                                  141, 125, 243, 1)
                                      )
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  141, 125, 243, 1)))),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      label: Text(
                                        "Confirm Password",
                                        style: GoogleFonts.comfortaa(
                                          textStyle: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14.sp,
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 1)),
                                        ),
                                      ),
                                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(
                                        color: Color.fromRGBO(
                                                  141, 125, 243, 1)
                                      )
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  141, 125, 243, 1)))),
                                ),
                                SizedBox(
                                  height: 48.h,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular( 16.r)
                                    ),
                                    minimumSize: Size(343.w, 52.h),
                                    maximumSize: Size(343.w, 52.h),
                                    backgroundColor:  Color.fromRGBO(
                                                  141, 125, 243, 1),
                                                  
                                  ),
                                  onPressed: () {
                                    Get.to(()=>LoginPage());
                                  }, 
                                child: Center(
                                  child: Text("Submit",
                                  style:GoogleFonts.comfortaa(
                                    textStyle:TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24.sp,
                                      color: Color.fromRGBO(255, 255, 255, 1)
                                    )
                                  )
                                  ,),
                                ),
                                ),
                                 SizedBox(
                            height: 15.h,
                          ),
                          
                              ],
                            ),
                          ),
                        )
                      ]),
                    ))));
  }
}
