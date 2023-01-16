import 'dart:ui';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:service/BottamNavigation/Serach/Searchpage.dart';
import 'package:service/BottamNavigation/dashboard/AllProduct/productlist.dart';
import 'package:service/common/const.dart';

import '../../../Notification/notificationPage.dart';
import '../../../common/button.dart';
import '../../PDF/pdf.dart';

class Vendorlist extends StatefulWidget {
  const Vendorlist({super.key});

  @override
  State<Vendorlist> createState() => _VendorlistState();
}

class _VendorlistState extends State<Vendorlist> {
  final List<String> itemList = [
    'History 1',
    'History 2',
    'History 3',
    'History 4',
  ];


  String selectValue = '';
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: HexColor("#F9F9F9"),
        // color: Colors.grey.withOpacity(0.5),
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: ExactAssetImage("assets/images/acpic.png"),
                          fit: BoxFit.cover)),
                  height: 250.0,
                  width: MediaQuery.of(context).size.width,
                ),
                Stack(children: [
                  Center(
                    child: Container(
                      
                      margin: EdgeInsets.only(top: 220, right: 30, left: 30),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Row(
                        children: [
                          sizedboxwidth(5.0),
                          Image.asset("assets/icons/tag.png"),
                          Text(
                              // model.astrologerListdb[index]['user_avability'].toString(),
                              ' Ac',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 25, fontWeight: fontWeight600)),
                        
                        ],
                      ),
                   
                           SizedBox(height: 15,),
                          
                           Row(
                            children: [
                              Icon(
                                Icons.circle,
                               size: 8,color: colorblack,
                              ),
                               sizedboxwidth(5.0),
                              Text("Air Conditioning services we provide ",style: TextStyle(color: HexColor("#6F767E"),fontSize: 17 ),),
                            ],
                          ),
                           SizedBox(height: 6,),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                               size: 8,color: colorblack,
                              ),
                               sizedboxwidth(5.0),
                              Text("Ac Installation & Replacement",style: TextStyle(color: HexColor("#6F767E"),fontSize: 17 ),),
                            ],
                          ),
                           SizedBox(height: 6,),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                              size: 8,color: colorblack,
                              ),
                               sizedboxwidth(5.0),
                              Text("AC Maintenance",style: TextStyle(color: HexColor("#6F767E"),fontSize: 17 ),),
                            ],
                          ),
                           SizedBox(height: 6,),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                size: 8,color: colorblack,
                              ),
                              sizedboxwidth(5.0),
                              Text("Ac Repaire",style: TextStyle(color: HexColor("#6F767E"),fontSize: 17 ),),
                            ],
                          ),
                          SizedBox(height: 6,),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                size: 8,color: colorblack,
                              ),
                               sizedboxwidth(5.0),
                              Text("Thermostates & Air Conditioner Units",style: TextStyle(color: HexColor("#6F767E"),fontSize: 17),),
                            ],
                          ),
                        
                        ],
                      ),
                   
                    ),
                  ),
                ]),
              ],
            ),
                Container(
              margin: EdgeInsets.symmetric(horizontal: 30,
              vertical: 10
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),

              ),

            child:  Image.asset("assets/images/Description.png"),

            ),
          
           
              
               Container(
                    margin: EdgeInsets.only(bottom: 10, top: 10,right: 20,left: 20) ,
                    padding: EdgeInsets.all(10.0),
                    width: 300,
                   
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: colorblack.withOpacity(0.1)),
                      boxShadow:boxShadowcontainer(),
                    ),
                
                   child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                        children: [
                          sizedboxwidth(5.0),
                          Image.asset("assets/icons/tag.png"),
                          sizedboxwidth(10.0),
                          Text(
                              // model.astrologerListdb[index]['user_avability'].toString(),
                              'Select Vendor',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: fontWeight600)),
                        ],
                      ),
                   
                       SizedBox(height: 20,),
                        // searchHistry(context),
                        productsearch(context),
                        SizedBox(height: 20,),


                    Container(

                        child:Row(
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
                                        Image(image: AssetImage('assets/images/place.png'), fit: BoxFit.contain),
      
                                    //     Image(
                                    //   image: AssetImage('assets/images/clip1.png'),
                                    //   fit: BoxFit.cover,
                                    // )
                                  ),
                                )
                              
                              ],
                            ),
                            sizedboxwidth(8.0),
                            Container(
                              child: Row(children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                    // model.astrologerListdb[index]['name'].toString(),
                                    'Vendor Name',
                                    style: TextStyle(fontSize: 18,color: HexColor("#1A1D1F"),fontWeight: fontWeight600)),
                                  SizedBox(height: 6,),
                                  Text(
                                        // model.astrologerListdb[index]['user_avability'].toString(),
                                        'Code: #D-571224',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 16,fontWeight: fontWeight500,color: HexColor("#6F767E"))),
                                      
                                   
                                
                              
                              ],
                            ),
                         
                         ],),)
                        ,    sizedboxwidth(90.0),
                        
                            Radio(value: 1, groupValue: 1, onChanged: (int? value) {  },)
                          ],
                        ),
                    ),
                     SizedBox(height: 5),
                    Divider(
            height: 2,
            thickness: 2,
              color: HexColor("#EFEFEF"),
          ),
                   SizedBox(height: 5),
                 Container(

                        child:Row(
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
                                        Image(image: AssetImage('assets/images/place.png'), fit: BoxFit.contain),
      
                                    //     Image(
                                    //   image: AssetImage('assets/images/clip1.png'),
                                    //   fit: BoxFit.cover,
                                    // )
                                  ),
                                )
                              
                              ],
                            ),
                            sizedboxwidth(8.0),
                            Container(
                              child: Row(children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                    // model.astrologerListdb[index]['name'].toString(),
                                    'Vendor Name',
                                    style: TextStyle(fontSize: 18,color: HexColor("#1A1D1F"),fontWeight: fontWeight600)),
                                  SizedBox(height: 6,),
                                  Text(
                                        // model.astrologerListdb[index]['user_avability'].toString(),
                                        'Code: #D-571224',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 16,fontWeight: fontWeight500,color: HexColor("#6F767E"))),
                                      
                                   
                                
                              
                              ],
                            ),
                         
                         ],),)
                        ,    sizedboxwidth(90.0),
                            Radio(value: 1, groupValue: 1, onChanged: (int? value) {  },)
                          ],
                        ),
                    ),
                     SizedBox(height: 5),
                    Divider(
            height: 2,
            thickness: 2,
            
            
            
            
            color: HexColor("#EFEFEF"),
          ),
                   SizedBox(height: 5),
                 Container(

                        child:Row(
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
                                        Image(image: AssetImage('assets/images/place.png'), fit: BoxFit.contain),
      
                                    //     Image(
                                    //   image: AssetImage('assets/images/clip1.png'),
                                    //   fit: BoxFit.cover,
                                    // )
                                  ),
                                )
                              
                              ],
                            ),
                            sizedboxwidth(8.0),
                            Container(
                              child: Row(children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                    // model.astrologerListdb[index]['name'].toString(),
                                    'Vendor Name',
                                    style: TextStyle(fontSize: 18,color: HexColor("#1A1D1F"),fontWeight: fontWeight600)),
                                  SizedBox(height: 6,),
                                  Text(
                                        // model.astrologerListdb[index]['user_avability'].toString(),
                                        'Code: #D-571224',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 16,fontWeight: fontWeight500,color: HexColor("#6F767E"))),
                                      
                                   
                                
                              
                              ],
                            ),
                         
                         ],),)
                        ,    sizedboxwidth(90.0),
                            Radio(value: 1, groupValue: 1, onChanged: (int? value) {  },)
                          ],
                        ),
                    ),
                 
                      ],
                    ),
                 
                  ),
               
          
            // 
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30,
              vertical: 10
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),

              ),

            child: vendorlist(),

            ),
          
          ],
        ),
      ),
    );
  }
}
Widget vendorlist() {
  return Button(
      buttonName: "Submit",
      // borderColor: HexColor("#F5F5F5"),
      btnHeight: 45.0,
      btnColor: HexColor("#EFEFEF"),
      textColor: colorblack,
      btnfontsize: 16,
      
      
      btnWidth: 163.0,
      borderRadius: BorderRadius.circular(10.0),
      onPressed: () {
        // Get.to(() => Vendorlist());
      });
}

Widget productsearch(context) {
  return Padding(
    padding: EdgeInsets.only(right: 10, left: 10,bottom: 10),
    child: TextField(
      // controller: model.userIdController,
      // obscureText: true,
      decoration: InputDecoration(
       enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: HexColor("#EFEFEF"), width: 1),
        ),

        filled: true, //<-- SEE HERE
        fillColor: HexColor("#F5F5F5"),
        hintStyle: TextStyle(
            fontSize: 17,
            fontWeight: fontWeight600,
            color: HexColor("#D1D3D4")),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
        ),

        // labelText: 'Email',
        hintText: 'Search Proposal',
   
        suffixIcon: TextButton(
   
      onPressed: () {
        // model.toggle();
      },
      // icon: Icon(Icons.visibility, size: 20.0, color: model.isTapVissible ? colorredlightbtn :Colors.black45 ),
    
      child:Container(
        
        margin: EdgeInsets.only(left: 20),
        height: 35,
        width: 35,
        
      child:Image.asset("assets/icons/searchgroup.png"),
      ),
    
    ),
  
      ),
    ),
  );
}

