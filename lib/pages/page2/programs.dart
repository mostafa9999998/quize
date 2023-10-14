import 'package:flutter/material.dart';

class Programs extends StatelessWidget {
 late String text1 ;
 late String text2 ;
 late String text3 ;
 String path='';
 Programs({required this.text1,required this.text2,required this.text3,required this.path});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
            color: Color(0xffdee1e8)
      ),
      child: Row(
        children: [
          Container(
          width: 140,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white
                  ),
                  child: Text('$text1',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300)),
                ),
                Text('$text2',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
                Text('$text3'),
                Row(
                  children: [
                   Icon(Icons.schedule),
                    Text('30 mins')
                  ],
                )
              ],
            ),
          ),
          Expanded(child: Image(image: AssetImage('$path')))
        ],
      ),
    );
  }
}
