import 'package:flutter/material.dart';

class Feeling extends StatelessWidget {
  String path='';
  String feel='';
  Feeling({required this.path,required this.feel});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
         children: [
           Container(
             child: Image(image: AssetImage('$path')),
           ),
           Text('$feel',style: TextStyle(fontSize: 18 ),)
         ],
      ),
    );
  }
}
