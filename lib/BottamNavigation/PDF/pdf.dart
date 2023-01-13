import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../Notification/notificationPage.dart';
import '../../common/button.dart';
import '../../common/const.dart';
import '../../common/textfield.dart';
import '../dashboard/AllProduct/product.dart';

class pdfpage extends StatefulWidget {
  const pdfpage({super.key});

  @override
  State<pdfpage> createState() => _pdfpageState();
}

class _pdfpageState extends State<pdfpage> {
  @override
  RxInt selectAll = 0.obs;
  RxInt index = 0.obs;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F9F9F9"),
      body: Container(
        child: Column(
          children: [
            // loginsearch(context),

            Stack(
              children: [
                Container(
                  color: colorWhite,
                  margin: EdgeInsets.only(top: 30, bottom: 10),
                  child: loginsearch112(context),
                ),
              ],
            ),
           
            SizedBox(
              height: 20,
            ),

            Stack(
              children: [
                Container(
                  color: colorWhite,
                  height: 70,
                  margin: EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        sizedboxwidth(4.0),
                        Button(
                            btnColor:
                                selectAll == 1 ? colorpinklight : colorWhite,
                            btnstyle: TextStyle(
                                color: selectAll == 1
                                    ? colorWhite
                                    : colorblack,
                                fontSize: 15.0),
                            btnWidth: deviceWidth(context, 0.30),
                            buttonName: "Confirmed",
                            btnHeight: 40.0,
                            onPressed: () {
                              setState(() {
                                selectAll.value = 1;
                              });
                            }),

                        sizedboxwidth(4.0),

                        Button(
                            btnColor:
                                selectAll == 2 ? colorpinklight : colorWhite,
                            btnstyle: TextStyle(
                                color: selectAll == 2
                                    ? colorWhite
                                    : HexColor("#6759FF"),
                                fontSize: 16.0),
                            btnWidth: deviceWidth(context, 0.30),
                            buttonName: "Pending",
                            btnHeight: 40.0,
                            onPressed: () {
                              setState(() {
                                selectAll.value = 2;
                              });
                            }),

                        Button(
                            btnColor:
                                selectAll == 3 ? colorpinklight : colorWhite,
                            btnstyle: TextStyle(
                                color: selectAll == 3
                                    ? colorWhite
                                    : colorblack,
                                fontSize: 16.0),
                            btnWidth: deviceWidth(context, 0.25),
                            buttonName: "History",
                            btnHeight: 40.0,
                            onPressed: () {
                              setState(() {
                                selectAll.value = 3;
                              });
                            }),

                        // Button(
                        //     btnColor:
                        //         selectAll == 4 ? colorpinklight : colorWhite,
                        //     btnstyle: TextStyle(
                        //         color: selectAll == 4
                        //             ? colorWhite.withOpacity(0.65)
                        //             : colorblack,
                        //         fontSize: 16.0),
                        //     btnWidth: deviceWidth(context, 0.25),
                        //     buttonName: "Pending",
                        //     btnHeight: 30.0,
                        //     onPressed: () {
                        //       setState(() {
                        //         selectAll = 4;
                        //       });
                        //     }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                sizedboxwidth(10.0),
                Image.asset("assets/icons/tag.png"),
                sizedboxwidth(10.0),
                Text(
                    // model.astrologerListdb[index]['user_avability'].toString(),
                    'Proposal',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 30, fontWeight: fontWeight600)),
              ],
            ),

            Obx(() => Container(
                  child: selectAll == 1
                      ? Container(
                          child: Container(
                            child: Container(
                              height: 470.0,
                              margin: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 1, right: 10, left: 10),
                                    padding: EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                      color: colorWhite,
                                      borderRadius: BorderRadius.circular(10),
                                   
                                      // border: Border.all(
                                      //     color: colorblack.withOpacity(0.1)),
                                      
                                      // boxShadow: boxShadowcontainer(),
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Column(
                                              // ignore: prefer_const_literals_to_create_immutables
                                              children: [
                                                SizedBox(
                                                  width: 50,
                                                  height: 50,
                                                  child: ClipOval(
                                                    child:
                                                        //  model.astrologerListdb[index]['profile_image'] != null
                                                        //     ? Image.network(
                                                        //         model.astrologerListdb[index]['image_url'].toString(),
                                                        //         fit: BoxFit.cover,
                                                        //         errorBuilder: (context, exception, stackTrack) =>Center(child: Text('Not \n found',textAlign: TextAlign.center,style: TextStyle(fontSize: 10),)),
                                                        //       )
                                                        //     :
                                                        Image(
                                                            image: AssetImage(
                                                                'assets/images/ac.png'),
                                                            fit:
                                                                BoxFit.contain),

                                                    //     Image(
                                                    //   image: AssetImage('assets/images/clip1.png'),
                                                    //   fit: BoxFit.cover,
                                                    // )
                                                  ),
                                                )
                                              ],
                                            ),
                                            sizedboxwidth(8.0),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                    // model.astrologerListdb[index]['name'].toString(),
                                                    'Laptop',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline6),
                                                sizedboxheight(4.0),
                                                Row(
                                                  children: [
                                                    // Icon(
                                                    //   Icons.done,
                                                    //   size: 16,
                                                    //   color: Colors.blue,
                                                    // ),
                                                    // Icon(
                                                    //   Icons.done_all,
                                                    //   size: 18,
                                                    //   color: Colors.blue,
                                                    // ),

                                                    Text(
                                                        // model.astrologerListdb[index]['user_avability'].toString(),
                                                        'Code: #D-571224',
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .subtitle2),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 1, right: 10, left: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.circle,
                                          size: 8,
                                          color: colorblack,
                                        ),
                                        sizedboxwidth(5.0),
                                        Text(
                                          "Air Conditioning services we provide ",
                                          softWrap: true,
                                          style: TextStyle(
                                              color: HexColor("#6F767E"),
                                              fontSize: 17,
                                              fontWeight: fontWeight500),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 1, right: 10, left: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.circle,
                                          size: 8,
                                          color: colorblack,
                                        ),
                                        sizedboxwidth(5.0),
                                        Text(
                                          "Ac Installation & Replacement",
                                          style: TextStyle(
                                              color: HexColor("#6F767E"),
                                              fontSize: 17,
                                              fontWeight: fontWeight500),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 1, right: 10, left: 10),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.circle,
                                          size: 8,
                                          color: colorblack,
                                        ),
                                        sizedboxwidth(5.0),
                                        Text(
                                          "AC Maintenance",
                                          style: TextStyle(
                                              color: HexColor("#6F767E"),
                                              fontSize: 17,
                                              fontWeight: fontWeight500),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 1, right: 10, left: 10),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.circle,
                                          size: 8,
                                          color: colorblack,
                                        ),
                                        sizedboxwidth(5.0),
                                        Text(
                                          "Ac Repaire",
                                          style: TextStyle(
                                              color: HexColor("#6F767E"),
                                              fontSize: 17,
                                              fontWeight: fontWeight500),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 1, right: 10, left: 10),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.circle,
                                          size: 8,
                                          color: colorblack,
                                        ),
                                        sizedboxwidth(5.0),
                                        Text(
                                          "Thermostates & Air Conditioner Units",
                                          style: TextStyle(
                                              color: HexColor("#6F767E"),
                                              fontSize: 17,
                                              fontWeight: fontWeight500),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 1, right: 10, left: 10),
                                    padding: EdgeInsets.all(10.0),

                                    decoration: BoxDecoration(
                                      color: colorWhite,
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: colorblack.withOpacity(0.1)),
                                      boxShadow: boxShadowcontainer(),
                                    ),

                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Column(
                                              // ignore: prefer_const_literals_to_create_immutables
                                              children: [
                                                SizedBox(
                                                  width: 50,
                                                  height: 50,
                                                  child: ClipOval(
                                                    child:
                                                        //  model.astrologerListdb[index]['profile_image'] != null
                                                        //     ? Image.network(
                                                        //         model.astrologerListdb[index]['image_url'].toString(),
                                                        //         fit: BoxFit.cover,
                                                        //         errorBuilder: (context, exception, stackTrack) =>Center(child: Text('Not \n found',textAlign: TextAlign.center,style: TextStyle(fontSize: 10),)),
                                                        //       )
                                                        //     :
                                                        Image(
                                                            image: AssetImage(
                                                                'assets/images/frame.png'),
                                                            fit:
                                                                BoxFit.contain),

                                                    //     Image(
                                                    //   image: AssetImage('assets/images/clip1.png'),
                                                    //   fit: BoxFit.cover,
                                                    // )
                                                  ),
                                                )
                                              ],
                                            ),
                                            sizedboxwidth(8.0),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                    // model.astrologerListdb[index]['name'].toString(),
                                                    'Vendor Name',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline6),
                                                sizedboxheight(6.0),
                                                Row(
                                                  children: [
                                                    // Icon(
                                                    //   Icons.done,
                                                    //   size: 16,
                                                    //   color: Colors.blue,
                                                    // ),
                                                    // Icon(
                                                    //   Icons.done_all,
                                                    //   size: 18,
                                                    //   color: Colors.blue,
                                                    // ),

                                                    Text(
                                                        // model.astrologerListdb[index]['user_avability'].toString(),
                                                        'Code: #D-571224',
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .subtitle2),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            sizedboxwidth(35.0),
                                            btnview1(),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: HexColor("#EFEEFF"),
                                      // borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                          color: colorblack.withOpacity(0.1)),
                                      boxShadow: boxShadowcontainer(),
                                    ),
                                    margin: EdgeInsets.only(
                                        top: 20, right: 40, left: 40),
                                    padding: EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        sizedboxwidth(15.0),
                                        Text(
                                          "Price : ",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: fontWeight500),
                                        ),
                                        sizedboxwidth(5.0),
                                        Text(
                                          "1800 ",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: fontWeight500,
                                              color: HexColor("#6759FF")),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      : Container(
                          child: Container(
                            height: 470.0,
                            margin:
                                EdgeInsets.only(top: 10, right: 30, left: 30),
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            child: Column(
                           
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    color: colorWhite,
                                    
                                   // boxShadow: boxShadowcontainer(),
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            // ignore: prefer_const_literals_to_create_immutables
                                            children: [
                                              SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: ClipOval(
                                                  child:
                                                      //  model.astrologerListdb[index]['profile_image'] != null
                                                      //     ? Image.network(
                                                      //         model.astrologerListdb[index]['image_url'].toString(),
                                                      //         fit: BoxFit.cover,
                                                      //         errorBuilder: (context, exception, stackTrack) =>Center(child: Text('Not \n found',textAlign: TextAlign.center,style: TextStyle(fontSize: 10),)),
                                                      //       )
                                                      //     :
                                                      Image(
                                                          image: AssetImage(
                                                              'assets/images/ac.png'),
                                                          fit: BoxFit.contain),

                                                  //     Image(
                                                  //   image: AssetImage('assets/images/clip1.png'),
                                                  //   fit: BoxFit.cover,
                                                  // )
                                                ),
                                              )
                                            ],
                                          ),
                                          sizedboxwidth(8.0),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  // model.astrologerListdb[index]['name'].toString(),
                                                  'Laptop',
                                                 style: TextStyle(fontSize: 18,color: HexColor("#1A1D1F"),fontWeight: fontWeight600)),
                                              sizedboxheight(6.0),
                                              Row(
                                                children: [
                                                  // Icon(
                                                  //   Icons.done,
                                                  //   size: 16,
                                                  //   color: Colors.blue,
                                                  // ),
                                                  // Icon(
                                                  //   Icons.done_all,
                                                  //   size: 18,
                                                  //   color: Colors.blue,
                                                  // ),

                                                  Text(
                                                      // model.astrologerListdb[index]['user_avability'].toString(),
                                                      'Code: #D-571224',
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                     style: TextStyle(fontSize: 17,color: HexColor("#6F767E"))),

                                                  sizedboxwidth(35.0),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                 Divider(
                                 height: 2,
                                 thickness: 2,
          
                      color: HexColor("#EFEFEF"),
          ),
                   
                                sizedboxheight(10.0),
                                
                                Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      size: 8,
                                      color: colorblack,
                                    ),
                                    sizedboxwidth(5.0),
                                    Text(
                                      "Air Conditioning services we provide ",
                                      style: TextStyle(
                                          color: HexColor("#6F767E"),
                                          fontSize: 17,
                                          fontWeight: fontWeight500),
                                    ),
                                  ],
                                ),
                                sizedboxheight(10.0),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      size: 8,
                                      color: colorblack,
                                    ),
                                    sizedboxwidth(5.0),
                                    Text(
                                      "Ac Installation & Replacement",
                                      style: TextStyle(
                                          color: HexColor("#6F767E"),
                                          fontSize: 17,
                                          fontWeight: fontWeight500),
                                    ),
                                  ],
                                ),
                                 sizedboxheight(10.0),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      size: 8,
                                      color: colorblack,
                                    ),
                                    sizedboxwidth(5.0),
                                    Text(
                                      "AC Maintenance",
                                      style: TextStyle(
                                          color: HexColor("#6F767E"),
                                          fontSize: 17,
                                          fontWeight: fontWeight500),
                                    ),
                                  ],
                                ),
                                sizedboxheight(10.0),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      size: 8,
                                      color: colorblack,
                                    ),
                                    sizedboxwidth(5.0),
                                    Text(
                                      "Ac Repaire",
                                      style: TextStyle(
                                          color: HexColor("#6F767E"),
                                          fontSize: 17,
                                          fontWeight: fontWeight500),
                                    ),
                                  ],
                                ),
                                 sizedboxheight(10.0),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      size: 8,
                                      color: colorblack,
                                    ),
                                    sizedboxwidth(5.0),
                                    Text(
                                      "Thermostates & Air Conditioner Units",
                                      style: TextStyle(
                                          color: HexColor("#6F767E"),
                                          fontSize: 17,
                                          fontWeight: fontWeight500),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 15, right: 10, left: 10),

                                  // decoration: BoxDecoration(
                                  //   color: colorWhite,
                                  //   borderRadius: BorderRadius.circular(15),
                                  //   border: Border.all(color: colorblack.withOpacity(0.1)),
                                  //   boxShadow: boxShadowcontainer(),
                                  // ),

                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            // ignore: prefer_const_literals_to_create_immutables
                                            children: [
                                              SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: ClipOval(
                                                  child:
                                                      //  model.astrologerListdb[index]['profile_image'] != null
                                                      //     ? Image.network(
                                                      //         model.astrologerListdb[index]['image_url'].toString(),
                                                      //         fit: BoxFit.cover,
                                                      //         errorBuilder: (context, exception, stackTrack) =>Center(child: Text('Not \n found',textAlign: TextAlign.center,style: TextStyle(fontSize: 10),)),
                                                      //       )
                                                      //     :
                                                      Image(
                                                          image: AssetImage(
                                                              'assets/images/frame.png'),
                                                          fit: BoxFit.contain),

                                                  //     Image(
                                                  //   image: AssetImage('assets/images/clip1.png'),
                                                  //   fit: BoxFit.cover,
                                                  // )
                                                ),
                                              )
                                            ],
                                          ),
                                          sizedboxwidth(8.0),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  // model.astrologerListdb[index]['name'].toString(),
                                                  'Vendor Name',
                                                  style: TextStyle(fontSize: 18,color: HexColor("#1A1D1F"),fontWeight: fontWeight600)),
                                              sizedboxheight(6.0),
                                              Row(
                                                children: [
                                                  // Icon(
                                                  //   Icons.done,
                                                  //   size: 16,
                                                  //   color: Colors.blue,
                                                  // ),
                                                  // Icon(
                                                  //   Icons.done_all,
                                                  //   size: 18,
                                                  //   color: Colors.blue,
                                                  // ),

                                                  Text(
                                                      // model.astrologerListdb[index]['user_avability'].toString(),
                                                      'Code: #D-571224',
                                                     
                                                      style: TextStyle(fontSize: 17,color: HexColor("#6F767E"))),
                                                ],
                                              ),
                                            ],
                                          ),
                                          sizedboxwidth(25.0),
                                          // btnview1(),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 15, right: 20, left: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      
                                      Text(
                                        "Price : ",
                                        style: TextStyle(
                                            fontSize: 27,
                                            fontWeight: fontWeight500),
                                      ),
                                      sizedboxwidth(5.0),
                                      Text(
                                        "1800 ",
                                        style: TextStyle(
                                            fontSize: 27,
                                            fontWeight: fontWeight500,
                                            color: HexColor("#6759FF")),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 17, right: 20, left: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      sizedboxwidth(5.0),
                                      Button(
                                          btnColor: selectAll == 4
                                              ? colorpinklight
                                              : HexColor("#EFEEFF"),
                                          btnstyle: TextStyle(
                                              color: selectAll == 4
                                                  ? colorWhite
                                                  : HexColor("#6759FF"),
                                              fontSize: 16.0),
                                          btnWidth: deviceWidth(context, 0.30),
                                          buttonName: "Reject",
                                          btnHeight: 40.0,
                                          onPressed: () {
                                            setState(() {
                                              selectAll.value = 4;
                                            });
                                          }),
                                      sizedboxwidth(25.0),
                                      Button(
                                          btnColor: selectAll == 5
                                              ? colorpinklight
                                              : HexColor("#EFEEFF"),
                                          btnstyle: TextStyle(
                                              color: selectAll == 5
                                                  ? colorWhite
                                                  : colorblack,
                                              fontSize: 16.0),
                                          btnWidth: deviceWidth(context, 0.30),
                                          buttonName: "Accept",
                                          btnHeight: 40.0,
                                          onPressed: () {
                                            setState(() {
                                              selectAll.value = 5;
                                            });
                                          }),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                )),
          ],
        ),
      ),
    );
  }
}

