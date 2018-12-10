import 'package:flutter/material.dart';

void main () => runApp(new NewsListPage());

class NewsListPage extends StatefulWidget {
  @override 
  State<StatefulWidget> createState() => new NewListPageState();
}

class NewListPageState extends State<NewsListPage>{
  @override
  Widget build( BuildContext context){
    return new Container(
      child: new Container(
        width: 500, 
        height: 100.0,
        color: Colors.deepOrange,
      ),
    );
  }
}