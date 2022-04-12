import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:scroll/view/favorite_page.dart';
import 'package:scroll/view/home_page.dart';
import 'package:scroll/view/review.dart';
import 'package:scroll/view/search_page.dart';
import 'package:scroll/view/setting.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {

  late int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //backgroundColor: Colors.grey,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color(0xFFE0D8D8),
        buttonBackgroundColor: const Color(0xFF76ab90),
        index: _currentIndex,
        items: const <Widget>[
          Icon(Icons.home_outlined, size: 30  ),
          Icon(Icons.star_border, size: 30),
          Icon(Icons.search_rounded, size: 30),
          Icon(Icons.favorite_outline, size: 30),
          Icon(Icons.category, size: 30 ),

        ],
          onTap: (value){
            setState(() {
              _currentIndex = value ;
            });
          },
      ),
      body: pages[_currentIndex],
    );
  }



  List<Widget> pages = [
    const HomePageView(),
    const  ReviewPageView() ,
    const SearchPageView(),
    const  FavoritePageView() ,
     const SettingPageView(),

  ];
}
