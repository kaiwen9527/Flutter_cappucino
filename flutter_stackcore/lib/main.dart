import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      //appBar: AppBar(title: Text('HKT線上教室kai'),),
      body: home(),
    ));
  }
}





//---------------------------------------------home介面--------------------------------------------------------

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Stack(
            children: [
              Container(
                child: Center(child: Image.asset('assets/images/home1.png',
                    fit: BoxFit.fill,
                    width: 420,
                    height: 560,
                  )
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 470),
                child: Center(child: Image.asset('assets/images/home2.png',
                    fit: BoxFit.fill,
                    width: 420,
                    height: 397.3,
                  )
                ),
              ),
              Align(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 545, bottom: 25),
                      child: Text('Coffee so good,\nyour taste buds\nwill love it.',textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text('The best grain, the finest roast, the\npowerful flavor.',textAlign: TextAlign.center,
                        style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.2,color: Colors.grey)),
                    ),
                    Container(
                      alignment:Alignment.center,
                      margin: EdgeInsets.only(bottom: 20,top: 20),
                      child: OutlinedButton(
                        child: Text('Welcome',style: TextStyle(fontSize: 22,fontWeight:FontWeight.bold,color: Colors.grey[600])),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder( //to set border radius to button
                            borderRadius: BorderRadius.circular(15)),
                            padding: EdgeInsets.only(top: 17,bottom: 17,left: 125,right: 125)
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => detail()));
                        },
                      )
                    ),   
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}







//---------------------------------------------detail介面--------------------------------------------------------

class detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Detail'),),
      body: _detail(),
    );
  }
}

class _detail extends StatefulWidget {
  @override
  _detailState createState() => _detailState();
}


class _detailState extends State<_detail> {
  //static Color toastBgColor = const Color(0x80000000);
  var price = 0.0;


  void _SizeS() {
    setState(() {
      price = 3.99;
    });
  }

  void _SizeM() {
    setState(() {
      price = 4.53;
    });
  }

  void _SizeL() {
    setState(() {
      price = 5.99;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 40),
        ),
        Row(
          children: [
            Container(
              alignment:Alignment.center,
              margin: EdgeInsets.only(left: 175,right: 105),   //left:175
              child: Text("Detail",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
            ),
            IconButton(icon: Icon(Icons.favorite_border,size: 30),
              onPressed: (){
                Navigator.pop(context);
              }, 
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20,top: 20,left: 30,right: 30),
          child: Center(child: Image.asset('assets/images/detail.png',fit: BoxFit.fill,)),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 112,left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Cappucino",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                  Text("with Chocolate",style: TextStyle(height: 2.0,color: Colors.grey),),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Icon(Icons.star,color: Colors.amber,),
                        Text("4.8",style: TextStyle(fontSize: 20,height: 1.5,fontWeight: FontWeight.bold)),
                        Text(" (230)")
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Center(child: Image.asset('assets/images/detail01.png',
                fit: BoxFit.fill,
                height: 50,
                width: 50,)
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 18),
              child: Center(child: Image.asset('assets/images/detail02.png',
                fit: BoxFit.fill,
                height: 50,
                width: 50,)
              ),
            ),
          ],
        ),
        Divider(height: 45,indent: 30,endIndent: 30, color: Colors.grey[400],),
        Container(
          margin: EdgeInsets.only(left: 30,bottom: 15),
          alignment: Alignment.centerLeft,
          child: Text("Description",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
        ),
        Container(
          alignment: Alignment.bottomLeft,
          margin: EdgeInsets.only(left: 30),
          child: Column(
            children: [
              RichText(text:TextSpan(
                  text: "A cappuccino is an approximately 150 ml (5\noz) beverage,"
                  " with 25 ml of espresso coffee\nand 85ml of fresh milk the fo.. ",
                  style: TextStyle(color: Colors.grey,fontSize: 17,height: 1.5),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Read More",
                      style: TextStyle(color: const Color.fromARGB(255, 216, 129, 97),
                        fontSize: 18,fontWeight: FontWeight.bold)
                    ),
                  ]
                )
              ),
              
            ],           
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30,bottom: 20,top: 20),
          alignment: Alignment.centerLeft,
          child: Text("Size",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
        ),
        
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 30,right: 20),
              child: OutlinedButton(child: Text("S",style: TextStyle(fontSize: 18,color: Colors.black54)),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder( //to set border radius to button
                    borderRadius: BorderRadius.circular(15)),
                  padding: EdgeInsets.only(left: 45,top: 14,bottom: 14,right: 45)
                ), 
                onPressed: _SizeS,
              ),
            ),
            Container(
              child: OutlinedButton(child: Text("M",style: TextStyle(fontSize: 18,color: Colors.black54)),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  padding: EdgeInsets.only(left: 45,top: 14,bottom: 14,right: 45)
                ), 
                onPressed:_SizeM,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: OutlinedButton(child: Text("L",
                style: TextStyle(fontSize: 18,color: const Color.fromARGB(255, 233, 172, 115))),
                //text color ->(255.233.172.115)
                style: OutlinedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 246, 234, 224),
                  side: BorderSide(width: 1,color: const Color.fromARGB(255, 233, 172, 115)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  padding: EdgeInsets.only(left: 45,top: 14,bottom: 14,right: 45),
                ), 
                onPressed:_SizeL,
              ),
            ),
          ],
        ),
        Divider(height: 35,indent: 30,endIndent: 30, color: Colors.grey[400],),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Price",style: TextStyle(fontSize: 17,height: 2.0,color: Colors.grey)),
                  Text(r"$ ""$price",style: TextStyle(fontSize: 21,
                    color: const Color.fromARGB(255, 216, 129, 97),
                    fontWeight: FontWeight.bold)
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 60),
              child: OutlinedButton(child: Text("Buy Now",style: TextStyle(fontSize: 20,color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 216, 129, 98),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  padding: EdgeInsets.only(left: 80,top: 18,bottom: 18,right: 80)
                ), 
                onPressed: () {
                  if(price == 3.99){
                    Fluttertoast.showToast(
                      msg: "已購買S的Cappucino, 價格:3.99美元",
                      toastLength: Toast.LENGTH_SHORT,
                      timeInSecForIosWeb: 1,
                    );
                  }
                  else if(price == 4.53){
                    Fluttertoast.showToast(
                      msg: "已購買M的Cappucino, 價格:4.53美元",
                      toastLength: Toast.LENGTH_SHORT,
                      timeInSecForIosWeb: 1,
                    );
                  }
                  else if(price == 5.99){
                    Fluttertoast.showToast(
                      msg: "已購買L的Cappucino, 價格:5.99美元",
                      toastLength: Toast.LENGTH_SHORT,
                      timeInSecForIosWeb: 1,
                    );
                  }
                },
              ),
            )
          ],
        )
      ],
    );

  }
}