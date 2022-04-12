import 'package:flutter/material.dart';
class FavoritePageView extends StatefulWidget {
  const FavoritePageView({Key? key}) : super(key: key);

  @override
  _FavoritePageViewState createState() => _FavoritePageViewState();
}

class _FavoritePageViewState extends State<FavoritePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0D8D8),
      body: Center(
        child: Container(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                 Text('Please login to see your favorites list ' ,
                style: TextStyle(
                  fontSize: 22 ,
                   color: Colors.black
                ),),
              const SizedBox(height: 15,) ,
              TextButton(
                onPressed: () {

                  print("Login");
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFF76ab90),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  minimumSize: Size(
                    MediaQuery.of(context).size.width * 0.7,
                    45,
                  ),
                ),
                child: const Text(

                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              )
            ],
          )
        ),

      ),



    );
  }
}
