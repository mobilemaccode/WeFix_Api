import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:service/common/const.dart';

import '../Auth/loginwidget.dart';
import '../BottamNavigation/PDF/pdf.dart';
import '../BottamNavigation/dashboard/AllProduct/product.dart';
import '../common/button.dart';
import '../common/textfield.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  get colorpinklight => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        color: HexColor("#F9F9F9"),
        child: Column(
          children: [
            Column(children: [
              SizedBox(height: 20),
              Stack(
              children: [
                Container(
                  color: colorWhite,
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  child: Notificationsearch(context),
                ),
              ],
            ),
           

                // loginsearch(context),
                // notification(context),
            ]
            ),
             SizedBox(height: 30),



            //  loginsearch(context),
            Container(
              margin: EdgeInsets.only(left: 20,right: 10, top: 10),
              
             child: Row(children: [
              Text("Notification",style: TextStyle(fontSize: 30,color: colorblack),),
             
             sizedboxwidth(110.0),
              btn5(),


              ],),
            ),
            SizedBox(height: 20),
            
               Container(
                    margin: EdgeInsets.only(bottom: 10, top: 10,right: 20,left: 20) ,
                    padding: EdgeInsets.all(10.0),
                   
                   
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: colorblack.withOpacity(0.1)),
                      boxShadow:boxShadowcontainer(),
                    ),
                
          child: Container(
             
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  // Get.to(() => Myleads());
                },
                child: Container(
                   decoration: BoxDecoration(
                        color: HexColor("#F7F7FF"),
                      borderRadius: BorderRadius.circular(15),
                     
                    ),
                
                    
                   
                
                      
                 
                 
                  height: 80.0,

                  
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/Beauty.png"),
                          sizedboxwidth(10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Lorem Ipsum is simply dummy text \nof the printing and typesetting",
                                style: TextStyle(
                                   color: HexColor("#1A1D1F"),fontSize: 15,
                                ),
                              ),
                              Row(children: [
                                    Text(
                                "Vendor Name",
                                style: TextStyle(
                                  color: HexColor("#6F767E"),
                                  fontSize: 17,fontWeight: fontWeight500
                                ),
                              ),
                               sizedboxwidth(50.0),
                              // btnview()

                              ],)
                              // Text(
                              //   "Vendor Name",
                              //   style: TextStyle(
                              //     color: colorgrey,
                              //   ),
                              // ),
                          
                              // btnMassg(),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
                InkWell(
                onTap: () {
                  // Get.to(() => Myleads());
                },
                child: Container(
                   decoration: BoxDecoration(
                        color: HexColor("#F7F7FF"),
                      borderRadius: BorderRadius.circular(15),
                     
                    ),
                
                    
                   
                
                      
                 
                 
                  height: 80.0,

                  
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/Beauty.png"),
                          sizedboxwidth(10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Lorem Ipsum is simply dummy text \nof the printing and typesetting",
                                style: TextStyle(
                                   color: HexColor("#1A1D1F"),fontSize: 15,
                                ),
                              ),
                              Row(children: [
                                    Text(
                                "Vendor Name",
                                style: TextStyle(
                                  color: HexColor("#6F767E"),
                                  fontSize: 17,fontWeight: fontWeight500
                                ),
                              ),
                               sizedboxwidth(50.0),
                              // btnview()

                              ],)
                              // Text(
                              //   "Vendor Name",
                              //   style: TextStyle(
                              //     color: colorgrey,
                              //   ),
                              // ),
                          
                              // btnMassg(),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            SizedBox(height: 10),
                  InkWell(
                onTap: () {
                  // Get.to(() => Myleads());
                },
                child: Container(
                   decoration: BoxDecoration(
                        color: HexColor("#F7F7FF"),
                      borderRadius: BorderRadius.circular(15),
                     
                    ),
                
                    
                   
                
                      
                 
                 
                  height: 80.0,

                  
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/Beauty.png"),
                          sizedboxwidth(10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Lorem Ipsum is simply dummy text \nof the printing and typesetting",
                                style: TextStyle(
                                   color: HexColor("#1A1D1F"),fontSize: 15,
                                ),
                              ),
                              Row(children: [
                                    Text(
                                "Vendor Name",
                                style: TextStyle(
                                  color: HexColor("#6F767E"),
                                  fontSize: 17,fontWeight: fontWeight500
                                ),
                              ),
                               sizedboxwidth(50.0),
                              // btnview()

                              ],)
                              // Text(
                              //   "Vendor Name",
                              //   style: TextStyle(
                              //     color: colorgrey,
                              //   ),
                              // ),
                          
                              // btnMassg(),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
               SizedBox(height: 10),
               InkWell(
                onTap: () {
                  // Get.to(() => Myleads());
                },
                child: Container(
                   decoration: BoxDecoration(
                        color: HexColor("#F7F7FF"),
                      borderRadius: BorderRadius.circular(15),
                     
                    ),
                
                    
                   
                
                      
                 
                 
                  height: 80.0,

                  
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/Beauty.png"),
                          sizedboxwidth(10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Lorem Ipsum is simply dummy text \nof the printing and typesetting",
                                style: TextStyle(
                                   color: HexColor("#1A1D1F"),fontSize: 15,
                                ),
                              ),
                              Row(children: [
                                    Text(
                                "Vendor Name",
                                style: TextStyle(
                                  color: HexColor("#6F767E"),
                                  fontSize: 17,fontWeight: fontWeight500
                                ),
                              ),
                               sizedboxwidth(50.0),
                              // btnview()

                              ],)
                              // Text(
                              //   "Vendor Name",
                              //   style: TextStyle(
                              //     color: colorgrey,
                              //   ),
                              // ),
                          
                              // btnMassg(),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
               SizedBox(height: 10),
               InkWell(
                onTap: () {
                  // Get.to(() => Myleads());
                },
                child: Container(
                   decoration: BoxDecoration(
                        color: HexColor("#F7F7FF"),
                      borderRadius: BorderRadius.circular(15),
                     
                    ),
                
                    
                   
                
                      
                 
                 
                  height: 80.0,

                  
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        
                        children: [
                          Image.asset("assets/images/Beauty.png"),
                          sizedboxwidth(10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Lorem Ipsum is simply dummy text \nof the printing and typesetting",
                                style: TextStyle(
                                   color: HexColor("#1A1D1F"),fontSize: 15,
                                ),
                              ),
                              Row(children: [
                                    Text(
                                "Vendor Name",
                                style: TextStyle(
                                  color: HexColor("#6F767E"),
                                  fontSize: 17,fontWeight: fontWeight500
                                ),
                              ),
                               sizedboxwidth(50.0),
                              // btnview()

                              ],)
                              // Text(
                              //   "Vendor Name",
                              //   style: TextStyle(
                              //     color: colorgrey,
                              //   ),
                              // ),
                          
                              // btnMassg(),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
               SizedBox(height: 10),
            ],
          ),
        )
               ),
          ],
        ),
     
      ),
    );
  }
}

Widget btn5() {
  return 
  Container(
    height: 35,
    width: 90,
    
    margin: const EdgeInsets.only(left: 10, right: 10,),
    decoration: BoxDecoration(
                  
                  border: Border.all(
                    color: HexColor("#FFFFFF"),
                    width: 0.65,
                  ),borderRadius:  BorderRadius.all(Radius.circular(15.0),)
                  ),
              //  decoration: BoxDecoration(
              //                   color: Colors.white,
                          
              //                   borderRadius:
              //                       BorderRadius.all(Radius.circular(15.0),)),
                                  
                    
    child: Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text("Recent",style: TextStyle(fontSize: 18,fontWeight: fontWeight600,color:HexColor("#6759FF"))),

      Icon(Icons.keyboard_arrow_down,size: 18,color: HexColor("#6759FF"),)
    ],),
 
  );
}




