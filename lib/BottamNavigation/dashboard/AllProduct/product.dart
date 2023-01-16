import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:service/BottamNavigation/dashboard/AllProduct/productlist.dart';
import 'package:service/common/const.dart';
import 'package:service/common/textfield.dart';

import '../dashboard_widget_page.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      body: SingleChildScrollView(
        child: Container(
          color: HexColor("#F9F9F9"),
          width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          // color: colorWhite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              Container(
                color: colorWhite,
             
             child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: productsearch(context),
              ),
              ),
              //
              SizedBox(height: 20,),
                Container(
     decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                           
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
                                    " All Products",
                                    style: TextStyle(
                                      color: colorblack,
                                      fontSize: 25.0,fontWeight:FontWeight.bold,
                                    ),
                                  ),
                               ],),
                                ),
                              ),
                              // btnviewd()
                 
                           
                           
                            
                          ]),
                      
                    ],
                  ),
                ),
               Container(

                margin: const EdgeInsets.only(left: 10, right: 10,top: 15 ),
               decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(19.0))),
                           
                height: 750,
                child: GridView.builder(
                  itemCount: 8,
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing:0.5,
                      mainAxisSpacing: 0.5),
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                           
                                  

                                    child:Column(children: [
                                      SizedBox(
                                    width: 145,
                                    height: 154,

                                   
                                    child:Image(
                                            image: AssetImage(
                                                'assets/images/phone.png'),
                                            fit: BoxFit.cover),

                                    //     Image(
                                    //   image: AssetImage('assets/images/clip1.png'),
                                    //   fit: BoxFit.cover,
                                    // )
                                  ),

                                 
                                 SizedBox(height: 4,),
                                  Text(
                                    "Mobile ",
                                    style: TextStyle(
                                      color: HexColor("#252843"),
                                      fontSize: 20.0,fontWeight: fontWeight600
                                    ),
                                  ),
                                     SizedBox(height: 5,),
                                 
                                  ],)),

                                
                             
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
            
             

              ],),),
              

            //   Container(
            
            //    margin: EdgeInsets.only(left: 15,right: 15,),
            //        decoration: BoxDecoration(
            //           color: colorWhite,
            //           borderRadius: BorderRadius.circular(15),
            //           border: Border.all(color: colorblack.withOpacity(0.1)),
            //           boxShadow:boxShadowcontainer(),
            //         ),
                

            //     child: Column(children: [
            //   Container(
            //     margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
            //     width: MediaQuery.of(context).size.width,
            //     color: colorWhite,
            //     child: Column(
            //       children: [
            //          Row(
            //   children: [
                
            //     Image.asset("assets/icons/tag.png"),
            //     sizedboxwidth(10.0),
            //     Text(
            //         // model.astrologerListdb[index]['user_avability'].toString(),
            //         'All Product',
            //         overflow: TextOverflow.ellipsis,
            //         style: TextStyle(fontSize: 25, fontWeight: fontWeight600)),
            //   ],
            // ),

           
            //       ],
            //     ),
            //   ),

            //   Container(

            //     margin: const EdgeInsets.only(left: 15, right: 10, top: 25),
            //     color: colorWhite,
            //     height: 670,
            //     child: GridView.builder(
            //       itemCount: 8,
            //       scrollDirection: Axis.horizontal,
            //       // physics: AlwaysScrollableScrollPhysics(),
            //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //           crossAxisCount: 4,
            //           crossAxisSpacing: 2.0,
            //           mainAxisSpacing: 4.0),
            //       itemBuilder: (BuildContext context, int index) {
                    
            //         return Container(
            //           child: Column(
            //             children: [
            //               Container(
            //                 child: InkWell(
            //                   onTap: () {
            //                     Get.to(() => ProductDetails());
            //                   },
            //                   child: Column(
            //                     children: [
            //                       SizedBox(
            //                         width: 159,
            //                         height: 138,

            //                         child:
            //                             //  model.astrologerListdb[index]['profile_image'] != null
            //                             //     ? Image.network(
            //                             //         model.astrologerListdb[index]['image_url'].toString(),
            //                             //         fit: BoxFit.cover,
            //                             //         errorBuilder: (context, exception, stackTrack) =>Center(child: Text('Not \n found',textAlign: TextAlign.center,style: TextStyle(fontSize: 10),)),
            //                             //       )
            //                             //     :
            //                             Image(
            //                                 image: AssetImage(
            //                                     'assets/images/phone.png'),
            //                                 fit: BoxFit.contain),

            //                         //     Image(
            //                         //   image: AssetImage('assets/images/clip1.png'),
            //                         //   fit: BoxFit.cover,
            //                         // )
            //                       ),

            //                       // Image.asset(
            //                       //   "assets/images/phone.png",
            //                       //   fit: BoxFit.cover,
            //                       // ),
                                
            //                   SizedBox(height: 4,),
            //                       Text(
            //                         "Mobile",
            //                         style: TextStyle(
            //                           color: HexColor("#252843"),
            //                           fontSize: 20.0,fontWeight: fontWeight600
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         );
                 
            //       },
            //     ),
            //   ),
            
            // ],),),
           
            ],
          ),
        ),
      ),
    );
  }
}

Widget loginsearch(context) {
  return AllInputDesign(
    // key: Key("search11"),

    fillColor: HexColor("#F2F2F2"),
    hintText: 'Search Product',

    // controller: model.loginPassword,
    // onEditingComplete: ()=>TextInput.finishAutofillContext(),
    prefixIcon: Icon(Icons.arrow_back, size: 25),
    suffixIcon: TextButton(
      onPressed: () {
        // model.toggle();
      },
      // icon: Icon(Icons.visibility, size: 20.0, color: model.isTapVissible ? colorredlightbtn :Colors.black45 ),

      child: Container(
        margin: EdgeInsets.only(left: 20),
        height: 40,
        width: 40,
        child: Image.asset("assets/icons/searchgroup.png"),
      ),
    ),
  );
}

Widget loginsearch1(context) {
  return Padding(
    padding: EdgeInsets.only(right: 10, left: 10),
    child: TextField(
      
      // controller: model.use
      // rIdController,
      // obscureText: true,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: HexColor("#EFEFEF"), width: 1),
        ),

        filled: true, //<-- SEE HERE
        fillColor: HexColor("#F5F5F5"),
        hintStyle: TextStyle(
            fontSize: 17,
            fontWeight: fontWeight500,
            color: HexColor("#D1D3D4")),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),

        // labelText: 'Email',
        hintText: 'Search what you need...',
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
Widget productsearch(context) {
  return Padding(
    padding: EdgeInsets.only(right: 10, left: 10),
    child: TextField(
      
      // controller: model.use
      // rIdController,
      // obscureText: true,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: HexColor("#EFEFEF"), width: 1),
        ),

        filled: true, //<-- SEE HERE
        fillColor: HexColor("#F5F5F5"),
        hintStyle: TextStyle(
            fontSize: 17,
            fontWeight: fontWeight500,
            color: HexColor("#D1D3D4")),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),

        // labelText: 'Email',
        hintText: 'Search Product',
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
