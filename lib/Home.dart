import 'package:flutter/material.dart';
import 'package:wallet/main.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp( new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  new MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'login',
      theme:  new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(),
    );
  }

}
class HomePage extends StatefulWidget{
  HomePage({Key key, this.title}) : super(key:key);
  final String title;
  @override
  _HomePageState createState()=> new _HomePageState();
}
class _HomePageState  extends State <HomePage> {
  MediaQueryData queryData;
  static const Color greyc = Color(0xff494F58);
  static const Color bluec = Color(0xff59C0E6);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Container(

      ),
    );
    // TODO: implement build
  }
}

class Contacts {

  final int id;
  final bool isActive;
  final String picture;
  final String name;
  final String gender;
  final String email;
  final String about;

  Contacts(this.id, this.isActive,this.picture,this.name,this.gender,this.email,this.about);
}
