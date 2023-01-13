import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:service/common/const.dart';

import '../BottamNavigation/dashboard/AllProduct/product.dart';
import '../common/button.dart';
import 'notificationPage.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        color: HexColor("#F9F9F9"),
        child: Column(
          children: [
            Column(children: [
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
              margin: EdgeInsets.only(left: 20,right: 10,),
              
             child: Row(children: [
              Text("Notification",style: TextStyle(fontSize: 30,color: colorblack,fontWeight: FontWeight.w600),),
             
             sizedboxwidth(120.0),
              btn5(),


              ],),
            ),
            SizedBox(height: 20),
          
            Stack(children: [
             Container(
                margin: EdgeInsets.only(left: 20,right: 20,),
                child: SingleChildScrollView(
                  // physics: AlwaysScrollableScrollPhysics(),
                  child: Container(
                 
                      decoration: BoxDecoration(
                          color: colorWhite,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      width: 550.0,
                      height: 600.0,

                      child: Column(
                        
                        children: [
                         
                          sizedboxheight(20.0),
                          InkWell(
                            onTap: () {
                              // Get.to(() => PackageDetailPage());
                            },
                            child:  Container(
        child: Center(child: Column(children: [
          SizedBox(height: 120),
           Container(
        margin: EdgeInsets.only(left: 10),
        height: 200,
        width: 200,
      child:Image.asset("assets/icons/noty.png"),
      ),
    

          // Icon(Icons.notifications,size: 200, color: HexColor("#6759FF"),),
          SizedBox(height: 30),
          Text("No Notifications!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(height: 10),
          Container(
           alignment: Alignment.center,
            child: Center(child: Text("You dont have any notification yet.",style: TextStyle(fontSize: 20, color: HexColor("#B0B0B0")),),),
          ),
         
          SizedBox(height: 5),
          Text(" Please place order",style: TextStyle(fontSize: 20, color: HexColor("#B0B0B0")),),
           SizedBox(height: 20),
               InkWell(
                                  onTap: () {
                                    // Get.to(() => NotificationPage());
                                  },
                                    child: btnnotyall(),
                                  // child: Image(image: AssetImage('assets/icons/bar.png' ,),
                             
                                    
                                  ),
                              
                                      
        



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
Widget btnnotyall() {
  return Button(
      buttonName: "View all Product",
      borderColor: HexColor("#F5F5F5"),
      btnHeight: 50.0,
      btnColor: HexColor("#6759FF"),
      textColor: colorWhite,
      btnfontsize: 17,
      
      
      btnWidth: 156.0,
      borderRadius: BorderRadius.circular(10.0),
      onPressed: () {
        Get.to(() => NotificationPage());
      });
}