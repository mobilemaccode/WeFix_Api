import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:service/Auth/loginwidget.dart';
import 'package:service/common/const.dart';

import '../../common/textfield.dart';
import '../dashboard/AllProduct/product.dart';
import '../fillter/filterpage.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({super.key});

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       body: Container(
         
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 1000,
          // height: MediaQuery.of(context).size.height,
          color: HexColor("#F9F9F9"),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: colorWhite,
                margin: EdgeInsets.only(left: 10,right: 20, top: 30,bottom: 10),
                height: 60,
                child: Row(children: [
                  Expanded(child:  searchpages(context),),
                  sizedboxwidth(10.0),
              
                              
                   InkWell(
                  onTap: () {
                                Get.to(() => Filtterpage());
                              },
                   child: Image.asset("assets/icons/filtter.png")
                   ),
                
                
                ],),
                
              ),
            
             SizedBox(height: 30,),
     Container(
        height: 600,
                    margin: EdgeInsets.only(bottom: 10, top: 10,right: 20,left: 20) ,
                    padding: EdgeInsets.all(10.0),
                   
                   
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: colorblack.withOpacity(0.1)),
                      boxShadow:boxShadowcontainer(),
                    ),

      child:Container(
        
        child: Center(child: Column(children: [
          SizedBox(height: 160),
           Container(
            
        margin: EdgeInsets.only(left: 10),
     
        width: 200,
      child:Image.asset("assets/icons/serchbbar.png"),
      ),
    
          // Icon(Icons.search,size: 200, color: HexColor("#6759FF"),),
          SizedBox(height: 20),
          Text("No Search!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          SizedBox(height: 15),
          Text("You dont have any notification yet.",style: TextStyle(fontSize: 20,fontWeight:fontWeight500,color: HexColor("#B0B0B0")),),
          SizedBox(height: 4),
          Text("Please place order",style: TextStyle(fontSize: 20,fontWeight: fontWeight500,color: HexColor("#B0B0B0")),),
         
        


        ],)),
      )
     
     ),

     
            
            ],
          ),
        ),
        
      
      ),

    
    );
  }
}

Widget searchpages(context) {
  return Padding(
    padding: EdgeInsets.only(right: 10, left: 10, bottom: 10),
    child: TextField(
      // controller: model.userIdController,
      // obscureText: true,
      decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: HexColor("#EFEFEF"),width: 1),),

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
        hintText: 'Search Product',
        // prefixIcon: Icon(Icons.arrow_back,color: colorblack,),
        suffixIcon: TextButton(
          onPressed: () {
            // model.toggle();
          },
          // icon: Icon(Icons.visibility, size: 20.0, color: model.isTapVissible ? colorredlightbtn :Colors.black45 ),

          child: Container(
            margin: EdgeInsets.only(left: 20),
            height: 35,
            width: 35,
            child:Icon(Icons.search,size: 25,color: colorblack,)
          ),
        ),
      ),
    ),
  );
}
