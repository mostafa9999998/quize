import 'package:flutter/material.dart';
import 'package:qize/pages/page1/avataricon.dart';
import 'package:qize/pages/page1/exercise.dart';

class Moodyscreen extends StatelessWidget {
  const Moodyscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(height: 30,),
          Row(
            children: [
              Image(image:AssetImage('assets/logo.png')),
              Text('Moody', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
              Spacer(),
              Badge(
                backgroundColor: Colors.red,
                child: ImageIcon( AssetImage('assets/notifications_FILL0_wght400_GRAD0_opsz24.png'),),
              )

            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text('Hello,',style:TextStyle(fontSize:24 ),),
              Text('Sara Rose',style:TextStyle(fontSize:24,fontWeight: FontWeight.bold ),),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text('How are you feeling today?',style:  TextStyle(fontSize: 18 ),)
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Feeling(path: 'assets/love.png', feel: 'Love'),
              Feeling(path: 'assets/cool.png', feel: 'Cool'),
              Feeling(path: 'assets/happy.png', feel: 'Happy'),
              Feeling(path: 'assets/sad.png', feel: 'Sad'),
            ],
          ),
          Spacer(),
          Row(
            children: [
              Text('Exercise',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Spacer(),
              Text('See more >',style: TextStyle(color: Color(0xff027A48),fontWeight: FontWeight.w400,fontSize:18 ),)
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Exercise(color: Color(0xfff7f3fe), path: 'assets/relaxation.png', exercise: 'Relaxation'),
              Spacer(),
              Exercise(color: Color(0xfffbf0f9), path: 'assets/meditation.png', exercise: 'Medetation'),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Exercise(color: Color(0xfffdf8f4), path: 'assets/beathing.png', exercise: 'Beathing'),
              Spacer(),
              Exercise(color: Color(0xffeef7fe), path: 'assets/yoga.png', exercise:'Yoga' ),
            ],
          )
        ],
      ),
    );
  }
}
