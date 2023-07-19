// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Otppage extends StatefulWidget {
  const Otppage({Key? key}) : super(key: key);

  @override
  State<Otppage> createState() => _OtppageState();
}

class _OtppageState extends State<Otppage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 212, 212, 212),
      body: LayoutBuilder(
        builder: (p0, p1) => SingleChildScrollView(
          child: Stack(children: [
            Positioned(
              top: 60.h,
              left: 26.w,
              child:  Image.asset('assests/backarrow.png',
              color: Colors.black,
              width: 16.w,
              height: 16,)),
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
              padding: EdgeInsets.only(
                top: 208.h,
              ),
              child: Image.asset(
                'assests/background.png',
                width: 375.w,
                height: 303.h,
              ),
            ),
            SizedBox(
              height: 28.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 6.w, top: 540.h),
              child: Column(children: [
                Text(
                  "ENTER YOUR OTP ",
                  style: GoogleFonts.kalam(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: Colors.black)),
                ),
                SizedBox(
                  height: 29.h,
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
                SizedBox(height: 43.h,),
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
                                    //Get.to(()=>Otppage());
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
              ]),
            )
          ]),
        ),
      ),
    ));
  }
}
