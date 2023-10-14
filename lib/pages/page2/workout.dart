import 'package:flutter/material.dart';
import 'package:qize/pages/page2/programs.dart';

class Workout extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(height: 30,),
          Row(
            children: [
              Image(image: AssetImage('assets/Ellipse 10.png')),
              Column(
                children: [
                  Row(children: [
                    Text('Hello,Jade',style: TextStyle(fontSize: 18)),
                  ],),
                  Row(children: [
                    Text('Ready to workout',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  ],),
                ],
              ),
              Spacer(),
              ImageIcon( AssetImage('assets/notifications_FILL0_wght400_GRAD0_opsz24.png'),)
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Image(image:AssetImage('assets/heart.png')),
                      SizedBox(width: 2,),
                      Text('Heart rate')
                    ],
                  ),
                  Row(
                    children: [
                      Text('81 BPM',style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  )
                ],
              ),
              SizedBox(width: 8,),
              Container(
                width: 3,
                height: 60,
                color: Color(0xffD9D9D9),
              ),
              SizedBox(width: 8,),
              Column(
                children: [
                  Row(
                    children: [
                      Image(image:AssetImage('assets/list.png')),
                      SizedBox(width: 2,),
                      Text('To-do')
                    ],
                  ),
                  Row(
                    children: [
                      Text('32.5 %',style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  )
                ],
              ),
              SizedBox(width: 8,),
              Container(
                width: 3,
                height: 60,
                color: Color(0xffD9D9D9),
              ),
              SizedBox(width: 8,),
              Column(
                children: [
                  Row(
                    children: [
                      Image(image:AssetImage('assets/Vector.png')),
                      SizedBox(width: 2,),
                      Text('Calo')
                    ],
                  ),
                  Row(
                    children: [
                      Text('1000 Cal',style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(children: [
            Text('Workout Programs',style: TextStyle(
                fontWeight:FontWeight.bold ,
                fontSize: 24
            ),),
          ],),
          SizedBox(height: 20,),
         /* Row(
            children: [
              TabBar(controller: ,
                  tabs:[
                    Tab(
                      text: 'All Type',
                    ),
                    Tab(
                      text: 'Full Body',
                    ),
                    Tab(
                      text: 'Upper',
                    ),
                    Tab(
                      text: 'Lower',
                    )
                  ]
              )
            ],
          ),
          SizedBox(height: 20,),*/
          Programs(text1: '7days', text2: 'Morning Yoga', text3: 'Improve mental Focuse.', path: 'assets/removal 2.png'),
          SizedBox(height: 20,),
          Programs(text1: '3days', text2: 'Plank Exercise', text3: 'Improve posture and stability.', path: 'assets/pngwing 1.png'),

        ],
      ),
    );
  }
}
