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

Widget loginsearch1111(context) {
  return Padding(
    padding: EdgeInsets.only(right: 10, left: 10),
    child: TextField(
      // controller: model.userIdController,
      // obscureText: true,
      decoration: InputDecoration(
         
        enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: HexColor("#EFEFEF"),width: 1),
    ),
    
        
        filled: true, //<-- SEE HERE
        fillColor: HexColor("#F5F5F5"),
        hintStyle: TextStyle(
            fontSize: 17,
            fontWeight: fontWeight500,
            color: HexColor("#D1D3D4")),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),

        // labelText: 'Email',
        hintText: 'See All ',
        suffixIcon: Icon(Icons.keyboard_arrow_right_outlined,size: 15,)
    //      suffixIcon: TextButton(
   
    //   onPressed: () {
    //     // model.toggle();
    //   },
    //   // icon: Icon(Icons.visibility, size: 20.0, color: model.isTapVissible ? colorredlightbtn :Colors.black45 ),
    
    //   child:Container(
        
    //     margin: EdgeInsets.only(left: 20),
    //     height: 35,
    //     width: 35,
        
    //   child:Image.asset("assets/icons/searchgroup.png"),
    //   ),
    
    // ),
  
        
      ),
    ),
  );
}