import 'package:flutter/material.dart';
import 'package:qize/pages/page3/topics.dart';

class Newsscreen extends StatefulWidget {

  @override
  State<Newsscreen> createState() => _NewsscreenState();
}

class _NewsscreenState extends State<Newsscreen> {
  bool chip1=false;
  bool chip2=false;
  bool chip3=false;
  bool chip4=false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(height: 30,),
           Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/Flower.png')),
                Text('AliceCare',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20 ),)
              ],
            ),
          SizedBox(height: 20,),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Articles,Videos,Audio,andmore...',
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(children: [
            FilterChip(label:Text('Discover'),
                selected:chip1,
              selectedColor: Color(0xffD6BBFB),
              onSelected: (newvalue){
              chip1=newvalue;
              setState(() {});
              },
              showCheckmark: false,
            ),
            FilterChip(label:Text('News'),
              selected:chip2,
              selectedColor: Color(0xffD6BBFB),
              onSelected: (newvalue){
                chip2=newvalue;
                setState(() {});
              },
              showCheckmark: false,
            ),
            FilterChip(label:Text('Most Viewed'),
              selected:chip3,
              selectedColor: Color(0xffD6BBFB),
              onSelected: (newvalue){
                chip3=newvalue;
                setState(() {});
              },
              showCheckmark: false,
            ),
            FilterChip(label:Text('Saved'),
              selected:chip4,
              selectedColor: Color(0xffD6BBFB),
              onSelected: (newvalue){
                chip4=newvalue;
                setState(() {});
              },
              showCheckmark: false,
            ),
          ],),
          SizedBox(height: 20,),
          Row(
            children: [
              Text(
                'Hot topics',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Spacer(),
              Text(
                'See all >',
                style: TextStyle(
                    color: Color(0xff5925DC),
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
              )
            ],
          ),
          SizedBox(height: 20,),
          Topics(
              text1: 'SELF-CARE',
              text2: '10 Easy Self-Care Ideas That Can Help Boost Your Health',
              path: 'assets/backgroundcont1.png'),
          SizedBox(height: 15,),
          Row(
            children: [
              Text(
                'Get Tips',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Container(
            height:160 ,
            width: 340,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffE4E7EC)),
            child: Row(
              children: [
                Image(image: AssetImage('assets/Doctor-PNG-Images 1.png')),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                     width: 152,
                    height: 130,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Connect with doctors & get suggestions',
                          style:
                              TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Connect now and get expert insights',
                          style: TextStyle(fontSize: 16),
                        ),
                        Expanded(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff7F56D9),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15))),
                              onPressed: () {},
                              child: Text('Veiw detail')),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
         // SizedBox(height: 10,),
          Row(
            children: [
              Text(
                'Cycle Phases and Period',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Spacer(),
              Text(
                'See all >',
                style: TextStyle(
                    color: Color(0xff5925DC),
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
              )
            ],
          ),
        ],
      ),
    );
  }
}