Widget loginsearch112(context) {
  return Padding(
    padding: EdgeInsets.only(right: 10, left: 10, bottom: 10),
    child: TextField(
      // controller: model.userIdController,
      // obscureText: true,
      decoration: InputDecoration(
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,

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
        hintText: 'Search Proposal',

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

Widget searchHistry(context) {
  return Container(
      color: colorWhite,
      height: 105,
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 10,
      ),
      child: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: TextField(
          // controller: model.userIdController,
          obscureText: true,
          decoration: InputDecoration(
            filled: true, //<-- SEE HERE
            fillColor: HexColor("#F5F5F5"),
            //  prefixIcon: Icon(Icons.arrow_back, size: 25),
            suffixIcon: Image.asset("assets/icons/searchgroup.png"),

            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            // labelText: 'Password',
            hintText: 'Search Proposal',
            hintStyle: TextStyle(
                fontSize: 17,
                fontWeight: fontWeight600,
                color: HexColor("#D1D3D4")),
          ),
        ),
      ));
}

Widget loginsearch11(context) {
  return Container(
    child: TextField(
      // controller: model.userIdController,
      obscureText: true,
      decoration: InputDecoration(
        // enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        filled: true, //<-- SEE HERE
        fillColor: HexColor("#F5F5F5"),
        prefixIcon: Icon(
          Icons.arrow_back,
          size: 25,
          color: colorblack,
        ),
        suffixIcon: Image.asset("assets/icons/searchgroup.png"),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        // labelText: 'Password',
        hintText: 'Search Proposal',
        hintStyle: TextStyle(
            fontSize: 17,
            fontWeight: fontWeight600,
            color: HexColor("#D1D3D4")),
      ),
    ),
  );
}

Widget btnview1() {

  return Button(
      buttonName: "Call",
      borderColor: HexColor("#F5F5F5"),
      btnHeight: 45.0,
      btnColor: HexColor("#6759FF"),
      textColor: colorWhite,
      btnfontsize: 18,
      btnWidth: 89.0,
      borderRadius: BorderRadius.circular(15.0),
      onPressed: () {
        // Get.to(() => ());
      }
      );

}
