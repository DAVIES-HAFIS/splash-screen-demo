import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:rock_hero_app/screens/firstscreen.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}



class _ThirdScreenState extends State<ThirdScreen> {

  void initState(){
    super.initState();
    startTime();
  }

  startTime() async{
    var duration = Duration(seconds: 8);
    return Timer(duration, route);
  }

  route(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  FirstScreen()),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 100.h,
              width: 100.w,
              decoration: BoxDecoration(
                color: Color(0xffC4C4C4),
                image: DecorationImage(
                    image: AssetImage('assets/images/meter.jpg'),
                    fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 37.19.h),
              height: 62.8.h,
              width: 100.w,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [ Color(0xffC4C4C4
                  ).withOpacity(0.0),
                    Color(0xff000000).withOpacity(1.0)
                  ] ,

                ),
              ),
            ),
            Container(
              height: 100.h,
              width: 100.w,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      height: 4.06.h,
                      width: 36.53.w,
                      margin: EdgeInsets.only(
                        top:7.389.h,
                        bottom:46.3.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                          image: AssetImage('assets/images/rockheroplain.png'),
                          fit: BoxFit.cover,
                        ),
                      ),


                    ),

                    Container(
                      margin: EdgeInsets.only(
                        bottom:2.46.h,
                      ),
                      child: Text(
                        'Easy Payment',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          fontSize: 30.sp,
                          letterSpacing: 0.32,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom:4.92.h,
                        left: 13.0.w,
                        right: 13.0.w,
                      ),
                      child: Text(
                        'Easily pay for your orders in a convenient way. We take both cash and card.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 16.sp,
                          letterSpacing: 0.4,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 7.39.h),
                      width: 10.67.w,
                      height: 0.61.h,
                      child: Row(
                        children: [
                          Container(
                            width: 2.13.w,
                            height:  0.61.h,
                            margin: EdgeInsets.only(right: 2.13.w),
                            decoration: BoxDecoration(
                              color: Color(0xff868686),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                          ),
                          Container(
                            width: 2.13.w,
                            height:  0.61.h,
                            margin: EdgeInsets.only(right: 2.13.w),
                            decoration: BoxDecoration(
                              color: Color(0xff868686),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                          ),
                          Container(
                            width: 2.13.w,
                            height:  0.61.h,
                            decoration: BoxDecoration(
                              color:  Color(0xffffffff),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 1.97.h),
                        height: 5.91.h,
                        width: 90.13.w,
                        decoration: BoxDecoration(
                            color: Color(0xff027ecf),
                            borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: Center(
                          child: Text(
                            'GET STARTED',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              letterSpacing: 0.8,
                              color: Color(0xffffffff),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      onTap: () {},
                    ),


                    GestureDetector(
                      child: Container(
                        height: 5.91.h,
                        width: 90.13.w,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color:  Color(0xffffffff),
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'SIGN IN',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              letterSpacing: 0.8,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}


