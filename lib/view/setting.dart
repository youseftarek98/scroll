import 'package:flutter/material.dart';
class SettingPageView extends StatefulWidget {
  const SettingPageView({Key? key}) : super(key: key);

  @override
  _SettingPageViewState createState() => _SettingPageViewState();
}

class _SettingPageViewState extends State<SettingPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0D8D8),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 10 , right: 10 , top: 6 , bottom: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const CircleAvatar(
                  backgroundColor:  Color(0xFFE0D8D8),
                  backgroundImage: AssetImage('assets/images_3.jpg' ),
                  radius: 60,
                  //   child:
                ) ,
                const SizedBox(height: 10,) ,
                const Text('Youssef Tarek' , style: TextStyle(
                    color: Colors.black ,
                    fontSize: 24 ,
                    fontWeight: FontWeight.bold
                ),
                ) ,
                InkWell(
                  onTap: (){ print('Edit profile 1') ;},
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      const Text('Edit profile', style: TextStyle(
                        color: Colors.black ,
                        fontSize: 20 ,
                      ),) ,
                      IconButton(onPressed: (){
                        print('Edit profile') ;
                      }, icon: const Icon(Icons.edit , color: Color(0xFF76ab90) , size: 28,)) ,

                    ],
                  ),
                ) ,

                InkWell(
                  onTap: (){ print('Notifications 1') ;},
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      const Text('Notifications', style: TextStyle(
                        color: Colors.black ,
                        fontSize: 20 ,
                      ),) ,
                      IconButton(onPressed: (){
                        print('Notifications') ;
                      }, icon: const Icon(Icons.notifications_outlined , color: Color(0xFF76ab90) , size: 28,)) ,

                    ],
                  ),
                ) ,

                InkWell(
                  onTap: (){ print('Search history 1') ;},
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      const Text('Search history', style: TextStyle(
                        color: Colors.black ,
                        fontSize: 20 ,
                      ),) ,
                      IconButton(onPressed: (){
                        print('Search history') ;
                      }, icon: const Icon(Icons.av_timer_sharp , color: Color(0xFF76ab90) , size: 28,)) ,

                    ],
                  ),
                ) ,

                InkWell(
                  onTap: (){ print('Language and country 1') ;},
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      const Text('Language and country ', style: TextStyle(
                        color: Colors.black ,
                        fontSize: 20 ,
                      ),) ,
                      IconButton(onPressed: (){
                        print('Language and country') ;
                      }, icon: const Icon(Icons.language , color: Color(0xFF76ab90) , size: 28,)) ,

                    ],
                  ),
                ) ,

                InkWell(
                  onTap: (){ print('About us 1') ;},
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      const Text('About us', style: TextStyle(
                        color: Colors.black ,
                        fontSize: 20 ,
                      ),) ,
                      IconButton(onPressed: (){
                        print('About us') ;
                      }, icon: const Icon(Icons.contact_support_outlined , color: Color(0xFF76ab90) , size: 28,)) ,

                    ],
                  ),
                ) ,

                InkWell(
                  onTap: (){ print('Contact us 1') ;},
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      const Text('Contact us', style: TextStyle(
                        color: Colors.black ,
                        fontSize: 20 ,
                      ),) ,
                      IconButton(onPressed: (){
                        print('Contact us') ;
                      }, icon: const Icon(Icons.phone_rounded , color: Color(0xFF76ab90) , size: 28,)) ,

                    ],
                  ),
                ) ,

                InkWell(
                  onTap: (){ print('Terms and provisions 1') ;},
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      const Text('Terms and provisions', style: TextStyle(
                        color: Colors.black ,
                        fontSize: 20 ,
                      ),) ,
                      IconButton(onPressed: (){
                        print('Terms and provisions') ;
                      }, icon: const Icon(Icons.snowmobile , color: Color(0xFF76ab90) , size: 28,)) ,

                    ],
                  ),
                ) ,

                InkWell(
                  onTap: (){ print('Logout 1') ;},
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      const Text('Logout', style: TextStyle(
                        color: Colors.black ,
                        fontSize: 20 ,
                      ),) ,
                      IconButton(onPressed: (){
                        print('Logout') ;
                      }, icon: const Icon(Icons.logout , color: Color(0xFF76ab90) , size: 28,)) ,

                    ],
                  ),
                ) ,

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:  [
                      IconButton(onPressed: (){
                        print('Edit profile') ;
                      }, icon: const Icon(Icons.facebook , color: Colors.blue , size: 28,)) ,
                      IconButton(onPressed: (){
                        print('Edit profile') ;
                      }, icon: const Icon(Icons.integration_instructions , color: Color(0xFF76ab90) , size: 28,)) ,
                      IconButton(onPressed: (){
                        print('Edit profile') ;
                      }, icon: const Icon(Icons.linked_camera_rounded , color: Color(0xFF76ab90) , size: 28,)) ,
                      IconButton(onPressed: (){
                        print('Edit profile') ;
                      }, icon: const Icon(Icons.edit , color: Color(0xFF76ab90) , size: 28,)) ,
                      IconButton(onPressed: (){
                        print('Edit profile') ;
                      }, icon: const Icon(Icons.edit , color: Color(0xFF76ab90) , size: 28,)) ,
                      IconButton(onPressed: (){
                        print('Edit profile') ;
                      }, icon: const Icon(Icons.youtube_searched_for_outlined , color: Color(0xFF76ab90) , size: 28,)) ,
                      const SizedBox(height: 10,)
                    ],
                  ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
