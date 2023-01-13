



import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:service/Auth/loginwidget.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                child: Center(
                  child: Text("LOGO",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 60,
                          fontWeight: FontWeight.bold)),
                ),
              ),

              loginChildrens(context),
            
            ],
          ),
        ),
      ),
    );
  }
}
