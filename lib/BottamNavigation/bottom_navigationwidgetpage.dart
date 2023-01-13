// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:service/common/const.dart';

BottomNavigationBar bottomNavBarPagewidget(context, model) {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    backgroundColor: colorWhite,
    selectedItemColor: colorpinklight,
    unselectedItemColor: colorblack,
    showUnselectedLabels: true,
    selectedFontSize: 15,
    unselectedFontSize: 13,
   

    selectedIconTheme: IconThemeData(color: colorpinklight, size: 10),
    // showSelectedLabels: false,
    selectedLabelStyle:
        TextStyle(fontWeight: fontWeight700, color: colorpinklight),
    unselectedLabelStyle: TextStyle(fontWeight: fontWeight500),
    onTap: (index) {
      model.toggle(context, index);
    },
    currentIndex: model.bottombarzindex,

    items: [
      BottomNavigationBarItem(
        icon: Image(
          image: AssetImage('assets/icons/Home.png'),
          color:
              model.bottombarzindex == 0 ? colorpinklight : Colors.grey,
        ),
        // icon: Icon(Icons.home_rounded),
        label: '',
      ),
      BottomNavigationBarItem(

          // icon: Icon(Icons.person_outlined),
          icon: Image(
            image: AssetImage('assets/icons/Icon- Outline.png' ), //category
            color:
                model.bottombarzindex == 1 ? colorpinklight : Colors.grey,
                
          ),
          label: ''),
    
      BottomNavigationBarItem(
          icon: Image(
            image: AssetImage(
              'assets/icons/search.png',
            
            ),
            
            color:
                model.bottombarzindex == 2 ? colorpinklight : Colors.grey,
          ),
         
          label: ''),
      BottomNavigationBarItem(
          // icon: Icon(Icons.person_outline_rounded),
          icon: Image(
            image: AssetImage('assets/icons/group.png'),
            color:
                model.bottombarzindex == 3 ? colorpinklight : Colors.grey,
          ),
          label: ''),
    ],
  );
}

