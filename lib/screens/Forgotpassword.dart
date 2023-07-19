// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saolon/screens/Login.dart';

class ForgotpasswordPage extends StatefulWidget {
  const ForgotpasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotpasswordPage> createState() => _ForgotpasswordPageState();
}

class _ForgotpasswordPageState extends State<ForgotpasswordPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 210, 210, 210),
      body: LayoutBuilder(
        builder: (p0, p1) => SingleChildScrollView(
          child: Stack(children: [
            Positioned(
                top: 60.h,
                left: 26.w,
                child: GestureDetector(
                  onTap: () {
                    Get.off(()=>LoginPage());
                  },
                  child: Image.asset(
                    'assests/backarrow.png',
                    color: Colors.black,
                    width: 16.w,
                    height: 16.h,
                  ),
                )),
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                'assests/Ellipse 2.png',
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset('assests/Ellipse 1.png'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 253.h, left: 16.w, right: 16.w),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 40.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "FORGOT\nPASSWORD",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 32.sp,
                                  color: Colors.black)),
                        ),
                        Container(
                          width: 110.w,
                          height: 100.h,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 171, 171, 171)),
                          child: Image.asset(
                            'assests/man.png',
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text(
                          "Email",
                          style: GoogleFonts.comfortaa(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp,
                                color: Color.fromRGBO(0, 0, 0, 1)),
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(141, 125, 243, 1)))),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'OTP SENT TO ************@***il.com SUCCESSFULLY',
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15.sp,
                            color: Color.fromRGBO(73, 67, 178, 1))),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "ENTER YOUR OTP ",
                    style: GoogleFonts.kalam(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20.sp,
                            color: Colors.black)),
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  OtpTextField(
                    numberOfFields: 4,
                    borderColor: Color.fromRGBO(135, 118, 243, 1),
                    showFieldAsBox: false,
                    borderWidth: 2.w,
                    styles: [
                      TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(135, 118, 243, 1),
                      ),
                      TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(135, 118, 243, 1),
                      ),
                      TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(135, 118, 243, 1),
                      ),
                      TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(135, 118, 243, 1),
                      )
                    ],
                    enabledBorderColor: Colors.black,
                    focusedBorderColor: Color.fromRGBO(135, 118, 243, 1),
                    onCodeChanged: (String code) {},
                    onSubmit: (String verify) {},
                  ),
                  SizedBox(
                    height: 43.h,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.r)),
                      minimumSize: Size(343.w, 52.h),
                      maximumSize: Size(343.w, 52.h),
                      backgroundColor: Color.fromRGBO(141, 125, 243, 1),
                    ),
                    onPressed: () {
                      //Get.to(()=>Otppage());
                    },
                    child: Center(
                      child: Text(
                        "Submit",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24.sp,
                                color: Color.fromRGBO(255, 255, 255, 1))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Didn’t Recieve Otp ?',
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 13.sp,
                          color: Colors.black,
                        )),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        'Resend OTP ',
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 13.sp,
                          color: Color.fromRGBO(135, 118, 243, 1),
                        )),
                      )
                    ],
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    ));
  }
}