Widget btnview() {
  return Button(
      buttonName: "View",
      borderColor: HexColor("#F5F5F5"),
      btnHeight: 30.0,
      btnColor: HexColor("#6759FF"),
      textColor: colorWhite,
      btnfontsize: 16,
      
      
      btnWidth: 63.0,
      borderRadius: BorderRadius.circular(10.0),
      onPressed: () {
        // Get.to(() => ());
      });
}
Widget Notificationsearch(context) {
  return Padding(
    padding: EdgeInsets.only(right: 10, left: 10, bottom: 10),
    child: TextField(
      // controller: model.userIdController,
      // obscureText: true,
      decoration: InputDecoration(
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,

        filled: true, //<-- SEE HERE
        fillColor: HexColor("#F5F5F5"),
        hintStyle: TextStyle(
            fontSize: 17,
            fontWeight: fontWeight600,
            color: HexColor("#D1D3D4")),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),

        // labelText: 'Email',
        hintText: 'Search Notification',
        prefixIcon: Icon(Icons.arrow_back,color: colorblack,),
        suffixIcon: TextButton(
          onPressed: () {
            // model.toggle();
          },
          // icon: Icon(Icons.visibility, size: 20.0, color: model.isTapVissible ? colorredlightbtn :Colors.black45 ),

          child: Container(
            margin: EdgeInsets.only(left: 20),
            height: 35,
            width: 35,
            child: Image.asset("assets/icons/searchgroup.png"),
          ),
        ),
      ),
    ),
  );
}
