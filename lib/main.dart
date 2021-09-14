
// import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rock_hero_app/screens/firstscreen.dart';
import 'package:rock_hero_app/screens/pageview.dart';
import 'package:sizer/sizer.dart';
import 'package:rock_hero_app/screens/splash_screen.dart';
import 'package:rock_hero_app/screens/secondscreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'RockHero',
          home: Scaffold(
            body: SplashScreen(),

            ),
        );
      },
    );
  }
}

//
// class SplashScreen extends StatefulWidget {
//
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           width: 100.w,
//           height: 100.h,
//           // child: SwipeDetector(
//           //   onSwipeRight: (){
//           //     Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => WalkThrough1()));
//           //   },
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 height: 5.54.h,
//                 width: 50.93.w,
//                 // height: MediaQuery.of(context).size.height,
//                 // width:  MediaQuery.of(context).size.width,
//                 margin: EdgeInsets.only(
//                   top:28.81.h,
//                   bottom:1.97.h,
//                 ),
//                 child: Image(
//                   image: AssetImage('assets/images/rockherocolor.png'),
//                 ),
//               ),
//               Container(
//                 height: 2.33.h,
//                 width: 466.67.h,
//                 margin: EdgeInsets.only(
//                   bottom:49.5.h,
//                 ),
//                 child: Text(
//                   'You Shop, We Deliver.',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: Color(0xFF010F07),
//                     fontStyle: FontStyle.normal,
//                     fontWeight: FontWeight.w600,
//                     fontSize: 16.sp,
//                     letterSpacing: 0.2,
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(
//                 ),
//                 child: Text(
//                   'Version: 2.0',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: Color(0xFF868686),
//                     fontStyle: FontStyle.normal,
//                     fontWeight: FontWeight.normal,
//                     fontSize: 13.sp,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
// class FirstScreen extends StatefulWidget {
//   @override
//   _FirstScreenState createState() => _FirstScreenState();
// }
//
// class _FirstScreenState extends State<FirstScreen> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Stack(
//           children: [
//             Container(
//               height: 100.h,
//               width: 100.w,
//               decoration: BoxDecoration(
//                 color: Color(0xffC4C4C4),
//                 image: DecorationImage(
//                     image: AssetImage('assets/images/food.jpg'),
//                     fit: BoxFit.cover,
//                     colorFilter: ColorFilter.mode(
//                         Color(0xffC4C4C4).withOpacity(0.6), BlendMode.dstATop)
//                 ),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(top: 37.19.h),
//               height: 62.8.h,
//               width: 100.w,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: FractionalOffset.topCenter,
//                   end: FractionalOffset.bottomCenter,
//                   colors: [ Color(0xffC4C4C4
//                   ).withOpacity(0.0),
//                     Color(0xff000000).withOpacity(1.0)
//                   ],
//
//                 ),
//               ),
//             ),
//             Container(
//               height: 100.h,
//               width: 100.w,
//               child: Center(
//                 child: Column(
//                   children: [
//                     Container(
//                       height: 4.06.h,
//                       width: 36.53.w,
//                       margin: EdgeInsets.only(
//                         top: 7.389.h,
//                         bottom: 46.3.h,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Colors.transparent,
//                         image: DecorationImage(
//                           image: AssetImage('assets/images/rockheroplain.png'),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//
//
//                     ),
//
//                     Container(
//                       margin: EdgeInsets.only(
//                         bottom: 2.46.h,
//                       ),
//                       child: Text(
//                         'All your favorites.',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Color(0xffffffff),
//                           fontStyle: FontStyle.normal,
//                           fontWeight: FontWeight.w600,
//                           fontSize: 30.sp,
//                           letterSpacing: 0.32,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(
//                         bottom: 4.92.h,
//                         left: 13.0.w,
//                         right: 13.0.w,
//                       ),
//                       child: Text(
//                         'Order from the best local restaurants with easy, on-demand delivery',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Color(0xffffffff),
//                           fontSize: 16.sp,
//                           letterSpacing: 0.4,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(bottom: 7.39.h),
//                       width: 10.67.w,
//                       height: 0.61.h,
//                       child: Row(
//                         children: [
//                           Container(
//                             width: 2.13.w,
//                             height: 0.61.h,
//                             margin: EdgeInsets.only(right: 2.13.w),
//                             decoration: BoxDecoration(
//                               color: Color(0xffffffff),
//                               borderRadius: BorderRadius.circular(100.0),
//                             ),
//                           ),
//                           Container(
//                             width: 2.13.w,
//                             height: 0.61.h,
//                             margin: EdgeInsets.only(right: 2.13.w),
//                             decoration: BoxDecoration(
//                               color: Color(0xff868686),
//                               borderRadius: BorderRadius.circular(100.0),
//                             ),
//                           ),
//                           Container(
//                             width: 2.13.w,
//                             height: 0.61.h,
//                             decoration: BoxDecoration(
//                               color: Color(0xff868686),
//                               borderRadius: BorderRadius.circular(100.0),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     GestureDetector(
//                       child: Container(
//                         margin: EdgeInsets.only(bottom: 1.97.h),
//                         height: 5.91.h,
//                         width: 90.13.w,
//                         decoration: BoxDecoration(
//                             color: Color(0xff027ecf),
//                             borderRadius: BorderRadius.circular(8.0)
//                         ),
//                         child: Center(
//                           child: Text(
//                             'GET STARTED',
//                             style: TextStyle(
//                               fontSize: 14.sp,
//                               fontWeight: FontWeight.bold,
//                               fontStyle: FontStyle.normal,
//                               letterSpacing: 0.8,
//                               color: Color(0xffffffff),
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                       ),
//                       onTap: () {},
//                     ),
//
//
//                     GestureDetector(
//                       child: Container(
//                         height: 5.91.h,
//                         width: 90.13.w,
//                         decoration: BoxDecoration(
//                           color: Colors.transparent,
//                           borderRadius: BorderRadius.circular(8.0),
//                           border: Border.all(
//                             color: Color(0xffffffff),
//                             width: 1.0,
//                           ),
//                         ),
//                         child: Center(
//                           child: Text(
//                             'SIGN IN',
//                             style: TextStyle(
//                               fontSize: 14.sp,
//                               fontWeight: FontWeight.w700,
//                               fontStyle: FontStyle.normal,
//                               letterSpacing: 0.8,
//                               color: Colors.white,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                       ),
//                       onTap: () {
//                         Navigator.of(context).push(MaterialPageRoute(builder: (
//                             BuildContext context) => SecondScreen()));
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
//
// class SecondScreen extends StatefulWidget {
//   @override
//   _SecondScreenState createState() => _SecondScreenState();
// }
//
// class _SecondScreenState extends State<SecondScreen> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Stack(
//           children: [
//             Container(
//               height: 100.h,
//               width: 100.w,
//               decoration: BoxDecoration(
//                 color: Color(0xffC4C4C4),
//                 image: DecorationImage(
//                     image: AssetImage('assets/images/human.jpg'),
//                     fit: BoxFit.cover,
//                     colorFilter: ColorFilter.mode(Color(0xffC4C4C4).withOpacity(0.6), BlendMode.dstATop)
//                 ),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(top: 37.19.h),
//               height: 62.8.h,
//               width: 100.w,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: FractionalOffset.topCenter,
//                   end: FractionalOffset.bottomCenter,
//                   colors: [ Color(0xffC4C4C4
//                   ).withOpacity(0.0),
//                     Color(0xff000000).withOpacity(1.0)
//                   ] ,
//
//                 ),
//               ),
//             ),
//             Container(
//               height: 100.h,
//               width: 100.w,
//               child: Center(
//                 child: Column(
//                   children: [
//                     Container(
//                       height: 4.06.h,
//                       width: 36.53.w,
//                       margin: EdgeInsets.only(
//                         top:7.389.h,
//                         bottom:46.3.h,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Colors.transparent,
//                         image: DecorationImage(
//                           image: AssetImage('assets/images/rockheroplain.png'),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//
//
//                     ),
//
//                     Container(
//                       margin: EdgeInsets.only(
//                         bottom:2.46.h,
//                       ),
//                       child: Text(
//                         'Free delivery offers',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Color(0xffffffff),
//                           fontStyle: FontStyle.normal,
//                           fontWeight: FontWeight.w600,
//                           fontSize: 30.sp,
//                           letterSpacing: 0.32,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(
//                         bottom:4.92.h,
//                         left: 13.0.w,
//                         right: 13.0.w,
//                       ),
//                       child: Text(
//                         'Free delivery for new customers via Apple Pay and others payment methods.',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Color(0xffffffff),
//                           fontSize: 16.sp,
//                           letterSpacing: 0.4,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(bottom: 7.39.h),
//                       width: 10.67.w,
//                       height: 0.61.h,
//                       child: Row(
//                         children: [
//                           Container(
//                             width: 2.13.w,
//                             height:  0.61.h,
//                             margin: EdgeInsets.only(right: 2.13.w),
//                             decoration: BoxDecoration(
//                               color:Color(0xff868686),
//                               borderRadius: BorderRadius.circular(100.0),
//                             ),
//                           ),
//                           Container(
//                             width: 2.13.w,
//                             height:  0.61.h,
//                             margin: EdgeInsets.only(right: 2.13.w),
//                             decoration: BoxDecoration(
//                               color:  Color(0xffffffff),
//                               borderRadius: BorderRadius.circular(100.0),
//                             ),
//                           ),
//                           Container(
//                             width: 2.13.w,
//                             height:  0.61.h,
//                             decoration: BoxDecoration(
//                               color: Color(0xff868686),
//                               borderRadius: BorderRadius.circular(100.0),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     GestureDetector(
//                       child: Container(
//                         margin: EdgeInsets.only(bottom: 1.97.h),
//                         height: 5.91.h,
//                         width: 90.13.w,
//                         decoration: BoxDecoration(
//                             color: Color(0xff027ecf),
//                             borderRadius: BorderRadius.circular(8.0)
//                         ),
//                         child: Center(
//                           child: Text(
//                             'GET STARTED',
//                             style: TextStyle(
//                               fontSize: 14.sp,
//                               fontWeight: FontWeight.bold,
//                               fontStyle: FontStyle.normal,
//                               letterSpacing: 0.8,
//                               color: Color(0xffffffff),
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                       ),
//                       onTap: () {
//                         Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ThirdScreen()));
//                       },
//                     ),
//
//
//                     GestureDetector(
//                       child: Container(
//                         height: 5.91.h,
//                         width: 90.13.w,
//                         decoration: BoxDecoration(
//                           color: Colors.transparent,
//                           borderRadius: BorderRadius.circular(8.0),
//                           border: Border.all(
//                             color:  Color(0xffffffff),
//                             width: 1.0,
//                           ),
//                         ),
//                         child: Center(
//                           child: Text(
//                             'SIGN IN',
//                             style: TextStyle(
//                               fontSize: 14.sp,
//                               fontWeight: FontWeight.w700,
//                               fontStyle: FontStyle.normal,
//                               letterSpacing: 0.8,
//                               color: Colors.white,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                       ),
//                       onTap: () {},
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
// class ThirdScreen extends StatefulWidget {
// @override
// _ThirdScreenState createState() => _ThirdScreenState();
// }
//
// class _ThirdScreenState extends State<ThirdScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Stack(
//           children: [
//             Container(
//               height: 100.h,
//               width: 100.w,
//               decoration: BoxDecoration(
//                 color: Color(0xffC4C4C4),
//                 image: DecorationImage(
//                     image: AssetImage('assets/images/meter.jpg'),
//                     fit: BoxFit.cover,
//                     colorFilter: ColorFilter.mode(Color(0xffC4C4C4).withOpacity(0.6), BlendMode.dstATop)
//                 ),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(top: 37.19.h),
//               height: 62.8.h,
//               width: 100.w,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: FractionalOffset.topCenter,
//                   end: FractionalOffset.bottomCenter,
//                   colors: [ Color(0xffC4C4C4
//                   ).withOpacity(0.0),
//                     Color(0xff000000).withOpacity(1.0)
//                   ] ,
//
//                 ),
//               ),
//             ),
//             Container(
//               height: 100.h,
//               width: 100.w,
//               child: Center(
//                 child: Column(
//                   children: [
//                     Container(
//                       height: 4.06.h,
//                       width: 36.53.w,
//                       margin: EdgeInsets.only(
//                         top:7.389.h,
//                         bottom:46.3.h,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Colors.transparent,
//                         image: DecorationImage(
//                           image: AssetImage('assets/images/rockheroplain.png'),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//
//
//                     ),
//
//                     Container(
//                       margin: EdgeInsets.only(
//                         bottom:2.46.h,
//                       ),
//                       child: Text(
//                         'Easy Payment',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Color(0xffffffff),
//                           fontStyle: FontStyle.normal,
//                           fontWeight: FontWeight.w600,
//                           fontSize: 30.sp,
//                           letterSpacing: 0.32,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(
//                         bottom:4.92.h,
//                         left: 13.0.w,
//                         right: 13.0.w,
//                       ),
//                       child: Text(
//                         'Easily pay for your orders in a convenient way. We take both cash and card.',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Color(0xffffffff),
//                           fontSize: 16.sp,
//                           letterSpacing: 0.4,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(bottom: 7.39.h),
//                       width: 10.67.w,
//                       height: 0.61.h,
//                       child: Row(
//                         children: [
//                           Container(
//                             width: 2.13.w,
//                             height:  0.61.h,
//                             margin: EdgeInsets.only(right: 2.13.w),
//                             decoration: BoxDecoration(
//                               color: Color(0xff868686),
//                               borderRadius: BorderRadius.circular(100.0),
//                             ),
//                           ),
//                           Container(
//                             width: 2.13.w,
//                             height:  0.61.h,
//                             margin: EdgeInsets.only(right: 2.13.w),
//                             decoration: BoxDecoration(
//                               color: Color(0xff868686),
//                               borderRadius: BorderRadius.circular(100.0),
//                             ),
//                           ),
//                           Container(
//                             width: 2.13.w,
//                             height:  0.61.h,
//                             decoration: BoxDecoration(
//                               color:  Color(0xffffffff),
//                               borderRadius: BorderRadius.circular(100.0),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     GestureDetector(
//                       child: Container(
//                         margin: EdgeInsets.only(bottom: 1.97.h),
//                         height: 5.91.h,
//                         width: 90.13.w,
//                         decoration: BoxDecoration(
//                             color: Color(0xff027ecf),
//                             borderRadius: BorderRadius.circular(8.0)
//                         ),
//                         child: Center(
//                           child: Text(
//                             'GET STARTED',
//                             style: TextStyle(
//                               fontSize: 14.sp,
//                               fontWeight: FontWeight.bold,
//                               fontStyle: FontStyle.normal,
//                               letterSpacing: 0.8,
//                               color: Color(0xffffffff),
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                       ),
//                       onTap: () {},
//                     ),
//
//
//                     GestureDetector(
//                       child: Container(
//                         height: 5.91.h,
//                         width: 90.13.w,
//                         decoration: BoxDecoration(
//                           color: Colors.transparent,
//                           borderRadius: BorderRadius.circular(8.0),
//                           border: Border.all(
//                             color:  Color(0xffffffff),
//                             width: 1.0,
//                           ),
//                         ),
//                         child: Center(
//                           child: Text(
//                             'SIGN IN',
//                             style: TextStyle(
//                               fontSize: 14.sp,
//                               fontWeight: FontWeight.w700,
//                               fontStyle: FontStyle.normal,
//                               letterSpacing: 0.8,
//                               color: Colors.white,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                       ),
//                       onTap: () {},
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
