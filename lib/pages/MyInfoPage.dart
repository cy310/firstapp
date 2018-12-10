import 'package:flutter/material.dart';

void main () => runApp(new MyInfoPage());

class MyInfoPage extends StatefulWidget {
  @override 
  State<StatefulWidget> createState() => new MyInfoPageState();
}

class MyInfoPageState extends State<MyInfoPage>{
  @override
  Widget build( BuildContext context){
    return new Container(
      child: new Container(
        width: 100.0, 
        height: 100.0,
        color: Colors.blue,
      ),
    );
  }
}