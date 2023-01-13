

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../common/button.dart';
import '../../common/const.dart';
import '../../common/textfield.dart';

class Filtterpage extends StatefulWidget {
  const Filtterpage({super.key});

  @override
  State<Filtterpage> createState() => _FiltterpageState();
}

class _FiltterpageState extends State<Filtterpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text(''),
      ),
     
      body: Container(
           color: HexColor("#F9F9F9"),
        child: Column(
          children: [
            Column(children: [
              SizedBox(height: 20),
            // Icon(Icons.arrow_back, size: 25),
            //  arrow(context),

                // loginsearch(context),
                // notification(context),
            ]
            ),
             SizedBox(height: 30),



            //  loginsearch(context),
            Container(
              margin: EdgeInsets.only(left: 30,right: 10,),
              
             child: Row(children: [
              
              Text("Filter",style: TextStyle(fontSize: 40,color: colorblack),),
             
          
              // btn5(),


              ],),
            ),
            SizedBox(height: 20),
          
            Stack(children: [
             Container(
                margin: EdgeInsets.only(left: 15,right: 20,),
                child: SingleChildScrollView(
                  // physics: AlwaysScrollableScrollPhysics(),
                  child: Container(
                 
                      decoration: BoxDecoration(
                          color: colorWhite,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      width: 500.0,
                      height: 650.0,

                      child: Column(
                        
                        children: [
                         
                          sizedboxheight(20.0),
                          InkWell(
                            onTap: () {
                              // Get.to(() => PackageDetailPage());
                            },
                            child:  Container(
        child: Container(
           margin: EdgeInsets.only(left: 10,right: 20,),
          
          child: Column(children: [
          SizedBox(height: 10),
          
          // Text("Category",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 10),

           filtter(context),
          SizedBox(height: 10),
          // Text("Date",style: TextStyle(fontSize: 20, color: colorblack)),
          SizedBox(height: 10),

          filtter1(context),
           SizedBox(height: 10),
          //  Text("Price",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
           filtter2(context),
           SizedBox(height: 190),
           fillterall(),
          //  btnnotyall(),



        ],)),
      )
      // // 

                           
                          
                          ),
                       
                          
                     
                        ],
                      )),
                ),
              ),
            ]),
          
          ],
        ),
     
      ),
    );
  }

}
Widget arrow(context) {
  return AllInputDesign(
    fillColor: HexColor("#F9F9F9"),
    prefixIcon: Icon(Icons.arrow_back, size: 25),
   
  );
}
Widget filtter(context) {
  return AllInputDesign(
    inputHeaderName: 'category',
    
  

    fillColor: HexColor("#F5F5F5"),
    hintText: 'Select category',
    

    suffixIcon: TextButton(
   
      onPressed: () {
        // model.toggle();
      },
      
      child: Icon(Icons.arrow_drop_down, size: 25 ,color: colorblack,),
    ),
  );
}
Widget filtter1(context) {
  return AllInputDesign(
   
  inputHeaderName: 'Date',
    fillColor: HexColor("#F5F5F5"),
    hintText: 'Select Date',
    

    suffixIcon: TextButton(
   
      onPressed: () {
        // model.toggle();
      },
      
      child: Icon(Icons.calendar_month, size: 25 ,color: colorblack,),
    ),
  );
}
Widget filtter2(context) {
  return AllInputDesign(
   
  inputHeaderName: 'Price',
    fillColor: HexColor("#F5F5F5"),
    hintText: 'Select Price',
    

    // suffixIcon: TextButton(
   
    //   onPressed: () {
    //     // model.toggle();
    //   },
      
    //   // child: Icon(Icons.arrow_drop_down, size: 35, color: colorblack,),
    // ),
 
  );
}
Widget fillterall() {
  return Button(
      buttonName: "Apply Now",
      borderColor: HexColor("#F5F5F5"),
      btnHeight: 55.0,
      btnColor: HexColor("#6759FF"),
      textColor: colorWhite,
      btnfontsize: 20,
      
      
      btnWidth: 163.0,
      borderRadius: BorderRadius.circular(10.0),
      onPressed: () {
        // Get.to(() => ());
      });
}
