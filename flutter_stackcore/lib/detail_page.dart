import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => DetailPageState();
}

class DetailPageState extends State<DetailPage> {
  var price = 0.0;
  int select = 0;
  bool isFavorite = false;
  bool isReadMore = false;

  void favorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  void priceOfS() {
    setState(() {
      price = 3.99;
      select = 1;
    });
  }

  void priceOfM() {
    setState(() {
      price = 4.53;
      select = 2;
    });
  }

  void priceOfL() {
    setState(() {
      price = 5.99;
      select = 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 60.w,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.logout,
                size: 28,
              )),
          automaticallyImplyLeading: false,
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsets.only(bottom: 18.h),
            centerTitle: true,
            title: Text('Detail',
                style: TextStyle(fontSize: 21.sp, fontWeight: FontWeight.bold)),
          ),
          actions: [
            isFavorite == false
                ? IconButton(
                    icon: const Icon(Icons.favorite_border, size: 30),
                    onPressed: () {
                      favorite();
                      ScaffoldMessenger.of(context).removeCurrentSnackBar();
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.brown[400],
                          content: const Text(
                            '已收藏',
                            style: TextStyle(
                                color: Color.fromARGB(255, 233, 172, 115)),
                          )));
                    },
                  )
                : IconButton(
                    icon: const Icon(
                      Icons.favorite,
                      size: 30,
                      color: Colors.redAccent,
                    ),
                    onPressed: () {
                      favorite();
                      ScaffoldMessenger.of(context).removeCurrentSnackBar();
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.brown[400],
                          content: const Text(
                            '取消收藏',
                            style: TextStyle(
                                color: Color.fromARGB(255, 233, 172, 115)),
                          )));
                    },
                  ),
            SizedBox(
              width: 10.w,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                bottom: 50.h, top: 20.h, left: 25.w, right: 25.w),
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/images/detail.png',
                  fit: BoxFit.fill,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Cappucino",
                              style: TextStyle(
                                  fontSize: 21.sp,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            "with Chocolate",
                            style: TextStyle(height: 3.h, color: Colors.grey),
                          ),
                          SizedBox(
                            width: 90.w,
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text("4.8",
                                    style: TextStyle(
                                        fontSize: 20,
                                        height: 1.5,
                                        fontWeight: FontWeight.bold)),
                                Text(" (230)")
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          child: Center(
                              child: Image.asset(
                            'assets/images/detail01.png',
                            fit: BoxFit.fill,
                            height: 65.h,
                            width: 42.w,
                          )),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15.w),
                          child: Center(
                              child: Image.asset(
                            'assets/images/detail02.png',
                            fit: BoxFit.fill,
                            height: 65.h,
                            width: 42.w,
                          )),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  height: 50.h,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15.h),
                  alignment: Alignment.centerLeft,
                  child: Text("Description",
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.bold)),
                ),
                Text(
                  'A full cup of cappuccino is about 150 ml (5 ounces), which contains 25 ml of espresso and 85 ml of fresh milk. The remaining 40 ml is Kaiwen own secret recipe, which has not been known to anyone so far...',
                  maxLines: isReadMore ? 10 : 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.grey, fontSize: 13.sp, height: 1.5),
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        isReadMore = !isReadMore;
                      });
                    },
                    child: Text(isReadMore ? 'Read less ..' : 'Read more ..',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 216, 129, 97),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold))),
                Container(
                  margin: EdgeInsets.only(bottom: 20.h),
                  alignment: Alignment.centerLeft,
                  child: Text("Size",
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.bold)),
                ),
                Wrap(
                  spacing: 15.w,
                  children: <Widget>[
                    OutlinedButton(
                      style: select == 1
                          ? OutlinedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 250, 243, 238),
                              side: const BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 233, 172, 115)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.r)),
                              padding: EdgeInsets.only(
                                  left: 35.w,
                                  top: 20.h,
                                  bottom: 20.h,
                                  right: 35.w),
                            )
                          : ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  //to set border radius to button
                                  borderRadius: BorderRadius.circular(20.r)),
                              padding: EdgeInsets.only(
                                  left: 35.w,
                                  top: 20.h,
                                  bottom: 20.h,
                                  right: 35.w)),
                      onPressed: priceOfS,
                      child: Text("S",
                          style: select == 1
                              ? TextStyle(
                                  fontSize: 16.sp,
                                  color:
                                      const Color.fromARGB(255, 233, 172, 115))
                              : TextStyle(
                                  fontSize: 16.sp, color: Colors.black54)),
                    ),
                    OutlinedButton(
                      style: select == 2
                          ? OutlinedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 250, 243, 238),
                              side: const BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 233, 172, 115)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.r)),
                              padding: EdgeInsets.only(
                                  left: 35.w,
                                  top: 20.h,
                                  bottom: 20.h,
                                  right: 35.w),
                            )
                          : ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.r)),
                              padding: EdgeInsets.only(
                                  left: 35.w,
                                  top: 20.h,
                                  bottom: 20.h,
                                  right: 35.w)),
                      onPressed: priceOfM,
                      child: Text("M",
                          style: select == 2
                              ? TextStyle(
                                  fontSize: 16.sp,
                                  color:
                                      const Color.fromARGB(255, 233, 172, 115))
                              : TextStyle(
                                  fontSize: 16.sp, color: Colors.black54)),
                    ),
                    OutlinedButton(
                      style: select == 3
                          ? OutlinedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 250, 243, 238),
                              side: const BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 233, 172, 115)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.r)),
                              padding: EdgeInsets.only(
                                  left: 35.w,
                                  top: 20.h,
                                  bottom: 20.h,
                                  right: 35.w),
                            )
                          : ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.r)),
                              padding: EdgeInsets.only(
                                  left: 35.w,
                                  top: 20.h,
                                  bottom: 20.h,
                                  right: 35.w)),
                      onPressed: priceOfL,
                      child: Text("L",
                          style: select == 3
                              ? TextStyle(
                                  fontSize: 16.sp,
                                  color:
                                      const Color.fromARGB(255, 233, 172, 115))
                              : TextStyle(
                                  fontSize: 16.sp, color: Colors.black54)),
                    ),
                  ],
                ),
                Divider(
                  height: 60.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Price",
                            style: TextStyle(
                                fontSize: 17, height: 2.0, color: Colors.grey)),
                        Text(r"$ " "$price",
                            style: const TextStyle(
                                fontSize: 21,
                                color: Color.fromARGB(255, 216, 129, 97),
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    OutlinedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 216, 129, 98),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.r)),
                          padding: EdgeInsets.only(
                              left: 65.w,
                              top: 20.h,
                              bottom: 20.h,
                              right: 65.w)),
                      onPressed: () {
                        if (price == 3.99) {
                          Fluttertoast.cancel();
                          Fluttertoast.showToast(
                            msg: "已購買S的Cappucino, 價格:3.99美元",
                            toastLength: Toast.LENGTH_SHORT,
                          );
                        } else if (price == 4.53) {
                          Fluttertoast.cancel();
                          Fluttertoast.showToast(
                            msg: "已購買M的Cappucino, 價格:4.53美元",
                            toastLength: Toast.LENGTH_SHORT,
                          );
                        } else if (price == 5.99) {
                          Fluttertoast.cancel();
                          Fluttertoast.showToast(
                            msg: "已購買L的Cappucino, 價格:5.99美元",
                            toastLength: Toast.LENGTH_SHORT,
                          );
                        }
                      },
                      child: Text("Buy Now",
                          style:
                              TextStyle(fontSize: 17.sp, color: Colors.white)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
