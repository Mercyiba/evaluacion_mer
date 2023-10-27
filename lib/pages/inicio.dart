import 'package:flutter/material.dart';

class Inicio extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Center(
     child: Column (
       mainAxisAlignment: MainAxisAlignment.center,
       children: [

         Icon(Icons.person,
           color: Colors.pinkAccent),

         SizedBox(height: 20,),
         Text('Register',
           style: TextStyle(
             fontWeight: FontWeight.bold,
             fontSize: 30,
             fontFamily: 'RobotoCondensed' ,
             color: Colors.blue,),
         ),
         SizedBox(height: 40,),
         Padding(
           padding: const EdgeInsets.only(left: 50, right: 50),
           child: TextField(
             obscureText: true,
             decoration: InputDecoration(
               border: OutlineInputBorder(),
               labelText: 'Your name',
             ),
           ),
         ),
         SizedBox(height: 20, ),
         Padding(
           padding: const EdgeInsets.only(left: 50, right: 50),
           child: TextField(
             obscureText: true,
             decoration: InputDecoration(
               border: OutlineInputBorder(),
               labelText: 'Email Adrees',
             ),
           ),
         ),
     
         SizedBox(height: 20,),
         Padding(
           padding: const EdgeInsets.only(left: 50, right: 50),
           child: TextField(
             obscureText: true,
             decoration: InputDecoration(
               border: OutlineInputBorder(),
               labelText: '*****',
             ),
           ),
         ),
         SizedBox(height: 20,),
         ElevatedButton(
             onPressed:(){
             },
             child: Text('Register'))
       ],
     ),

   );
  }

}