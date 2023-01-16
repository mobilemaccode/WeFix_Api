// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../common/button.dart';
import '../../common/const.dart';
import '../../common/textfield.dart';
import 'AllProduct/product.dart';

Widget btn1() {
  return Button(
      buttonName: "View All",
      borderColor: HexColor("#D95771"),
      btnHeight: 40.0,
      btnWidth: 100.0,
      borderRadius: BorderRadius.circular(5.0),
      onPressed: () {
        // Get.to(() => CategoriesPage());
      });
}

Widget btn2() {
  return Button(
      buttonName: "Haldi",
      btnHeight: 30.0,
      btnWidth: 139.0,
      borderRadius: BorderRadius.circular(0.0),
      onPressed: () {
        // Get.to(() => ());
      });
}

Widget btn3() {
  return Button(
      buttonName: "Anchor",
      borderColor: HexColor("#D95771"),
      btnHeight: 30.0,
      btnWidth: 163.0,
      borderRadius: BorderRadius.circular(0.0),
      onPressed: () {
        // Get.to(() => ());
      });
}

Widget btn6() {
  return Button(
      buttonName: "See All  >",
      borderColor: HexColor("#EFEFEF"),
      btnHeight: 40.0,
      btnWidth: 97.0,
      btnColor: colorWhite,
      textColor: HexColor("#6F767E"),
      borderRadius: BorderRadius.circular(15.0),
      onPressed: () {
        Get.to(() => ProductPage());
      });
}

Widget btnviewd() {
  return Container(
    height: 35,
    width: 80,
    
    margin: const EdgeInsets.only(left: 10, right: 10,),
    decoration: BoxDecoration(
                  
                  border: Border.all(
                    color: HexColor("#EFEFEF"),
                    width: 0.65,
                  ),borderRadius:  BorderRadius.all(Radius.circular(15.0),)
                  ),
              //  decoration: BoxDecoration(
              //                   color: Colors.white,
                          
              //                   borderRadius:
              //                       BorderRadius.all(Radius.circular(15.0),)),
                                  
                    child:  InkWell(
                onTap: () {
                  Get.to(() => ProductPage());
                },
    child: Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text("See All",style: TextStyle(fontSize: 18,fontWeight: fontWeight600,color:HexColor("#6F767E"))),

      Icon(Icons.keyboard_arrow_right,size: 18,color: HexColor("#6F767E"),)
    ],),
              ),
  );
}

Widget btnLocation(context) {
  return Button(
      buttonName: "Enable Location",
      borderColor: HexColor("#D95771"),
      btnHeight: 45.0,
      btnWidth: deviceWidth(context, 0.9),
      borderRadius: BorderRadius.circular(20.0),
      onPressed: () {
        // Get.to(() => KnowMoreAboutFirstScreen());
      });
}
