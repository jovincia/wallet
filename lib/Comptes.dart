import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'Background.dart';
import 'main.dart';



class ComptesPage extends StatefulWidget{
  @override
  _ComptesPageState createState()=> _ComptesPageState();
    
  
}

class _ComptesPageState  extends State <ComptesPage>{
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
  

