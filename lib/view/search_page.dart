import 'package:flutter/material.dart';
class SearchPageView extends StatefulWidget {
  const SearchPageView({Key? key}) : super(key: key);

  @override
  _SearchPageViewState createState() => _SearchPageViewState();
}

class _SearchPageViewState extends State<SearchPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0D8D8),
      body:  Container(
          margin: const EdgeInsets.only(left: 25, top: 90, right: 25),
          //  color: Colors.red,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.grey[200],
              // border: Border(left: BorderSide(color: Colors.white) ) ,
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 2,
                  spreadRadius: 2,
                  //offset: Offset(-2 , -1)
                )
              ]),
          child:
          TextFormField(
            decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Search product',
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                suffixIcon: Icon(
                  Icons.mic_none_outlined,
                  color: Colors.black,
                )),
          ),



        ) ,

    );
  }
}
