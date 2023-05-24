import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class StoreDetailScrren extends StatelessWidget {
  const StoreDetailScrren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black, size: 20),
        // Set the button color here
        elevation: 0.0,
        // Set the elevation to 0.0 to remove the shadow
        title: Text(
          "이바돔 감자탕",
          style: TextStyle(
            color: Colors.black, // 텍스트 색상을 여기에 설정합니다
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(),
              items: imgList
                  .map((item) => Container(
                        child: Center(
                          child: Image.network(item,
                              fit: BoxFit.cover, width: 1000),
                        ),
                      ))
                  .toList(),
            ),
            // 다른 컨텐츠를 추가할 수 있습니다
            Container(
              margin: EdgeInsets.only(top: 12.0, left: 20.0, right: 20.0),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 4),
                    child: const Align(
                      alignment: Alignment.centerLeft, // 왼쪽 정렬을 지정합니다
                      child: Text(
                        '이바돔 감자탕',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.2),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8.0, left: 4),
                    child: const Align(
                      alignment: Alignment.centerLeft, // 왼쪽 정렬을 지정합니다
                      child: Text(
                        '신천동',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 0.2),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Container(
                              child: Align(
                            alignment: Alignment.centerLeft, // 왼쪽 정렬을 지정합니다
                            child: RatingBarIndicator(
                              rating: 2.75,
                              itemBuilder: (context, index) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              itemCount: 5,
                              itemSize: 30.0,
                              direction: Axis.horizontal,
                            ),
                          )),
                          Container(
                            margin: EdgeInsets.only(left: 8.0),
                            child: Text("2.8",
                                style: TextStyle(
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: -0.5)),
                          ),
                        ],
                      )),
                ],
              ),

              /**
               *                   Align(
                  alignment: Alignment.centerLeft, // 왼쪽 정렬을 지정합니다
                  child: Text(
                  '신천동',
                  style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 0.2
                  ),
                  ),
                  ),
               */
            ),
          ],
        ),
      ),

      // body: SingleChildScrollView(
      //   child : Column(
      //     children: [
      //         Container(
      //             height: MediaQuery.of(context).size.height,
      //             child: Center(
      //               child: CarouselSlider(
      //               options: CarouselOptions(),
      //               items: imgList
      //                   .map((item) => Container(
      //               child: Center(
      //               child: Image.network(item, fit: BoxFit.cover, width: 1000),
      //               ),
      //               ))
      //                   .toList(),
      //               ),
      //             ),
      //         ),
      //       ],
      //       // padding: EdgeInsets.only(top: 20.0), // 원하는 여백을 상단에 설정합니다
      //   ),
      // )
    );
  }
}
