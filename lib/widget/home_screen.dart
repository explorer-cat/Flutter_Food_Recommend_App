import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_demo/widget/store_detail_screen.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

void _onButtonPressed(int buttonNumber) {
  print('Button  pressed!');
  // 추가적인 동작을 수행하고자 하는 코드 작성
  // 예를 들어 다른 화면으로 이동하거나 데이터를 업데이트하는 등의 동작 수행 가능
}


class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  final List<String> items = ['전체', '치킨', '한식', '양식', '중식', '분식', '카페', '피자', '패스트푸드', '족발/보쌈', '도시락', '아시안'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const SizedBox(
            height: 60,
          ), // 60만큼의 빈 공간을 추가하여 상단 여백 생성
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            // child: Container(
                // decoration: BoxDecoration(border: Border.all(color: Colors.black26))),
          ),
          Flexible(
              flex: 4,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/banner.png"), // <-- BACKGROUND IMAGE
                    fit: BoxFit.cover,
                  ),
                ),
              )),
          Flexible(
              flex: 3,

              child: Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.white,
                child: const Text('# 오늘의 추천메뉴',style: TextStyle(
                  fontFamily: 'Pretendard',
                  height: 3,
                  fontSize: 16,  // 폰트 크기
                  fontWeight: FontWeight.bold,  // 폰트 굵기

                  color: Colors.black87,  // 텍스트 색상
                )),
              )),

          Flexible(
            flex: 5,
            child: CarouselSlider(
              options: CarouselOptions(height: 900.0),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      child : Stack(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => StoreDetailScrren()),
                              );
                              // 페이지 이동 로직을 여기에 구현합니다.
                            },
                            child:
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(

                                        image: AssetImage('assets/images/sample${i.toString()}.jpeg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child : Container(

                              width: MediaQuery.of(context).size.width,
                              height : 30,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(228, 225, 225, 0.9),
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                              ),
                              child: const Align(
                                alignment: Alignment.centerLeft,

                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                                  child : Text('이바돔 한정식1', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600)),

                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            )),
          Flexible(
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                color: Color.fromRGBO(228, 225, 225, 0.4),
                height: 10,
              )),
          Flexible(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.white,
                child: const Text('# 오늘 뭐먹지?',style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 16,  // 폰트 크기
                  height: 3,
                  fontWeight: FontWeight.bold,  // 폰트 굵기
                  color: Colors.black87,  // 텍스트 색상
                )),
              )),



          Flexible(
            flex: 6,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: List.generate(3, (rowIndex) {
                  return Expanded(
                    child: Row(
                      children: List.generate(3, (columnIndex) {
                        final buttonIndex = rowIndex * 3 + columnIndex;
                        // print(buttonIndex);
                        final buttonText = items[buttonIndex];
                        print(buttonText);
                        return Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: SizedBox(
                              height: 40.0,
                              child: ElevatedButton(
                                onPressed: () {
                                  // 버튼이 눌렸을 때 수행할 동작을 여기에 작성하세요.
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  onPrimary: Colors.black,
                                  side: BorderSide(color: Colors.black, width: 0.2),
                                  elevation: 0,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(width: 0.0), // 왼쪽 공백
                                    Expanded(
                                      child: Text(
                                        buttonText,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 12.0,
                                      color: Colors.black38,
                                    ),
                                  ],
                                ),


                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


/**
 *                         // Expanded(child: ElevatedButton(
    //     onPressed: _onButton4Pressed,
    //     child: Text('zz'
    //     )
    //   )
    // ),
 */
