import 'dart:math';


import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:service/BottamNavigation/dashboard/AllProduct/vendorlist.dart';
import 'package:service/common/const.dart';

import '../../../common/button.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
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
                      height: 430.0,
                      margin: EdgeInsets.only(top: 200, right: 30, left: 30),

                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      
                      child: Column(
                       
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Row(
                        children: [
                          sizedboxwidth(5.0),
                          Image.asset("assets/icons/tag.png", fit: BoxFit.contain),



                          Text(
                              // model.astrologerListdb[index]['user_avability'].toString(),
                              ' Ac',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 22, fontWeight: fontWeight600)),
                        
                        ],
                      ),
                   SizedBox(height: 15,),
                  //  Text(""),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                size: 8,color: colorblack,
                              ),
                               sizedboxwidth(5.0),
                              Text("Air Conditioning services we provide",style: TextStyle(color: HexColor("#6F767E"),fontSize: 17,fontWeight: fontWeight500 ),),
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
                              Text("Ac Installation & Replacement",style: TextStyle(color: HexColor("#6F767E"),fontSize: 17 ,fontWeight: fontWeight500 ),),
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
                              Text("AC Maintenance",style: TextStyle(color: HexColor("#6F767E"),fontSize: 17,fontWeight: fontWeight500  ),),
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
                              Text("Ac Repaire",style: TextStyle(color: HexColor("#6F767E"),fontSize: 17,fontWeight: fontWeight500  ),),
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
                              Text("Thermostat & Air Conditioner",style: TextStyle(color: HexColor("#6F767E"),fontSize: 17,fontWeight: fontWeight500  ),),
                            ],
                          ),
                           SizedBox(height: 10,),
                          Text(
                              'AC Installation & Repair service provider company, Our Fast Service Center reach your home within 3 hours and give you best ac service in your doorstep. Call our expert to complaint your query. AC Installation & Repair service provider company, Our Fast Service Center reach your home within 3 hours and give you best ac service in your doorstep. Call our expert to complaint your query.AC Installation & Repair service provider company, Our Fast Service Center reach your home within 3 hours and give you best ac service in your doorstep. Call our expert to complaint your query. AC Installation & Repair service provider company, Our Fast Service Center reach your home within 3 hours and give you best ac service in your doorstep. Call our expert to complaint your query.',style: TextStyle(color: HexColor("#6F767E"),fontSize: 15,fontWeight: fontWeight500 ),)
                        
                        
                        
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

              height: 60,
              child: DropdownButtonFormField2(


                decoration: InputDecoration(
                  //Add isDense true and zero Padding.
                  //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                  isDense: true,
                  contentPadding: EdgeInsets.only(left: -10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //Add more decoration as you want here
                  //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                ),
                isExpanded: true,
                hint: const Text(
                  'History',
                  style: TextStyle(fontSize: 14),
                ),
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black45,
                ),
                iconSize: 30,
                buttonHeight: 60,
                buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                items: itemList
                    .map((item) =>
                    DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ))
                    .toList(),
                validator: (value) {

                },
                onChanged: (value) {
                  selectValue = value.toString();
                  print(selectValue);
                  //Do something when changing the item if you want.
                },
                onSaved: (value) {
                  selectValue = value.toString();
                  print(selectValue);
                },
              ),
           
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
                                        Image(image: AssetImage('assets/images/frame.png'), fit: BoxFit.contain),
      
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
                                        '8:00-9:00 AM,  09 Dec',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 16,fontWeight: fontWeight500,color: HexColor("#6F767E"))),
                                      
                                   SizedBox(height: 3),
                                         Text(
                                        // model.astrologerListdb[index]['user_avability'].toString(),
                                        'Air conditioning services we provide include',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 14,fontWeight: fontWeight400)),
                                
                              
                              ],
                            ),
                         
                         ],),)
                        ,   
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
                                        Image(image: AssetImage('assets/images/frame.png'), fit: BoxFit.contain),
      
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
                                        '8:00-9:00 AM,  09 Dec',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 16,fontWeight: fontWeight500,color: HexColor("#6F767E"))),
                                         SizedBox(height: 3),
                                         Text(
                                        // model.astrologerListdb[index]['user_avability'].toString(),
                                        'Air conditioning services we provide include',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 12,fontWeight: fontWeight600)),
                                   
                                
                              
                              ],
                            ),
                         
                         ],),)
                        ,  
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
                                        Image(image: AssetImage('assets/images/frame.png'), fit: BoxFit.contain),
      
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
                                        '8:00-9:00 AM,  09 Dec',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 16,fontWeight: fontWeight500,color: HexColor("#6F767E"))),
                                      SizedBox(height: 3),
                                    Text(
                                        // model.astrologerListdb[index]['user_avability'].toString(),
                                        'Air conditioning services we provide include',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 12,fontWeight: fontWeight600)),
                                
                              
                              ],
                            ),
                         
                         ],),)
                        ,  
                          ],
                        ),
                    ),
                 
                      ],
                    ),
                 
                  ),
               
          
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30,
              vertical: 10
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),

              ),

            child:  productll(),

            ),
          
          ],
        ),
      ),
    );
  }
}
Widget productll() {
  return Button(
      buttonName: "Send Request",
      borderColor: HexColor("#F5F5F5"),
      btnHeight: 65.0,
      btnColor: HexColor("#6759FF"),
      textColor: colorWhite,
      btnfontsize: 20,
      
      
      btnWidth: 163.0,
      borderRadius: BorderRadius.circular(10.0),
      onPressed: () {
        Get.to(() => Vendorlist());
      });
}
