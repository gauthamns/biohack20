
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class dailytask extends StatefulWidget {
  @override
  _dailytaskState createState() => _dailytaskState();
}

class _dailytaskState extends State<dailytask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.black.withOpacity(0.70),
      appBar: AppBar(title: 
      Center(child:
      Text("DAILY TASKS",style: TextStyle(color: Colors.white,fontSize: 23),),
      ),
        actions: [
          Icon(Icons.clear_all,color: Colors.white,),
          SizedBox(width: 15,),
        ],
        backgroundColor: Colors.black.withOpacity(0.59),
      ),
      body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height:  MediaQuery.of(context).size.height,
//            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.70),
            ),
//            color: Colors.black.withOpacity(0.87),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20,left: 20),
                    child:
                    Text("Today 28 June 2020",style: TextStyle(fontSize: 24,color: Colors.grey),),
                  ),
                 Container(
                   width: MediaQuery.of(context).size.width,
                   height:  MediaQuery.of(context).size.height *0.35,
                   margin: EdgeInsets.all( 20),
                   child: Card(
                     elevation: 1,
                     color: Colors.grey[600],
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Container(
                           margin: EdgeInsets.all(10),
                           child: Row(
                             children: [
                               Icon(Icons.lightbulb_outline,color: Colors.pink,),
                               Text("Heart rate",style: TextStyle(color: Colors.white,fontSize: 20),)
                             ],
                           ),
                         ),
                         Container(
                           margin: EdgeInsets.only(left: 20, top: 10),
                          child: Text("Make 3 breath gymnastics",style: TextStyle(color: Colors.white),),
                         ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Container(
                                    width: 90,
                                    height: 40,
                                    color: Colors.deepPurpleAccent,
                                    child: Center(
                                      child: Icon(Icons.check,color: Colors.white,size: 28,),
                                    ),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Container(
                                    width: 90,
                                    height: 40,
                                    color: Colors.grey,
                                    child: Center(
                                      child: Text("2",style: TextStyle(color: Colors.white,fontSize: 20),),
                                    ),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Container(
                                    width: 90,
                                    height: 40,
                                    color: Colors.grey,
                                    child: Center(
                                      child: Text("3",style: TextStyle(color: Colors.white,fontSize: 20),),
                                    ),
                                  ),
                                ),


                                ],
                            ),
                          ),
                         Divider(),
                         Container(
                           margin: EdgeInsets.only(left: 20, top: 10),
                           child: Text("30 min walking",style: TextStyle(color: Colors.white),),
                         ),
                         Container(
                           margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                           child: ClipRRect(
                             borderRadius: BorderRadius.circular(10.0),
                             child: Container(
                               width: MediaQuery.of(context).size.width,
                               height: 40,
                               color: Colors.grey,
                               child: Center(
                                 child: Icon(Icons.transfer_within_a_station,color: Colors.white,size: 28,),
                               ),
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),
//                  SizedBox(height: 20,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height:  MediaQuery.of(context).size.height *0.32,
                    margin: EdgeInsets.only( right: 20,left: 20),
                    child: Card(
                      elevation: 1,
                      color: Colors.grey[600],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Icon(Icons.ac_unit,color: Colors.lightGreenAccent,),
                                Text("Food control",style: TextStyle(color: Colors.white,fontSize: 20),)
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 10,right: 20),
                            child:
                            Row(
                              mainAxisAlignment:  MainAxisAlignment. spaceBetween,
                              children: [
                                Text("6 meals today",style: TextStyle(color: Colors.white),),
                                Text("00:45 min to next meal",style: TextStyle(color: Colors.lightGreenAccent),),
                              ],
                            ),


                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Container(
                                    width: 90,
                                    height: 40,
                                    color: Colors.deepPurpleAccent,
                                    child: Center(
                                      child: Icon(Icons.check,color: Colors.white,size: 28,),
                                    ),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Container(
                                    width: 90,
                                    height: 40,
                                    color: Colors.grey,
                                    child: Center(
                                      child: Text("2 breakfast",style: TextStyle(color: Colors.white,fontSize: 12),),
                                    ),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Container(
                                    width: 90,
                                    height: 40,
                                    color: Colors.grey,
                                    child: Center(
                                      child: Text("Lunch",style: TextStyle(color: Colors.white,fontSize: 12),),
                                    ),
                                  ),
                                ),


                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10,left: 10,top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Container(
                                    width: 90,
                                    height: 40,
                                    color: Colors.grey,
                                    child: Center(
                                      child: Text("Late lunch",style: TextStyle(color: Colors.white,fontSize: 12),),
                                    ),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Container(
                                    width: 90,
                                    height: 40,
                                    color: Colors.grey,
                                    child: Center(
                                      child: Text("Dinner",style: TextStyle(color: Colors.white,fontSize: 12),),
                                    ),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Container(
                                    width: 90,
                                    height: 40,
                                    color: Colors.grey,
                                    child: Center(
                                      child: Text("Late Dinner",style: TextStyle(color: Colors.white,fontSize: 12),),
                                    ),
                                  ),
                                ),


                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
