// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, library_prefixes
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'bottomNavyBar.dart';
import 'student_details.dart';

class CardItemStudent{
  final String urlImage;
  final String name;
  final String textMSSV;
  final String textMSSV1;
  final String textPoint;
  final String textPoint1;
  final String textGPA;

const CardItemStudent({
  required this.urlImage,
  required this.name,
  required this.textMSSV,
  required this.textMSSV1,
  required this.textPoint,
  required this.textPoint1,
  required this.textGPA,
 });
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CardItemStudent> item2 =[ 
    CardItemStudent(
      urlImage: "assets/images/student.png",
      name: "TRẦN LÊ DAVID",
      textMSSV: "MSSV:",
      textMSSV1: " 1812779",
      textPoint: "3.7",
      textPoint1: "/4",
      textGPA: "GPA"
    ),
    CardItemStudent(
      urlImage: "assets/images/student2.png",
      name: "LÊ THỊ THANH HUYỀN",
      textMSSV: "MSSV:",
      textMSSV1: " 1812779",
      textPoint: "2.5",
      textPoint1: "/4",
      textGPA: "GPA"
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
      ),
      body: Container(
        color:  Color.fromRGBO(35, 175, 125, 100),

        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                left: 20,
                                top: 71,
                            ),
                            child:  ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/images/father.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: 40
                            ),
                            child: Center(
                              child: Text("TRẦN VĂN LÂM",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20, //17
                                  fontWeight: FontWeight.bold,
                                ),),
                            ),
                          )
                        ],
                      ),
                    )
                ),
                Expanded(
                    flex: 3,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                              ),
                              border: Border.all(color: Colors.grey)
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 17,
                            top: 28,
                            right: 20,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),

                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.only(
                                      left: 22,
                                      top: 35,
                                      right: 31
                                  ),
                                  child: Center(
                                    child: Text("Các sinh viên mà phụ huynh quản lý",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                        color: Color(0xff1C2A4B),
                                      ),
                                    ),
                                  )
                              ),
                              Container(
                                height: 250,   
                                child: ListView.builder(
                                    scrollDirection: Axis.vertical,
                                    itemCount: 2,
                                    itemBuilder: (context, index) =>
                                        buildCardStudent(item: item2[index]),
                                  )
                              ),
                              TextButton(
                                style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.blue),
                                ),
                                onPressed: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => StudentDetails()));
                                },
                                child: Text('Chuyển trang',
                                style: TextStyle(fontSize: 20)),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                ),
              ],
            ),
          ],
        ),

      ),
    );
  }
}
Widget buildCardStudent({
  required CardItemStudent item,
}) => Container(
  height: 80,
   child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 22),
            width: 60,
            height: 60,
                child: ClipOval(
              child: Image.asset(
                item.urlImage,
                fit: BoxFit.cover,
                width: 70,
                height: 70,
              ),
            )
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    item.name,
                    style: TextStyle(
                        color: Color(0xff1C2A4B),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 85),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: item.textMSSV,
                          style: TextStyle(
                              color: Color.fromRGBO(129, 135, 146, 100),
                              fontSize: 12)),
                      TextSpan(
                          text: item.textMSSV1,
                          style: TextStyle(
                              color: Color(0xff1C2A4B), fontSize: 12,fontWeight: FontWeight.bold)),
                    ]),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: item.textPoint,
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: item.textPoint1,
                          style: TextStyle(
                              color: Color.fromRGBO(28, 42, 75, 100),
                              fontWeight: FontWeight.bold)),
                    ]),
                  ),
                ),
                Container(
                  height: 15,
                  width: 40,
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    item.textGPA,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 11),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0xff1C2A4B),
                  ),
                )
              ],
            ),
          )
        ],
      ),

);