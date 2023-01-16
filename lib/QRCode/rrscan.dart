

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:service/BottamNavigation/fillter/filterpage.dart';
import 'package:service/common/const.dart';

import '../Notification/notificationPage.dart';

class QRscanPage extends StatefulWidget {
  const QRscanPage({super.key});

  @override
  State<QRscanPage> createState() => _QRscanPageState();
}

class _QRscanPageState extends State<QRscanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

         body: Container(
        color: colorGreyBackground,
        child: Stack(
          children: [
            Column(children: [
              // arrow(context),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage("assets/images/qrcode.png"),
                        fit: BoxFit.cover)),
               height: 850,
                width: MediaQuery.of(context).size.width,
              ),
          
            
            
            ]),
          //   Container(
          //     child: Column(children: [
          //       Text("Ac")
          //     ]),
          //   )
          // //   Stack(children: [
          //   Container(
          //     child: Column(children: [

          //     ],),
          //   )
          //   ]),
            // Positioned(
            //       top: -20.0,
            //       left: 150.0,
            //       child: Stack(children: [
                    
            //         Positioned(
            //             top: 50.0,
            //             right: -5.0,
            //             child: Image.asset("assets/icons/camera.png"))
            //       ]))
               Positioned(
          top: 650,
                 
                        // right: -5.0,
                        child:Center(
                          
                          child: Container(
                    margin: EdgeInsets.only(bottom: 10, top: 10,right: 30,left: 40) ,
                    padding: EdgeInsets.all(10.0),
                    width: 300,
                    height: 80,
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: colorblack.withOpacity(0.1)),
                      boxShadow:boxShadowcontainer(),
                    ),
                   
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: ClipOval(
                                    child:
                                        //  model.astrologerListdb[index]['profile_image'] != null
                                        //     ? Image.network(
                                        //         model.astrologerListdb[index]['image_url'].toString(),
                                        //         fit: BoxFit.cover,
                                        //         errorBuilder: (context, exception, stackTrack) =>Center(child: Text('Not \n found',textAlign: TextAlign.center,style: TextStyle(fontSize: 10),)),
                                        //       )
                                        //     :
                                        Image(image: AssetImage('assets/images/ac.png'), fit: BoxFit.contain),
      
                                    //     Image(
                                    //   image: AssetImage('assets/images/clip1.png'),
                                    //   fit: BoxFit.cover,
                                    // )
                                  ),
                                )
                              
                              ],
                            ),
                            sizedboxwidth(8.0),
                            Container(child: Row(children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                    // model.astrologerListdb[index]['name'].toString(),
                                    'Laptop',
                                    style: TextStyle(color: HexColor("#1A1D1F"),fontSize: 19,fontWeight: fontWeight600)),
                               SizedBox(height: 5),
                               Text(
                                    // model.astrologerListdb[index]['name'].toString(),
                                    'Code: #D-571224',
                                    style: TextStyle(color: HexColor("#6F767E"),fontSize: 17,fontWeight: fontWeight600)),
                               
                                
                               
                              ],
                            ),
                            sizedboxwidth(20.0),
                          btnview(),
                          ],),)
                          ],
                        ),
                        // Column(
                        //   crossAxisAlignment: CrossAxisAlignment.center,
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //      CircleAvatar(radius: 8,backgroundColor: Colors.red,
                        //        child: Text(recentChats[index].unreadCount!.toString(),textAlign: TextAlign.right,
                        //           style: textstylesubtitle2(context)!.copyWith(color: colorWhite,fontWeight: fontWeight900)),
                        //      ),
                        //     sizedboxheight(6.0),
                        //     Text(recentChats[index].time!,
                        //         style: textstylesubtitle1(context)),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                        ),
        
                  //           child: Container(
                  //             width: 300,
                  //               margin: EdgeInsets.all(20),
                  //             color: colorWhite,
                  //           child: Row(
                              
                              
                  //             mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //             children: [
                  //               Container(
                                  
                  //                 width: 80,
                  //                height: 80.0,
                  // decoration: BoxDecoration(
                  //     color: colorgrey,
                  //     image: DecorationImage(
                  //         image: ExactAssetImage(
                  //             "assets/images/ac.png"),
                  //         fit: BoxFit.cover))

                  //                  ),
                  //              Column(
                  //                 children: [
                  //                   Text(
                  //                     "Laptop",
                  //                     style: TextStyle(
                  //                       color: colorblack,
                  //                     ),
                  //                   ),
                  //                   Row(children: [
                  //                     Text(
                  //                     " Code: #D-571224",
                  //                     style: TextStyle(
                  //                         color: colorblack,
                  //                         fontSize: 16.0 ,),
                  //                   ),
                  //                   sizedboxwidth(30.0),
                  //                    btnview() ,

                  //                   ],)
                                    
                  //                 ],
                  //               ),
                  //               sizedboxheight(10.0),
                               
                  //               // Icon(
                  //               //   Icons.favorite_border,
                  //               //   color: colorpinklight,
                  //               // )
                             
                  //             ],
                  //           ),
                  //           ),
                          
                          ),
                    Positioned(
                      
                        top: 40,
                        left: 20,
                      child: Icon(Icons.arrow_back,size: 25,color: colorblack,)) ,     
              
                   Positioned(
                      
                        top: 300,
                        left: 30,
                        right: 30,
                      child: Icon(Icons.qr_code_scanner_rounded,color: colorWhite,size: 300,))      
              
           ],
        ),
      ),
   
      

    );
  }
}