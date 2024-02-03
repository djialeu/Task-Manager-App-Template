import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskmanager/home_page.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const color= Color(0xffDBE9F6);
    Color myColor = const Color(0xFFDAE7F7);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                myColor,
                myColor,
                myColor,
                color,
                color,
                color,

              ]
            )
          ),
          child: Column(
            children: [
              SizedBox(height: size.height/20,),
              SizedBox(
                height: size.height/2,
                child: Padding(
                  padding: EdgeInsets.all(size.width/10),
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.zero,
                        topRight: Radius.zero,
                        bottomLeft: Radius.circular(200.0),
                        bottomRight: Radius.circular(200.0),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/abstract.png"),
                      )
                      )
                    ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(size.width/10),
                child: Column(
                  children: [
                    const Text("Manage your daily tasks", style: TextStyle(color: Color(0xff0A1A4C), fontSize: 50 , fontWeight: FontWeight.bold , fontFamily: 'Open Sans'),),
                    SizedBox(height: size.height/40,),
                    const Text("Team and Project managment with solution providing App" , style: TextStyle(color: Color(0xff223464), fontSize: 15 , fontWeight: FontWeight.bold),),
                    SizedBox(height: size.height/20,),
                    Padding(
                      padding: EdgeInsets.only(left: size.width/10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell( onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage() )),
                              child: Row(
                                children:  [
                                  Container(
                                    decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                      ),
                                    ],
                                  ),
                                      child: const CircleAvatar(
                                        radius: 30, // increase this value to make the circle bigger
                                        backgroundColor: Colors.transparent,
                                        child: Text("Get " , style: TextStyle(color: Color(0xff0A1A4C), fontSize: 20 , fontWeight: FontWeight.bold),))
                                  ),
                                  const Text("Started " , style: TextStyle(color: Color(0xff0A1A4C), fontSize: 20 , fontWeight: FontWeight.bold),),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                ),


              )
            ],
          ),
        ),
      ),
    );
  }
}
