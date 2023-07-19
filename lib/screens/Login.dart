// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saolon/screens/Forgotpassword.dart';
import 'package:saolon/screens/Signup.dart';
import 'package:saolon/screens/otp.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
            builder: (context, constraints) => SingleChildScrollView(
                  child: Stack(children: [
                    Opacity(
                      opacity: 0.8,
                      child: Image.asset(
                        'assests/Comb.png',
                        width: 374.w,
                        height: 460.h,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 19.w, top: 345.h, right: 13.w),
                      child: Column(children: [
                        TextFormField(
                          decoration: InputDecoration(
                              label: Text(
                                "Email",
                                style: GoogleFonts.comfortaa(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 14.sp,
                                      color: Color.fromRGBO(0, 0, 0, 1)),
                                ),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(141, 125, 243, 1))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromRGBO(141, 125, 243, 1)))),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              label: Text(
                                "Password",
                                style: GoogleFonts.comfortaa(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 14.sp,
                                      color: Color.fromRGBO(0, 0, 0, 1)),
                                ),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(141, 125, 243, 1))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromRGBO(141, 125, 243, 1)))),
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(() => ForgotpasswordPage());
                              },
                              child: Text(
                                "Forgot Password ?",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 13.sp,
                                        color:
                                            Color.fromRGBO(141, 125, 243, 1))),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
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
                            Get.to(() => Otppage());
                          },
                          child: Center(
                            child: Text(
                              "Login",
                              style: GoogleFonts.comfortaa(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24.sp,
                                      color: Color.fromRGBO(255, 255, 255, 1))),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 40.h,
                              width: 156.w,
                              child: ElevatedButton(
                                onPressed: () {
                                  //loginController.registerWithfb();
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  primary: Color(0xff3F51B5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 20.h,
                                      width: 8.w,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assests/FacebookIcon.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7.w,
                                    ),
                                    Text(
                                      "Facebook",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "ProductSans Regular",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40.h,
                              width: 156.w,
                              child: ElevatedButton(
                                onPressed: () async {
                                  // await loginController
                                  //     .registerWithGoogle();
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  primary: const Color(0xffffffff),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 26.h,
                                      width: 26.w,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assests/GoogleIcon.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      "Google",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "ProductSans Regular",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 55.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 50.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account ?  ",
                                style: TextStyle(
                                    fontFamily: "ProductSans Light",
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black),
                              ),
                              GestureDetector(
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    color: Color.fromRGBO(135, 118, 243, 1),
                                    fontFamily: "ProductSans Regular",
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignupPage(),
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                        )
                      ]),
                    )
                  ]),
                )),
      ),
    );
  }
}
