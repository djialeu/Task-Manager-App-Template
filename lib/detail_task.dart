import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskmanager/utils/BorderIcon.dart';

class DetailTask extends StatelessWidget {
  const DetailTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final sidePadding = EdgeInsets.symmetric(horizontal: size.width/12);
    final padding = EdgeInsets.symmetric(horizontal: size.width/20);
    Color myColor = const Color(0xFFDAE7F7);
    // double padding = AppDimensions.width20;
    // final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    // Color myColor = const Color(0xFF3F51B5);
    return Scaffold(
      // backgroundColor: myColor,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    myColor,
                    Colors.white
                  ]
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height/15,),
              Padding(
                padding: sidePadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: BorderIcon(
                        height: size.height/20,
                        width: size.width/10,
                        child: const Icon(Icons.arrow_back , color: Colors.black,),
                      ),
                    ),
                    const CircleAvatar(backgroundImage: AssetImage('assets/images/profil.jpg'))
                  ],
                ),
              ),
              SizedBox(height: size.height/20),
              Padding(
                padding: sidePadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    const Icon(Icons.arrow_back, color: Color(0xff0A1A4C),),
                    const Text("Mar" , style: TextStyle(color: Color(0xff0A1A4C)),),
                    SizedBox(width: size.width/5),
                    const Text("April", style: TextStyle(color: Color(0xff0A1A4C), fontWeight: FontWeight.bold , fontSize: 35)),
                    SizedBox(width: size.width/5),
                    const Text("May", style: TextStyle(color: Color(0xff0A1A4C))),
                    const Icon(Icons.arrow_forward , color: Color(0xff0A1A4C),),
                  ],
                ),

              ),
              SizedBox(height: size.height/20),
              Padding(
                padding: sidePadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DayElement(
                      height: size.height/8,
                      width: size.width/6,
                      intday: "12",
                      day: "Wed",
                      active: true,
                    ),
                    DayElement(
                      height: size.height/8,
                      width: size.width/6,
                      intday: "13",
                      day: "Thu",
                      active: false,
                    ),
                    DayElement(
                      height: size.height/8,
                      width: size.width/6,
                      intday: "14",
                      day: "Fri",
                      active: false,
                    ),
                    DayElement(
                      height: size.height/8,
                      width: size.width/6,
                      intday: "15",
                      day: "Sat",
                      active: false,
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height/25,),
              Padding(
                padding: padding,
                child: const Text("Ongoing" , style: TextStyle(color: Color(0xff0A1A4C), fontWeight: FontWeight.bold , fontSize: 30 )),
              ),
              SizedBox(height: size.height/35),
              Column(
                children: [
                  Padding(
                    padding: padding,
                    child: const Task(
                      leftStart: "9 AM",
                      leftEnd: "10 AM",
                      end: "10.00 AM",
                      start: "9.00 AM",
                      title: "Mobile App Design",
                      firstName: "Mike",
                      secondName: "anita",
                    ),
                  ),
                  SizedBox(height: size.height/50),
                  Row(
                    children: [
                      Padding(
                        padding: padding,
                        child: const Text("10 AM" , style: TextStyle(color:  Color(0xff2A4FA8) , fontWeight: FontWeight.w500 , fontSize: 13),),
                      ),
                      CustomPaint(
                        painter: LinePainter(),
                        size: const Size(200, 50),
                      )

                    ],),
                  Padding(
                    padding: padding,
                    child: const Task(
                      leftStart: "11 AM",
                      leftEnd: "12 AM",
                      end: "10.00 AM",
                      start: "11.20 AM",
                      title: "Software Testing",
                      firstName: "Anita",
                      secondName: "David",
                    ),
                  ),
                  SizedBox(height: size.height/50),
                  Padding(
                    padding: padding,
                    child: const Task(
                      leftStart: "1:00 AM",
                      leftEnd: "12 AM",
                      end: "2.00 PM",
                      start: "1.00 PM",
                      title: "Web Development",
                      firstName: "Mike",
                      secondName: "anita",
                    ),
                  ),
                  SizedBox(height: size.height/50),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
