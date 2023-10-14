import 'package:flutter/material.dart';

class Topics extends StatelessWidget {
  String path='';
  late String text1 ;
  late String text2 ;
  Topics({required this.text1,required this.text2,required this.path});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 600,
       height: 180,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      image: DecorationImage(image: AssetImage('$path'),
          fit: BoxFit.cover),
      ),
      child:Container(
        //width: 150,
       // height: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xffFEF0C7)
              ),
              child:  Text(text1,style: TextStyle(color: Color(0xff93370D))),
            ),
            Text(text2,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white)),
          ],
        ),
      )
    );
  }
}
