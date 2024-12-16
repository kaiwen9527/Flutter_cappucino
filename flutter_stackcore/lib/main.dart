import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stackcore/detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(340, 1200),
        builder: (context, child) => const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: HomePage(),
            )));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Positioned(
          top: 0,
          child: Image.asset(
            'assets/images/home1.png',
            fit: BoxFit.fill,
            width: 1.sw,
          )),
      Positioned(
          bottom: 0,
          child: Image.asset(
            'assets/images/home2.png',
            fit: BoxFit.fill,
            width: 1.sw,
            height: 520.h,
          )),
      Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Column(
            children: <Widget>[
              Text(
                'Coffee so good,\nyour taste buds\nwill love it.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 32.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text('The best grain, the finest roast, the\npowerful flavor.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 14.sp)),
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(bottom: 40.h, top: 30.h),
                  child: OutlinedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            // To set border radius to button
                            borderRadius: BorderRadius.circular(15)),
                        padding: EdgeInsets.only(
                            top: 16.h,
                            bottom: 16.h,
                            left: 110.w,
                            right: 110.w)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailPage()));
                    },
                    child: const Text("Welcome",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                  )),
            ],
          ))
    ]);
  }
}
