import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
Random random=Random();
int x=4;
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title:
        Center(child:Text('Lottery App'
        ,style: TextStyle(
          fontSize: 20,
          ),),
        ),
      backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
       child:Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,

         children: [
            Center(child: Text('Lottery winning number is 4 ',style: TextStyle(
              fontSize: 20,
            ),)),

           Padding(
             padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
             child: Container(
               width: 270,
               height: 270,
               color: Colors.grey.withOpacity(0.2),
               child: x ==4?
               Padding(
                 padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,

                   children: [
                     Icon(Icons.done_all,color: Colors.green,
                     ),
                     Text("Congratulationn You have won the lottery\n your number is $x",textAlign: TextAlign.center,),
                   ],
                 ),
               ):
               Padding(
                 padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
                 child: Column(
                   children: [
                     Icon(Icons.error,   color: Colors.red,
                     ),
                     Text("Oops! The number you entered doesn't match\n your number is $x",textAlign: TextAlign.center,),
                   ],
                 ),
               ),




             ),
           ),
       
         ],

       ),
      ),
floatingActionButton: FloatingActionButton(onPressed: (){
  x=random.nextInt(6);
  setState(() {

  });

    },
    child: Icon(Icons.refresh),),
    ),
    );
  }
}


