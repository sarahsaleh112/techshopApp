import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/signupPage.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
backgroundColor: const Color.fromARGB(255, 193, 224, 249),
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children:  [
      Container(

       child: Icon(Icons.shop,size: 250,color: Colors.white,),
       
      ),
      
       Container (
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: const [
             Text("Tech",style:TextStyle( fontWeight:FontWeight.bold,color: Color.fromARGB(255, 16, 108, 183),fontSize: 70)),
              Text("shop",style:TextStyle( fontWeight:FontWeight.bold,fontSize: 70)),
             SizedBox(width: 20),
              ],
       ),
  
  ),
  Container(
  margin: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
  child: MaterialButton(
    
    color: const Color.fromARGB(255, 249, 247, 247),
    textColor: const Color.fromARGB(255, 12, 12, 12),
    onPressed: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignupPage()));
    }, child: Text("sign up"),
  ),
),
Container(
  margin: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
  child: MaterialButton(
    
    color: const Color.fromARGB(255, 249, 247, 247),
    textColor: const Color.fromARGB(255, 12, 12, 12),
    onPressed: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login()));
    }, child: Text("log in"),
  ),
),
]),

    ));
    
  }
}