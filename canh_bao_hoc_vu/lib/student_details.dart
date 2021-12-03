// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'bottomNavyBar.dart';

class CardItem{
  final String urlImage;
  final String title;

const CardItem({
  required this.urlImage,
  required this.title
 });
}

class CardItemSche{
  final String title;
  final String icon1;
  final String icon2;
  final String text1;
  final String text2;
  const CardItemSche({
    required this.title,
    required this.icon1,
    required this.icon2,
    required this.text1,
    required this.text2,
  });
}

class StudentDetails extends StatefulWidget {
  const StudentDetails({Key? key}) : super(key: key);

  @override
  _StudentDetailsState createState() => _StudentDetailsState();
}

class _StudentDetailsState extends State<StudentDetails> {
  List<CardItem> items = [
    CardItem(
      urlImage: "assets/images/thongtinsinhvien.png",
      title: "THÔNG TIN SINH VIÊN"
    ),
     CardItem(
      urlImage: "assets/images/lichhocdiemdanh.png",
      title: "LỊCH HỌC/ ĐIỂM DANH"
    ),
     CardItem(
      urlImage: "assets/images/diemthi.png",
      title: "ĐIỂM THI"
    ),
     CardItem(
      urlImage: "assets/images/hocphi.png",
      title: "HỌC PHÍ"
    )
  ];
  List<CardItemSche> item1 = [
    CardItemSche(
        title: "Toán cao cấp B1",
        icon1: "assets/images/dongho.png",
        icon2: "assets/images/diachi.png",
        text1: "7: 00",
        text2: "Phòng A31.105"),
    CardItemSche(
        title: "Lập trình web",
        icon1: "assets/images/dongho.png",
        icon2: "assets/images/diachi.png",
        text1: "13: 00",
        text2: "Phòng A31.101"),
    CardItemSche(
        title: "Xác xuất thống kê",
        icon1: "assets/images/dongho.png",
        icon2: "assets/images/diachi.png",
        text1: "17: 00",
        text2: "Phòng A27.4"),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(),
      body: Container(
        color: Color.fromRGBO(35, 175, 125, 100),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(bottom: 55, left: 30),
                            child: Image.asset(
                              "assets/images/back.png",
                            )
                            ),  
                        Container(
                          margin: EdgeInsets.only(
                            top: 89,
                            right: 30
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(
                                  bottom: 20
                                ),
                                width: 70,
                                height: 70,
                                
                                    child: ClipOval(
                                  child: Image.asset(
                                    "assets/images/student.png",
                                    fit: BoxFit.cover,
                                    width: 70,
                                    height: 70,
                                  ),
                                )
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  top: 20,
                                  left: 18
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        "TRẦN  LÊ  DAVID",
                                        style: TextStyle(
                                            color:
                                                Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: 10,
                                        right: 75
                                      ),
                                      child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "MSSV:",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14)),
                                          TextSpan(
                                              text: "1812818",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14)),
                                        ]),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  top: 22,
                                  left: 30
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "3.7",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold)),
                                          TextSpan(
                                              text: "/4",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold)),
                                        ]),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: 10
                                      ),
                                      height: 15,
                                      width: 40,
                                      child: Text(
                                        "GPA",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 11),
                                        textAlign: TextAlign.center,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        color: Color.fromRGBO(28, 42, 75, 100),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
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
                              border: Border.all(color: Colors.grey)),
                        ),
                       
                        Container(
                          margin: EdgeInsets.only(
                            top: 25,
                            left: 25,
                            right: 25
                          ),
                          height: 340,
                          
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            
                            color: Color(0xffF9F9FB),
                            
                          ),
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: 3,
                            itemBuilder: (context, index) => buildCardSche(item: item1[index]),
                            )
                          ),
                         Container(
                          margin: EdgeInsets.only(
                            top: 30,
                            left: 45
                          ),
                          padding: EdgeInsets.only(
                            left: 14,
                            right: 14,
                            top: 5,
                            bottom: 5
                          ),
                          child: Text("Hôm nay",
                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 11),
                                        textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        color: Color(0xff1C2A4B),
                                      ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            right: 200,
                            top: 200
                          ),
                          child: Center(
                            child: Text("Chức năng phổ biến",
                            style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Color(0xff1C2A4B),
                                      ),
                            ),
                            ),
                        ),
                        Container(
                          height: 100,
                          margin: EdgeInsets.only(
                            bottom: 10,
                            top: 460,
                            left: 25
                          ),
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            separatorBuilder: (context, _) => SizedBox(width: 22,),
                            itemBuilder: (context, index) => buildCard(item: items[index]),
                            )
                          ),
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
Widget buildCardSche({
  required CardItemSche item,
}) => Container(
  margin: EdgeInsets.only(
    top: 1
  ),
  height: 100,
  width: 325,

  color: Color(0xffF9F9FB),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: 25,
            
              left: 20
              ),
            child: Text(
              item.title,
              style: TextStyle(
                  color: Color(0xff1C2A4B),
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5,left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Image.asset(item.icon1),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                           item.text1,
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff818792)),
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 60),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Image.asset(item.icon2),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            item.text2,
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff818792)),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
);

Widget buildCard({
  required CardItem item,
}) => Container(
  width: 220,
  height: 100,
  decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xffF9F9FB),
      ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        height: 45,
        width: 45,
        margin: EdgeInsets.only(
          left: 31,
          top: 5
        ),
            child: Image.asset(item.urlImage),
            decoration: BoxDecoration(
              color: Color(0xff3374A2FC),
              borderRadius: BorderRadius.all(Radius.circular(50))
            ),
      ),
      Container(
        margin: EdgeInsets.only(
          right: 30,
          left: 10,
          top: 35,
          bottom: 28
        ),
        child: SizedBox(
          height: 37,
          width: 90,
          child: Text(item.title,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold
              ),
            ),
        ),
      )
    ],
  ),

);


