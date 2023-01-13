
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:service/common/const.dart';
import 'package:service/common/const.dart';

import 'Auth/LoginModelPage.dart';
import 'Auth/Loginpage.dart';
import 'BottamNavigation/PDF/pdf.dart';
import 'BottamNavigation/bottom_navigationmodelpage.dart';
import 'BottamNavigation/dashboard/AllProduct/productlist.dart';
import 'BottamNavigation/dashboard/AllProduct/vendorlist.dart';
import 'BottamNavigation/fillter/filterpage.dart';
import 'Notification/NotificationScreen.dart';
import 'Notification/notificationPage.dart';
import 'QRCode/rrscan.dart';
import 'common/const.dart';
import 'common/const.dart';

void main(List<String> args) {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: ((context) => LoginModelPage())),
    // ChangeNotifierProvider(create: ((context) => SignUpModelpage())),
    ChangeNotifierProvider(create: ((context) => BottomnavbarModelPage())),
    // ChangeNotifierProvider(create: ((context) => ForgetPassModelPage())),
    // ChangeNotifierProvider(create: ((context) => NewPassModelPage())),
  ], child: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'services',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.blue,
          inputDecorationTheme: const InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width:1),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: Color.fromARGB(255, 90, 37, 248)),
      ),
    ),
        // focusColor: HexColor("#6759FF"),
     
    
        // primarySwatch: Colors.purple,
          // unselectedWidgetColor: colorOrange,
          scaffoldBackgroundColor: colorWhite,
         
      //  primaryColor: colorreddark,
        // scaffoldBackgroundColor: Colors.white,
        primaryTextTheme: TextTheme(headline2: TextStyle(color: Colors.black,)),
        textTheme: TextTheme(
          headline1: TextStyle(
              color: Colors.black,
              fontSize: 28,
              letterSpacing: 0.5,
              ),
          headline2: TextStyle(
            color: Colors.black,
            fontSize: 25,
            letterSpacing: 0.5,
          
          ),
          headline3: TextStyle(
            color: Colors.black,
            fontSize:22,
            letterSpacing: 0.5,
           
            overflow: TextOverflow.ellipsis,
          ),
          headline6: TextStyle(
            color: Colors.black,
            fontSize: 17,
            letterSpacing: 0.5,
            
          ),
          subtitle1: TextStyle(
            color: Colors.black,
            letterSpacing: 0.5,
            fontSize:15,
          ),
          subtitle2: TextStyle(
            color: Colors.grey,
            letterSpacing: 0.5,
            fontSize: 14,
          ),
        ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black, size: 27),
          elevation: 0,
          // textTheme: TextTheme(
          //     bodyText1: TextStyle(color: colorblack, fontSize: 50))
        ),
      ),
      
      initialRoute: '/',
      routes: {
        '/': (context) => Loginpage(),
        // '/': (context) => NotificationPage(),
      },
    );
  }
}
