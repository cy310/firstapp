import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './pages/MyInfoPage.dart';
import './pages/NewsListPage.dart';

void main() {
  runApp(new MyClient());
}

class MyClient extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyClientState();
}

class MyClientState extends State<MyClient> {
  var tabImages;
  var _tabIndex = 0;
  var appBarTitles = [ 'home', 'mine'];
  var _body;
  


  @override
  Widget build(BuildContext context) {
    initdata();
    return new MaterialApp(
      theme: new ThemeData(
          primaryColor: const Color(0xFF63CA6C)
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(appBarTitles[_tabIndex]),
          // style: new TextStyle(color: Colors.white),
          // style: new TextStyle(color: Colors.white)),
          iconTheme: new IconThemeData(color: Colors.white)
        ),
        body: _body,
        bottomNavigationBar: new CupertinoTabBar(
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
              title: new Text('home'),
              icon: getTabIcon(0)
            ),
            new BottomNavigationBarItem(
              title: new Text('mine'),
              icon: getTabIcon(1)
            )
          ],
          currentIndex: _tabIndex,
          onTap: (index) {
            setState(() {
              _tabIndex = index;
            });
          },
        ),
      ),
    );
  }

  Image getTabImage(path){
    return new Image.asset(path, width: 20.0, height: 20.0);
  }

  Image getTabIcon( int curIndex) {
    if(curIndex == _tabIndex){
      return tabImages[curIndex][1];
    }
    return tabImages[curIndex][0];
  }

  void initdata() {
    if(tabImages == null){
      tabImages = [
        [
          getTabImage('images/ic_nav_news_normal.png'),
          getTabImage('images/ic_nav_news_actived.png')
        ],
        [
          getTabImage('images/ic_nav_my_normal.png'),
          getTabImage('images/ic_nav_my_pressed.png')
        ]
      ];
    }

     _body = new IndexedStack(
    children: <Widget>[
      new NewsListPage(),
      new MyInfoPage()
    ],
    index: _tabIndex,
  );
  }
}