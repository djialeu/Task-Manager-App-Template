import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskmanager/detail_task.dart';
import 'package:taskmanager/utils/BorderIcon.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    const color = Color(0xff483AB5);
    const gcolor = Color(0xff7A6DE1);
    var barColor = const Color(0xff29ADE7);
    final padding = EdgeInsets.symmetric(horizontal: size.width/20);
    final sidepadding = EdgeInsets.symmetric(horizontal: size.width/10);
    return Scaffold(
      backgroundColor: color,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(20),
        height: size.width * .155,
        decoration: const BoxDecoration(
          color: color,
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black.withOpacity(.15),
          //     blurRadius: 30,
          //     offset: const Offset(0, 10),
          //   ),
          // ],
          // borderRadius: BorderRadius.circular(50),
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: size.width * .024),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(
                    () {
                  currentIndex = index;
                },
              );
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 1500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  margin: EdgeInsets.only(
                    bottom: index == currentIndex ? 0 : size.width * .029,
                    right: size.width * .0422,
                    left: size.width * .0422,
                  ),
                  width: size.width * .128,
                  height: index == currentIndex ? size.width * .014 : 0,
                  decoration: const BoxDecoration(
                    // color: Colors.blueAccent,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(10),
                    ),
                  ),
                ),
                Icon(
                  listOfIcons[index],
                  size: size.width * .076,
                  color: index == currentIndex
                      ? barColor
                      : Colors.white,
                ),
                SizedBox(height: size.width * .03),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height/15,),
            Padding(
              padding: padding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  const [
                  Icon(Icons.dehaze , color: Colors.white,),
                  CircleAvatar(backgroundImage: AssetImage('assets/images/profil.jpg'))
                ],
              ),
            ),
            SizedBox(height: size.height/15),
            Padding(
                padding: padding,
                child: const Text("Hi Ghulam", style: TextStyle(color: Colors.white , fontSize: 40 , fontWeight: FontWeight.bold),)
            ),
            SizedBox(height: size.height/90),
            Padding(
                padding: padding,
                child: const Text("6 Tasks are pending", style: TextStyle(color: Colors.white70 , fontSize: 20 , fontWeight: FontWeight.w400),)
            ),
            SizedBox(height: size.height/20),
            Padding(
              padding: padding,
              child: const HomeTask(
                end: "Now",
                title: "Mobile App Design",
                firstName: "Mike",
                secondName: "anita",
              ),
            ),
            SizedBox(height: size.height/25,),
            Padding(
              padding: sidepadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Monthly Review" , style: TextStyle( color: Colors.white , fontWeight:  FontWeight.bold , fontSize: 26 )),
                  InkWell(
                    onTap:() => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DetailTask())),
                    child: BorderIcon(
                      height: size.height/20,
                      width: size.width/10,
                      color: Colors.cyanAccent,
                      child: const Icon(Icons.event_note_outlined , color: Colors.white,),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height/25,),
            Padding(
              padding: sidepadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Review(number: "22", state: "Done"),
                  Transform.translate(offset: const Offset(0, -10),
                      child: const SmallReview(number: "7", state: "In progress"))
                ],
              ),
            ),
            Padding(
              padding: sidepadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Transform.translate(offset: const Offset(0, 10),
                      child: const SmallReview(number: "10", state: "Ongoing")),
                  const Review(number: "7", state: "Waiting for review")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  List<IconData> listOfIcons = [
    Icons.home,
    Icons.text_snippet,
    Icons.person,
    Icons.notifications,
  ];
}