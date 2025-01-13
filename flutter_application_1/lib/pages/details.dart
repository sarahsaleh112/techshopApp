import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final data;
  const Details({super.key, this.data});


  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomNavigationBar(items:[
         BottomNavigationBarItem(icon:Icon (Icons.home), label:"*"),
         BottomNavigationBarItem(icon:Icon (Icons.shopping_bag), label:"*"),
         BottomNavigationBarItem(icon:Icon (Icons.person), label:"*"),
]),
      endDrawer: Drawer(),
      appBar: AppBar(
       
        title:const Row( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(Icons.shop),
     Text("Tech", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold,fontSize: 26)),
        
     Text("shop", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 26)),
        ]),
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor:Colors. grey[200],
        elevation: 0.0,
        ),
body: ListView(children: [
Image.asset(widget.data['photo name']),
Container(child: Text(widget.data['label'], textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),),),
Container( margin: EdgeInsets.only(top:10, bottom: 10),
  child: Text(widget.data['price'], textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue),
)),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text("Color:",style:TextStyle( fontWeight:FontWeight.bold,)),
    SizedBox(width: 20),
    Container(height: 20,width: 20,decoration: BoxDecoration(
      color: Colors.grey,
      borderRadius: BorderRadius.circular(30),
    ),),
    Text("grey",style:TextStyle( fontWeight:FontWeight.bold,)),
    SizedBox(width: 20),
    Container(height: 20,width: 20,decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(30),
      
    ),),
    Text("black",style:TextStyle( fontWeight:FontWeight.bold,)),
  ],
  
),


Container(
  
  margin: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
  child: MaterialButton(
    
    color: Colors.black,
    textColor: Colors.white,
    onPressed: () {}, child: Text("Add to Cart"),
  ),
),

    ],),





    );
  }
}