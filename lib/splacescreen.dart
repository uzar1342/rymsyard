import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'globle.dart';
import 'intro.dart';
import 'login.dart';
import 'main.dart';

class splacescreen extends StatefulWidget {
  const splacescreen({Key? key}) : super(key: key);

  @override
  _splacescreenState createState() => _splacescreenState();
}

class _splacescreenState extends State<splacescreen>
    with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> timer() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    isUserLoggedIn = _prefs.getBool("isUserLoggedInKey") ?? false;

    Timer(Duration(seconds: 2),
            (){
      if(isUserLoggedIn)
        {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder:
                  (context) =>
                  dasbod()
              ));
        }
      else {

        Navigator.pushReplacement(context,
                  MaterialPageRoute(builder:
                      (context) =>
                          IntroWidget()
                  ));
      }

        }
      // TakePictureScreen(camera: firstCamera,)
    );

  }
  @override
  void initState() {
    timer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF1E2429),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white
          // gradient: LinearGradient(
          //   colors: [Color(0xFFD23369), Color(0xFFD23369), Color(0xFFF06292), Color(0xFFF06292)],
          //   stops: [0, 1,1,1],
          //   begin: AlignmentDirectional(1, -1),
          //   end: AlignmentDirectional(-1, 1),
          // ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'asset/fulllogo.png',
              fit: BoxFit.fill,
            ),
            Image.asset(
              'asset/car.gif',
              width: 250,
              height: 140,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
