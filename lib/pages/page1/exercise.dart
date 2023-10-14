import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
 late Color color ;
 String path='';
 String exercise='';
 Exercise({required this.color ,required this.path,required this.exercise});
  @override
  Widget build(BuildContext context) {
    return Container(
      height:60 ,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color ,
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage('$path')),
          SizedBox(width: 5,),
          Text('$exercise',style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400 ),)
        ],
      ),
    );
  }
}
