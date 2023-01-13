

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:service/BottamNavigation/Serach/Searchpage.dart';
import 'package:service/BottamNavigation/dashboard/AllProduct/product.dart';
import 'package:service/common/const.dart';

import '../../Notification/NotificationScreen.dart';
import '../../Notification/notificationPage.dart';
import '../../QRCode/rrscan.dart';

import 'AllProduct/productlist.dart';
import 'dashboard_widget_page.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          // color: colorWhite,
           color: HexColor("#F9F9F9"),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              Container(
                color: colorWhite,
                margin: EdgeInsets.only(top: 35),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Row(
                          children: [
                            sizedboxwidth(10.0),
                            Icon(Icons.menu, size: 28),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 15),
                              // padding:
                              //     EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                              child: InkWell(
                                onTap: () {
                                  // Get.to(LocationScreen());
                                },
                                child: Row(
                                  children: <Widget>[
                                    Text("Current Location",
                                        style: TextStyle(color: Colors.black)),
                                    SizedBox(width: 2),
                                    Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.black,
                                      size: 25,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  
                    Expanded(
                      child: Container(
                        // alignment: Alignment.topRight,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                              Container(
                              alignment: Alignment.center,
                              child: InkWell(
                                  onTap: () {
                                    Get.to(() => QRscanPage());
                                  },
                                  child: Image(image: AssetImage('assets/icons/bar.png' ,),
                             
                                    
                                  ),
                              ),
                                      
                                      ),
                           
                             
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              alignment: Alignment.center,
                              child: InkWell(
                                  onTap: () {
                                    Get.to(() =>  NotificationScreen());
                                  },
                                   child: Icon(Icons.notifications_none_outlined,size: 27,color: HexColor("#6F767E"),),
                                      // child: Image(image: AssetImage('assets/icons/Notification.png' ,),),),
                              ),
                            ),
                          
                          
                            
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20,),

             Container(
              color: colorWhite,
              
               margin: EdgeInsets.only(left: 15,right: 15,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Container(
                        margin: EdgeInsets.only(left: 15,right: 15,
                        top: 10),
                    child:Column(children: [
                Text("HEllO jONEY 👋" ,style: TextStyle(
                   color:HexColor("#666C89"),
                fontSize: 24.0,fontWeight: fontWeight600

                ),),
           ],)),
           
             SizedBox(height: 10),
             
             Container(
               margin: const EdgeInsets.only(left:15,right:10,),
                
              child: Center(child: Text("What you are looking for today" ,style: TextStyle(
                   color:HexColor("#172B4D"),
                fontSize: 36.0,fontWeight: fontWeight600

                ),),),
             ),
            
             SizedBox(height: 15,),
              Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
            child:loginsearch1(context)
      ),
      
      SizedBox(height: 10,),
     ],),),
     SizedBox(height: 20,),
     Container(color: colorWhite,
               margin: EdgeInsets.only(left: 15,right: 15,),
      child: Column(children: [
              Container(
                 margin: const EdgeInsets.only(left: 25,right: 25,top: 20),
                
                width: MediaQuery.of(context).size.width,
               
                color: colorWhite,
             
                  child: Column(
                    children: [
                      Row(
                          children: [
                            Expanded(
                              child: Container(
                                child:Row(children: [
                                   sizedboxwidth(5.0),
                                  Image.asset("assets/icons/tag.png"),
                                  sizedboxwidth(10.0),
                                   Text(
                                    "Products",
                                    style: TextStyle(
                                      color: colorblack,
                                      fontSize: 25.0,fontWeight:FontWeight.bold,
                                    ),
                                  ),
                               ],),
                                ),
                              ),
                            btn6(),
                            
                          ]),
                      
                    ],
                  ),
                ),
               Container(

                margin: const EdgeInsets.only(left: 15, right: 10, top: 25),
                color: colorWhite,
                height: 677,
                child: GridView.builder(
                  itemCount: 8,
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 0.5,
                      mainAxisSpacing: 8.0),
                  itemBuilder: (BuildContext context, int index) {
                    
                    return Container(
                      child: Column(
                        children: [
                          Container(
                            child: InkWell(
                              onTap: () {
                                Get.to(() => ProductDetails());
                              },
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 163,
                                    height: 140,

                                    child:
                                        //  model.astrologerListdb[index]['profile_image'] != null
                                        //     ? Image.network(
                                        //         model.astrologerListdb[index]['image_url'].toString(),
                                        //         fit: BoxFit.cover,
                                        //         errorBuilder: (context, exception, stackTrack) =>Center(child: Text('Not \n found',textAlign: TextAlign.center,style: TextStyle(fontSize: 10),)),
                                        //       )
                                        //     :
                                        Image(
                                            image: AssetImage(
                                                'assets/images/air.png'),
                                            fit: BoxFit.contain),

                                    //     Image(
                                    //   image: AssetImage('assets/images/clip1.png'),
                                    //   fit: BoxFit.cover,
                                    // )
                                  ),

                                  // Image.asset(
                                  //   "assets/images/phone.png",
                                  //   fit: BoxFit.cover,
                                  // ),
                                
                              SizedBox(height: 4,),
                                  Text(
                                    "Laptop ",
                                    style: TextStyle(
                                      color: HexColor("#252843"),
                                      fontSize: 20.0,fontWeight: fontWeight600
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                 
                  },
                ),
              ),
            
              // Container(
                
              //   margin: const EdgeInsets.only(left: 15,right: 15,top: 15),
              //   color: colorWhite,
              //   height: 370,
                
              //   child: GridView.builder(
              //     itemCount: 4,
              //     scrollDirection: Axis.horizontal,
              //     // physics: AlwaysScrollableScrollPhysics(),
              //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //         crossAxisCount: 2,
              //         crossAxisSpacing: 2.0,
              //         mainAxisSpacing: 2.0),
              //     itemBuilder: (BuildContext context, int index) {
              //       return Container(

              //         child: Column(
              //           children: [
              //             Container(
              //               child: InkWell(
              //                 onTap: () {
              //                   // Get.to(() => EventPage());
              //                 },
              //                 child: Column(
              //                   children: [
              //                     Image.asset("assets/images/ac.png",fit: BoxFit.cover,),
              //                     SizedBox(height: 10,),
              //                     Text(
              //                       "Ac",
              //                       style: TextStyle(
              //                         color: colorblack,
              //                         fontSize: 16.0,
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ),
              //       );
              //     },
              //   ),
              
              // ),
             

              ],),),
              
             
            ],
          ),
        ),
      ),
   
    );
  }

}