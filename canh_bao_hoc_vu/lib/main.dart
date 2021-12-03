// ignore_for_file: file_names, prefer_const_constructors, avoid_web_libraries_in_flutter
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'home_page.dart';
import 'student_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: "OpenSans"
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: LoginPage(

          ),
        ),
      ),
    );
  }
}
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(
                  left: 24,
                  right: 26,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        left: 25,
                        top: 73,
                        right: 25,
                      ),
                      child: Center(
                        child: Image.asset("assets/images/school_login.png"),
                      ),
                    ),

                  ],
                )
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        bottom: 25,
                        right: 198
                    ),
                    child:  Center(
                      child: Text(
                        "Đăng Nhập",
                        style: TextStyle(
                            color: Color(0xffb40284a),
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      bottom: 60,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              top: 20,
                              left: 24,
                              right: 26,
                              bottom: 20
                          ),
                          child: TextField(
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                                icon: Icon(Icons.phone),
                                hintText: "Số điện thoại",
                                hintStyle: TextStyle(
                                    color: Colors.black.withOpacity(0.4)
                                )
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 24,
                            right: 26,
                          ),
                          child: TextField(
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                                icon: Icon(Icons.vpn_key),
                                hintText: "Mật khẩu",
                                hintStyle: TextStyle(
                                    color: Colors.black.withOpacity(0.4)
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      left: 62,
                      right: 63,
                    ),
                    padding: EdgeInsets.all(8),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(35, 175, 125, 0.85)
                    ),
                    child: RawMaterialButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                      },
                      child: Text(
                        "ĐĂNG NHẬP",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 26,
                      top: 31,
                      right: 26,
                      bottom: 47,
                    ),
                    child: Center(
                      child: Text(
                        "Phụ huynh sử dụng số điện thoại đã đăng kí với nhà trường để đăng nhập",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black.withOpacity(0.4)
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        )
    );
  }
}

