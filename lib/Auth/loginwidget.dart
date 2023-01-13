import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

import '../BottamNavigation/bottom_navigationpage.dart';
import '../common/button.dart';
import '../common/const.dart';
import 'LoginModelPage.dart';

Widget loginChildrens(context) {
  return Form(
    child: SingleChildScrollView(
      // physics: NeverScrollableScrollPhysics(),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Consumer<LoginModelPage>(builder: (context, model, _) {
        return Column(
          children: [
            SizedBox(height: 100),
            sininwithAccountwel(context, "Sign in"),
            SizedBox(height: 22),
            textemail(context, "E-mail"),
            SizedBox(height: 5),
            loginemail(),
            SizedBox(height: 25),
            textpass(context, "Password"),
            SizedBox(height: 5),
            loginPassword(context, model),
            SizedBox(height: 30),
            loginBtn(context),

            // forgetpassword(context),

            // sininwithAccount(context, "Or sign in with "),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     // googleboxbtn2(context),
            //     sizedboxwidth(15.0),
            //     // fbboxbtn1(),
            //   ],
            // ),
          ],
        );
      }),
    ),
  );
}

Widget loginemail() {
  return Padding(
    padding: EdgeInsets.only(right: 15, left: 15),
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
            fontWeight: fontWeight600,
            color: HexColor("#D1D3D4")),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),

        // labelText: 'Email',
        hintText: 'Enter Your Email',
      ),
    ),
  );
}

Widget sininwithAccountwel(context, leadingtext) {
  return Row(
    children: [
      // dividerHorizontal(context, 0.2, 1.1),
      Padding(
        padding: const EdgeInsets.only(left: 15, right: 45),
        child: Text(leadingtext, style: TextStyle(fontSize: 40)),
      ),
    ],
  );
}

Widget textemail(context, leadingtext) {
  return Row(
    children: [
      // dividerHorizontal(context, 0.2, 1.1),
      Padding(
        padding: const EdgeInsets.only(left: 15, right: 45),
        child: Text(leadingtext,
            style: TextStyle(
                color: HexColor("#1A1D1F"),
                fontSize: 18,
                fontWeight: fontWeight600)),
      ),
    ],
  );
}

Widget textpass(context, leadingtext) {
  return Row(
    children: [
      // dividerHorizontal(context, 0.2, 1.1),
      Padding(
        padding: const EdgeInsets.only(left: 15, right: 45),
        child: Text(leadingtext,
            style: TextStyle(
                color: HexColor("#1A1D1F"),
                fontSize: 18,
                fontWeight: fontWeight600)),
      ),
    ],
  );
}


Widget loginPassword(context, model) {
  return Padding(
    padding: EdgeInsets.only(right: 15, left: 15),
    child:TextField(
      // controller: model.userIdController,
      // obscureText: true,
      decoration: InputDecoration(
        // focusedBorder: HexColor("#6759FF"),
        focusColor: HexColor("#6759FF"),
        enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: HexColor("#EFEFEF"),width: 1 ,),
    ),
        

        filled: true, //<-- SEE HERE
        fillColor: HexColor("#F5F5F5"),
        hintStyle: TextStyle(
            fontSize: 17,
            fontWeight: fontWeight600,
            color: HexColor("#D1D3D4")),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
        ),

        // labelText: 'Email',
        hintText: 'Enter Your Password',
      ),
    
    ),
 
  );
}


Widget loginBtn(context) {
  return Button(
    buttonName: 'Sign in',
    btnfontsize: 24.0,
    btnHeight: 55.0,
    btnWidth: 360.0,
    textColor: Colors.white,
    // btnColor: Colors.blueAccent,
    btnColor: HexColor('#6759FF'),
    borderColor: HexColor('#6759FF'),
    onPressed: () {
      Get.to(() => BottomNavBarPage());
    },
  );
}

// Widget Date() {
//   return AllInputDesign(
//     inputHeaderName: 'Date',
//     key: Key("Date"),

//     hintText: 'abshrivastava@gmail.com',
//     hintTextStyleColor: HexColor("#2D4379"),
//     // controller: model.loginEmail,
//     // textInputAction: TextInputAction.next,
//     // prefixIcon: Image(image: AssetImage('assets/icons/email.png')),
//   );
// }

Widget notfyBtn(context) {
  return Button(
    buttonName: 'Recent ',
    btnfontsize: 24.0,
    btnHeight: 55.0,
    btnWidth: 360.0,
    textColor: Colors.white,
    // btnColor: Colors.blueAccent,
    btnColor: HexColor('#6759FF'),
    borderColor: HexColor('#6759FF'),
    onPressed: () {
      // Get.to(() =>BottomNavBarPage());
    },
  );
}