// Future botamshit(context) {
//   return showModalBottomSheet<void>(
//       context: context,
//       builder: (BuildContext context) {
//         return Container(
//           padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
//           // height: 200.0,
//           color: colorWhite,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               sizedboxheight(20.0),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       // Get.to(() => MyAccountPage());
//                     },
//                     child: Column(
//                       children: [
//                         Image.asset("assets/icons/profile.png"),
//                         sizedboxheight(5.0),
//                         Text(
//                           "Profile",
//                           style: TextStyle(
//                               fontFamily: "Inter",
//                               color: colorblack,
//                               fontSize: 13.0,
//                               fontWeight: fontWeight400),
//                         )
//                       ],
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       // Get.to(() => CalenderPage());
//                     },
//                     child: Column(
//                       children: [
//                         Image.asset("assets/icons/menuicon (2).png"),
//                         sizedboxheight(5.0),
//                         Text(
//                           "Auspicious",
//                           style: TextStyle(
//                               fontFamily: "Inter",
//                               color: colorblack,
//                               fontSize: 13.0,
//                               fontWeight: fontWeight400),
//                         )
//                       ],
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       // Get.to(() => DealsPage());
//                     },
//                     child: Column(
//                       children: [
//                         Image.asset("assets/icons/menuicon (3).png"),
//                         sizedboxheight(5.0),
//                         Text(
//                           "Deals",
//                           style: TextStyle(
//                               fontFamily: "Inter",
//                               color: colorblack,
//                               fontSize: 13.0,
//                               fontWeight: fontWeight400),
//                         )
//                       ],
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       // Get.to(() => OfferPageByCategory());
//                     },
//                     child: Column(
//                       children: [
//                         Image.asset("assets/icons/menuicon (4).png"),
//                         sizedboxheight(5.0),
//                         Text(
//                           "Offers",
//                           style: TextStyle(
//                               fontFamily: "Inter",
//                               color: colorblack,
//                               fontSize: 13.0,
//                               fontWeight: fontWeight400),
//                         )
//                       ],
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       // Get.to(() => PackagesPage());
//                     },
//                     child: Column(
//                       children: [
//                         Image.asset("assets/icons/menuicon (1).png"),
//                         sizedboxheight(5.0),
//                         Text(
//                           "Packages",
//                           style: TextStyle(
//                               fontFamily: "Inter",
//                               color: colorblack,
//                               fontSize: 13.0,
//                               fontWeight: fontWeight400),
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               sizedboxheight(20.0),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Get.to(() => ReviewPage());
//                     },
//                     child: Column(
//                       children: [
//                         Image.asset("assets/icons/menuicon (5).png"),
//                         sizedboxheight(5.0),
//                         Text(
//                           "Reviews",
//                           style: TextStyle(
//                               fontFamily: "Inter",
//                               color: colorblack,
//                               fontSize: 13.0,
//                               fontWeight: fontWeight400),
//                         )
//                       ],
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       Get.to(() => AppFeedback());
//                     },
//                     child: Column(
//                       children: [
//                         Image.asset("assets/icons/menuicon (6).png"),
//                         sizedboxheight(5.0),
//                         Text(
//                           "Feedback",
//                           style: TextStyle(
//                               fontFamily: "Inter",
//                               color: colorblack,
//                               fontSize: 13.0,
//                               fontWeight: fontWeight400),
//                         )
//                       ],
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       // Get.to(() => FavoritesPage());
//                     },
//                     child: Column(
//                       children: [
//                         Image.asset("assets/icons/menuicon (7).png"),
//                         sizedboxheight(5.0),
//                         Text(
//                           "Favorites",
//                           style: TextStyle(
//                               fontFamily: "Inter",
//                               color: colorblack,
//                               fontSize: 13.0,
//                               fontWeight: fontWeight400),
//                         )
//                       ],
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       Get.to(() => Blog());
//                     },
//                     child: Column(
//                       children: [
//                         Image.asset("assets/icons/menuicon (8).png"),
//                         sizedboxheight(5.0),
//                         Text(
//                           "Blog",
//                           style: TextStyle(
//                               fontFamily: "Inter",
//                               color: colorblack,
//                               fontSize: 13.0,
//                               fontWeight: fontWeight400),
//                         )
//                       ],
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       Get.to(AboutUs());
//                     },
//                     child: Column(
//                       children: [
//                         Image.asset("assets/icons/menuicon (10).png"),
//                         sizedboxheight(5.0),
//                         Text(
//                           "About Us",
//                           style: TextStyle(
//                               fontFamily: "Inter",
//                               color: colorblack,
//                               fontSize: 13.0,
//                               fontWeight: fontWeight400),
//                         )
//                       ],
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {},
//                     child: Column(
//                       children: [
//                         Image.asset("assets/icons/menuicon (9).png"),
//                         sizedboxheight(5.0),
//                         Text(
//                           "Logout",
//                           style: TextStyle(
//                               fontFamily: "Inter",
//                               color: colorblack,
//                               fontSize: 13.0,
//                               fontWeight: fontWeight400),
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         );
//       });
// }

Widget botamshitCardFile(image, titel, ontap) {
  return GestureDetector(
    onTap: () {
      Get.to(ontap);
    },
    child: ListTile(
      tileColor: colorWhite,
      dense: true,
      leading: Image.asset(
        image,
        color: colorblack,
      ),
      minLeadingWidth: 5,
      title: Text(titel),
      trailing: IconButton(
        icon: Icon(
          Icons.arrow_forward_ios_rounded,
          size: 18,
          color: colorblack,
        ),
        onPressed: () {
          Get.to(ontap);
        },
      ),
    ),
  );
}

Widget dividercontaner(context) {
  return Container(
    height: 1,
    width: deviceWidth(context, 1.0),
    color: Colors.black26,
  );
}

Future<bool> onWillPop(context) async {
  final showPopUp = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            title: Text('Are you sure'),
            content: Text('You want to leave from App'),
            actions: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: colorredlightbtn,
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: Text('Yes')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: colorredlightbtn,
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: Text('No')),
            ],
          ));

  return showPopUp ?? false;
}
