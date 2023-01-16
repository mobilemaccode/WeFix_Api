

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
            Column( 
            

              children: [
            
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
              
             child: Row(
              children: [
                  Image.asset("assets/icons/tag.png", fit: BoxFit.contain),
                  sizedboxwidth(10.0),
              
              Text("Filter",style: TextStyle(fontSize: 35,color:HexColor("#1A1D1F"),fontWeight: fontWeight600),),
             
          
              // btn5(),


              ],),
            ),
            SizedBox(height: 20),

            Container(
        
             
              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                           
              
               margin: EdgeInsets.only(left: 25,right: 15,top: 15),
              child: Column(
                
                children: [
                  
                  Container(
                        margin: EdgeInsets.only(left: 5,right: 15,
                        top: 10),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 15,right: 15,
                        ),

                          child: Column(children: [

                  Text("Category",
   
               style: TextStyle(fontSize: 18,fontWeight: fontWeight600,color: HexColor("#1A1D1F")),),
              
                          ],),
                        ),
                          
              
               SizedBox(height: 5,),

                filtter(context),

           ],)),
           
             SizedBox(height: 10),
              Container(
                        margin: EdgeInsets.only(left: 5,right: 15,
                        top: 10),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                               Container(
                            margin: EdgeInsets.only(left: 15,right: 15,
                        ),

                          child: Column(children: [

                  Text("Date",
   
               style: TextStyle(fontSize: 18,fontWeight: fontWeight600,color: HexColor("#1A1D1F")),),
              
                          ],),
                        ),
                          
              
              //  Text("Date",style: TextStyle(fontSize: 17,fontWeight:fontWeight600,color: HexColor("#1A1D1F")),),
               SizedBox(height: 10,),
                filtter1(context),

           ],)),
           
            Container(
                        margin: EdgeInsets.only(left: 5,right: 15,
                        top: 10),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      
                      children: [
                             Container(
                            margin: EdgeInsets.only(left: 15,right: 15,
                        ),

                          child: Column(children: [

                  Text("Price",
   
               style: TextStyle(fontSize: 18,fontWeight: fontWeight600,color: HexColor("#1A1D1F")),),
              
                          ],),
                        ),
                          
              
                       
              //  Text("Price",textAlign: TextAlign.left,style: TextStyle(fontSize: 17,fontWeight: fontWeight600,color: HexColor("#1A1D1F")),),
               SizedBox(height: 10,),
                filtter2(context),

           ],)),
           
              Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 150),
            child: fillterall(),
      ),
      
      SizedBox(height: 10,),
     ],),),
     SizedBox(height: 20,),


      //              Container(
      //   child: Container(
      //      margin: EdgeInsets.only(left: 10,right: 20,),
          
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       children: [
      
      //     Text("Category",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
      //      SizedBox(height: 10),

      //      filtter(context),
      //     SizedBox(height: 10),
      //      Text("Date",style: TextStyle(fontSize: 20, color: colorblack)),
      //     SizedBox(height: 10),

      //     filtter1(context),
      //      SizedBox(height: 10),
      //      Text("Price",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      //      filtter2(context),
      //      SizedBox(height: 190),
      //      fillterall(),
      //     //  btnnotyall(),



      //   ],)),
      // )
   

                        
          
        
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
   return Container(
    height: 50,
 
    // color: HexColor("#6F767E"),
    
    margin: const EdgeInsets.only(left: 15, right: 15,),
    decoration: BoxDecoration(
                    color: HexColor("#F5F5F5"),
                  border: Border.all(
                    color: HexColor("#F5F5F5"),
                    width: 0.65,
                  ),borderRadius:  BorderRadius.all(Radius.circular(10.0),)
                  ),
                        
                
    child: Row(
      children: [
          sizedboxwidth(20.0),
      Text("Select category",style: TextStyle(fontSize: 20,fontWeight: fontWeight600,color:HexColor("#D1D3D4"))),
      sizedboxwidth(110.0),
      Icon(Icons.keyboard_arrow_down,size: 25,color: HexColor("#D1D3D4"),)
    ],),
      
  );


}
Widget filtter1(context) {
   return Container(
    height: 50,
 
    // color: HexColor("#6F767E"),
    
    margin: const EdgeInsets.only(left: 15, right: 15,),
    decoration: BoxDecoration(
                    color: HexColor("#F5F5F5"),
                  border: Border.all(
                    color: HexColor("#F5F5F5"),
                    width: 0.65,
                  ),borderRadius:  BorderRadius.all(Radius.circular(10.0),)
                  ),
                        
                
    child: Row(
      children: [
         sizedboxwidth(20.0),
      Text("Select Date",style: TextStyle(fontSize: 20,fontWeight: fontWeight600,color:HexColor("#D1D3D4"))),
           sizedboxwidth(140.0),
      Icon(Icons.calendar_month,size: 25,color: HexColor("#D1D3D4"),)
    ],),
      
  );


}
Widget filtter2(context) {
 return Container(
    height: 50,
 
    // color: HexColor("#6F767E"),
    
    margin: const EdgeInsets.only(left: 15, right: 15,),
    decoration: BoxDecoration(
                    color: HexColor("#F5F5F5"),
                  border: Border.all(
                    color: HexColor("#F5F5F5"),
                    width: 0.65,
                  ),borderRadius:  BorderRadius.all(Radius.circular(10.0),)
                  ),
                        
                
    child: Row(
      children: [
         sizedboxwidth(20.0),
      Text("Select Price",style: TextStyle(fontSize: 20,fontWeight: fontWeight600,color:HexColor("#D1D3D4"))),
        
      // Icon(Icons.keyboard_arrow_down,size: 25,color: HexColor("#D1D3D4"),)
    ],),
      
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
