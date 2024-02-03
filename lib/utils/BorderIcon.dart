import 'package:flutter/material.dart';

class BorderIcon extends StatelessWidget {
  final Widget? child;
  final EdgeInsets? padding;
  final double? width, height;
  final Color? color;

  const BorderIcon(
      { Key? key,
        this.child,
        this.padding,
        this.width,
        this.height, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            border: Border.all(color: Colors.deepPurple.withAlpha(40), width: 2)),
        padding: padding ?? const EdgeInsets.all(8.0),
        child: Center(child: child));
  }
}

class DayElement extends StatelessWidget{
  final String? intday , day ;
  final double? width , height;
  final bool? active;



  const DayElement({Key? key , this.intday, this.day, this.width, this.height, this.active}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const mycolor =  Color(0xff4530A5);
    return Container(
        width: width,
        height: height,
        decoration: active! ?  BoxDecoration(
            color: mycolor,
            borderRadius: const BorderRadius.all(Radius.circular(35.0)),
            border: Border.all(color: mycolor, width: 2))
            :
        BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(35.0)),
            border: Border.all(color: Colors.white, width: 2))
        ,
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              active! ? Text(intday! , style: const TextStyle(fontSize: 30 , fontWeight: FontWeight.bold , color: Colors.white))
                  : Text(intday! , style: const TextStyle(fontSize: 30 , fontWeight: FontWeight.bold , color: mycolor)) ,
              active! ? Text(day! , style: const TextStyle(color: Colors.white),):
              Text(day! , style: const TextStyle(color: mycolor),)
            ],
          ),
        ));
  }}

class Task extends StatelessWidget{
  final String? start, end, title, firstName, secondName , leftStart , leftEnd;

  const Task({Key? key, this.start, this.end, this.title, this.firstName, this.secondName, this.leftStart, this.leftEnd}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    const mycolor = Color(0xff5556D5);
    const tasktextcolor = Color(0xff2A4FA8);
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Column(children: [
            Text(leftStart! , style: const TextStyle(color: tasktextcolor, fontWeight: FontWeight.w500 , fontSize: 13),),
            SizedBox(height: size.height/20),
            Text(leftEnd! , style: const TextStyle(color: tasktextcolor, fontWeight: FontWeight.w500 , fontSize: 13),),
          ],),
          SizedBox(width: size.width/20,),
          Container(
            height: size.height/6,
            width: size.width/1.5,
            padding: EdgeInsets.all(size.width/25),
            decoration: BoxDecoration(
                color: mycolor,
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                border: Border.all(color: mycolor, width: 2)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title!, style: const TextStyle(fontSize: 22 , fontWeight: FontWeight.bold , color: Colors.white),),
                Text("${firstName!} and ${secondName!}" , style: const TextStyle(fontSize: 12  , fontWeight: FontWeight.w500 , color: Colors.white70)),
                SizedBox(height: size.height/50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        CircleAvatar(backgroundImage: AssetImage('assets/images/profil.jpg')),
                        CircleAvatar(backgroundImage: AssetImage('assets/images/profil.jpg')),
                      ],
                    ),

                    Text("${start!} - ${end!}" , style: const TextStyle(color: Colors.white70 ,fontSize: 15  , fontWeight: FontWeight.w500 ),)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }}

class LinePainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 4;
    canvas.drawLine(Offset(0, size.height / 2),
        Offset(size.width * 1.5, size.height / 2), paint);
    canvas.drawCircle(
        Offset(0, size.height / 2), 12, paint..color = Colors.white);
    canvas.drawCircle(
        Offset(0, size.height / 2), 6, paint..color = Colors.red);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}


class HomeTask extends StatelessWidget{
  final String? end, title, firstName, secondName;

  const HomeTask({Key? key, this.end, this.title, this.firstName, this.secondName}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var color = const Color(0xff5A5BCF);
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(size.width/25),
          decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              border: Border.all(color: color, width: 2)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title!, style: const TextStyle(fontSize: 22 , fontWeight: FontWeight.bold , color: Colors.white),),
              Text("${firstName!} and ${secondName!}" , style: const TextStyle(fontSize: 12  , fontWeight: FontWeight.w500 , color: Colors.white70)),
              SizedBox(height: size.height/50,),
              Row(
                children: [
                  const CircleAvatar(backgroundImage: AssetImage('assets/images/profil.jpg')),
                  const CircleAvatar(backgroundImage: AssetImage('assets/images/profil.jpg')),
                  SizedBox(width: size.width/2),
                  Text(end! , style: const TextStyle(color: Colors.white70 ,fontSize: 15  , fontWeight: FontWeight.w500 ),)
                ],
              )
            ],
          ),
        ),
      ],
    );
  }}

class Review extends StatelessWidget{
  final String? number, state ;

  const Review({Key? key ,this.number, this.state}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var color = const Color(0xff5A5BCF);
    return Row(
      children: [
        Container(
          height: size.height /6,
          width: size.width /2.8,
          padding: EdgeInsets.all(size.width/25),
          decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              border: Border.all(color: color, width: 2)),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: size.height/60,),
                Text(number!, style: const TextStyle(color: Colors.white , fontSize: 40 , fontWeight: FontWeight.bold),),
                Text(state! , style: const TextStyle(color: Colors.white70 , fontSize: 20 , fontWeight: FontWeight.w400))
              ],
            ),
          ),
        ),
      ],
    );
  }}


class SmallReview extends StatelessWidget{
  final String? number, state ;

  const SmallReview({Key? key ,this.number, this.state}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var color = const Color(0xff5A5BCF);
    return Row(
      children: [
        Container(
          height: size.height /8,
          width: size.width /2.6,
          padding: EdgeInsets.all(size.width/25),
          decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              border: Border.all(color: color, width: 2)),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(number!, style: const TextStyle(color: Colors.white , fontSize: 40 , fontWeight: FontWeight.bold),),
                Text(state! , style: const TextStyle(color: Colors.white70 , fontSize: 20 , fontWeight: FontWeight.w400))
              ],
            ),
          ),
        ),
      ],
    );
  }}