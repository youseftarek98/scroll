import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';




class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {


  List mobile = [
    {
      'Name': 'S10 ultra',
      'Screen': '6.2',
      'cpu': 'assets/images_1.jpg',
    },
    {
      'Name': 'S20 ultra',
      'Screen': '6.2',
      'cpu': 'assets/imagers_2.jpg',
    },
    {
      'Name': 'S30 ultra',
      'Screen': '6.2',
      'cpu': 'assets/images_3.jpg',
    },
    {
      'Name': 'S40 ultra',
      'Screen': '6.2',
      'cpu': 'assets/images_4.jpg',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE0D8D8),
        appBar: AppBar(
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.notification_important)),
          ],
          elevation: 0.0,
          title: const Text('Scroll'),
          backgroundColor: const Color(0xFF76ab90),
        ),
        body:
               Container(
                 child: Stack(

                     children : [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [ const Text(
                           'Categories',
                           style: TextStyle(
                             color: Colors.black,
                             fontSize: 23,
                           ),
                         ),
                           TextButton(
                               onPressed: () {},
                               child: const Text('see all',
                                   style: TextStyle(
                                     decoration: TextDecoration.underline ,
                                     color:  Colors.green , //Color(0xFF76ab95),
                                     fontSize: 16,
                                   ))) ,],
                       ) ,
                       const SizedBox(
                         height: 33,
                       ) ,

                    GestureDetector(
                      onTap: (){
                        print('going to view product') ;
                      },
                      child:    Padding(
                        padding: const EdgeInsets.only(top: 39),
                        child:StaggeredGridView.countBuilder(
                          crossAxisCount: 2,
                          itemCount: mobile.length ,
                          crossAxisSpacing: 4,
                          mainAxisSpacing: 4,
                          itemBuilder: (context, index) {
                            return  Card(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                              elevation: 5.0,
                              child: Container(
                                height: 120,
                                padding: const EdgeInsets.all(4),
                                margin: const EdgeInsets.only(bottom: 8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 85,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        image: DecorationImage(
                                          image: AssetImage('${mobile[index]['cpu']}'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('${mobile[index]['Name']}' ,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle: FontStyle.italic),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: const [

                                                Text(
                                                  "price \$39 ",
                                                  style: TextStyle(
                                                    fontStyle: FontStyle.italic,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),

                                              ],
                                            ) ,
                                            Row(
                                              children:const [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                ) ,

                                                Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                ) ,  Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                ) ,
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ) ;
                            /*
                  Container(
                  color: const Color(0xFF76ab90),
                  child: ListTile(
                    title: Text('${mobile[index]['Name']}'),
                  ),
                )
                ;
                 */
                          },

                          staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
                        ) ,
                      ),
                    )
                       /*
                       StaggeredGridView.countBuilder(
                         crossAxisCount: 2,
                         itemCount: mobile.length ,
                         crossAxisSpacing: 10,
                         mainAxisSpacing: 10,
                         itemBuilder: (context, index) {
                           return  Card(
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                             elevation: 5.0,
                             child: Container(
                               height: 120,
                               padding: const EdgeInsets.all(4),
                               margin: const EdgeInsets.only(bottom: 8.0),
                               child: Row(
                                 children: [
                                   Container(
                                     width: 85,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(30),
                                       image: DecorationImage(
                                         image: AssetImage('${mobile[index]['cpu']}'),
                                         fit: BoxFit.fill,
                                       ),
                                     ),
                                   ),
                                   const SizedBox(width: 5),
                                   Expanded(
                                     child: Padding(
                                       padding: const EdgeInsets.all(3.0),
                                       child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text('${mobile[index]['Name']}' ,
                                             style: const TextStyle(
                                                 fontWeight: FontWeight.bold,
                                                 fontStyle: FontStyle.italic),
                                             maxLines: 1,
                                             overflow: TextOverflow.ellipsis,
                                           ),
                                           Row(
                                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                             children: const [

                                               Text(
                                                 "price \$39 ",
                                                 style: TextStyle(
                                                   fontStyle: FontStyle.italic,
                                                   fontWeight: FontWeight.bold,
                                                 ),
                                               ),

                                             ],
                                           ) ,
                                           Row(
                                             children:const [
                                               Icon(
                                                 Icons.star,
                                                 color: Colors.amber,
                                               ) ,

                                               Icon(
                                                 Icons.star,
                                                 color: Colors.amber,
                                               ) ,  Icon(
                                                 Icons.star,
                                                 color: Colors.amber,
                                               ) ,
                                             ],
                                           )
                                         ],
                                       ),
                                     ),
                                   )
                                 ],
                               ),
                             ),
                           ) ;
                           /*
                  Container(
                  color: const Color(0xFF76ab90),
                  child: ListTile(
                    title: Text('${mobile[index]['Name']}'),
                  ),
                )
                ;
                 */
                         },

                         staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
                       ),


                        */
                     ]
                 ),
               )


            /*
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Categories',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text('see all',
                              style: TextStyle(
                                color: Color(0xFF76ab90),
                                fontSize: 16,
                              ))) ,
                      Container(child: StaggeredGridView.countBuilder(
                        crossAxisCount: 1,
                        itemCount: mobile.length ,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        itemBuilder: (context, index) {
                          return  ListTile(
                            title: Text('${mobile[0]['name']}'),
                          );
                        },
                        staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                      ),)
                    ],
                  ),
                ],
              ),
            ),

             */


          );
  }
}
