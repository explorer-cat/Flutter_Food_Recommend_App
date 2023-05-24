import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/bottomBar.dart';
import 'package:flutter_demo/widget/home_screen.dart';
import 'package:flutter_demo/widget/search_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NetFlix',
      theme: ThemeData(
          fontFamily: 'Pretendard',
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Colors.black,
          hintColor: Colors.white,
      ),


      home:  DefaultTabController(

        length: 4,

        child: Scaffold(

          body: TabBarView(

            // controller: _tabController,
            physics: NeverScrollableScrollPhysics(),

            children: <Widget>[
              HomeScreen(),
              SearchScreen(),
            ],
          ),
          // resizeToAvoidBottomInset: false,
          bottomNavigationBar: Bottom(),
        ),

      ),
    );
  }
}
