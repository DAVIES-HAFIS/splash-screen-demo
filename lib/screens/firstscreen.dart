import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rock_hero_app/model/rockheroslide.dart';
import 'package:sizer/sizer.dart';
import 'package:rock_hero_app/screens/secondscreen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {



  int _currentPage = 0;
  String bgImg;
  _onPageChanged(int index){
    setState(() {
      _currentPage =index;
    });
  }

  @override
  void initState(){
    super.initState();
    startTime();
  }


  startTime() async{
    var duration = Duration(seconds: 8);
    return Timer(duration, route);
  }

  route(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  SecondScreen()),);
    }

  @override
  Widget build(BuildContext context) {
    if(carouselItemList[_currentPage].title =='All your favorites.'){
      bgImg = 'assets/images/food.jpg';}
    else if(carouselItemList[_currentPage].title ==  'Free delivery offers' ){
      bgImg = 'assets/images/human.jpg';
    }
    else {
      bgImg = 'assets/images/meter.jpg';
    }
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 100.h,
            width: 100.w,
            decoration: BoxDecoration(
              color: Color(0xffC4C4C4),
              image: DecorationImage(
                  image: AssetImage(bgImg),
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
                ],

              ),
            ),
          ),
          PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onPageChanged,
            itemCount: carouselItemList.length,
            itemBuilder: (ctx,i) => Screens(index: i),
          ),
        ],
      ),
    );
  }
}

class Screens extends StatelessWidget {
  final int index;
  Screens({this.index
  });
  @override
  Widget build(BuildContext context) {
      return Container(
        child: Column(
          children: [
            Container(
              height: 4.06.h,
              width: 36.53.w,
              margin: EdgeInsets.only(
                top: 7.389.h,
                bottom: 46.3.h,
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
                bottom: 2.46.h,
              ),
              child: Text(
                carouselItemList[index].title,
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
                bottom: 4.92.h,
                left: 13.0.w,
                right: 13.0.w,
              ),
              child: Text(
                  carouselItemList[index].description,
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
                    height: 0.61.h,
                    margin: EdgeInsets.only(right: 2.13.w),
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  ),
                  Container(
                    width: 2.13.w,
                    height: 0.61.h,
                    margin: EdgeInsets.only(right: 2.13.w),
                    decoration: BoxDecoration(
                      color: Color(0xff868686),
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  ),
                  Container(
                    width: 2.13.w,
                    height: 0.61.h,
                    decoration: BoxDecoration(
                      color: Color(0xff868686),
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
                    color: Color(0xffffffff),
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
              onTap: () {

              },
            ),
          ],
        ),
    );
  }
}

