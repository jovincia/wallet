import 'package:flutter/material.dart';
//import 'package:flutter/semantics.dart';
import 'Background.dart';
//import 'main.dart';


class Transactions extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
 
  } 

}


class TransactionsPage extends StatefulWidget{
  @override
  _TransactionsPageState createState()=> _TransactionsPageState();
    
  
}

class _TransactionsPageState  extends State <TransactionsPage>{
MediaQueryData queryData;
  @override
  Widget build(BuildContext context) {
Size size = MediaQuery.of(context).size;
    queryData=MediaQuery.of(context);
    return Scaffold(
      body: Container(
        height: queryData.size.height,
        child: Stack(
          children: [
            CustomPaint(
              painter: Painter(),
              child: Container(),
            ),
          ]),
      ),
    );


  }
  }
  

