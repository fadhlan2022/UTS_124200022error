import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/pages/profile_page2.dart';

import 'profile_page.dart';
import 'widgets/header_widget.dart';

class MenuPage2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuPage2State();
  }
}

class _MenuPage2State extends State<MenuPage2> {
  double _headerHeight = 250;
  Key _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   height: _headerHeight,
            //   child: HeaderWidget(_headerHeight, true,
            //       Icons.login_rounded), //let's create a common header widget
            // ),
            SafeArea(
              child: Container(
                  padding: EdgeInsets.fromLTRB(20, 50, 20, 10),
                  margin: EdgeInsets.fromLTRB(
                      20, 10, 20, 10),
                  child: Column(
                    children: [
                      Text(
                        'Menu',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5.0),
                      Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              SizedBox(height: 0.0),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                alignment: Alignment.topRight,
                                child: GestureDetector(
                                  onTap: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) =>
                                    //           ForgotPasswordPage()),
                                    // );
                                  },
                                  child: Text(
                                    "",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration:
                                    ThemeHelper().buttonBoxDecoration(context),
                                child: ElevatedButton(
                                  style: ThemeHelper().buttonStyle(),
                                  child:
                                  Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(20, 10, 20, 10),
                                    child: Text(
                                      'Daftar Anggota'.toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProfilePage2()));
                                  },
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                decoration:
                                ThemeHelper().buttonBoxDecoration(context),
                                child: ElevatedButton(
                                  style: ThemeHelper().buttonStyle(),
                                  child:
                                  Padding(
                                    padding:
                                    EdgeInsets.fromLTRB(45, 10, 45, 10),
                                    child: Text(
                                      'Stopwatch'.toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProfilePage()));
                                  },
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                decoration:
                                ThemeHelper().buttonBoxDecoration(context),
                                child: ElevatedButton(
                                  style: ThemeHelper().buttonStyle(),
                                  child:
                                  Padding(
                                    padding:
                                    EdgeInsets.fromLTRB(30, 10, 30, 10),
                                    child: Text(
                                      'Daftar Hobby'.toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProfilePage()));
                                  },
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                decoration:
                                ThemeHelper().buttonBoxDecoration(context),
                                child: ElevatedButton(
                                  style: ThemeHelper().buttonStyle(),
                                  child:
                                  Padding(
                                    padding:
                                    EdgeInsets.fromLTRB(55, 10, 55, 10),
                                    child: Text(
                                      'Sign Out'.toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProfilePage()));
                                  },
                                ),
                              ),
                            ],
                          )),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
