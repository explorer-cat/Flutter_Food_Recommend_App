import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white12,

        child: Container(
          height: 70,
          margin: EdgeInsets.only(bottom: 24),
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 1,
                color: Colors.black12,
              ),
            ),
          ), //  POINT: BoxDecoration
          child: const TabBar(
            physics: NeverScrollableScrollPhysics(),

            // physics: NeverScrollableScrollPhysics(), // 슬라이드 효과를 없애는 부분
            labelColor: Colors.grey,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.transparent,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home, size: 24),
                child: Text('홈', style: TextStyle(fontSize: 12)),
              ),
              Tab(
                icon: Icon(Icons.search, size: 24),
                child: Text('검색', style: TextStyle(fontSize: 12)),
              ),
              Tab(
                icon: Icon(Icons.save_alt, size: 24),
                child: Text('소식', style: TextStyle(fontSize: 12)),
              ),
              Tab(
                icon: Icon(Icons.list, size: 24),
                child: Text('내 정보', style: TextStyle(fontSize: 12)),
              )
            ],
          ),
        ));
  }
}
