import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/details.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List Categories = [
    {
"icon name":Icons.laptop_rounded,
"label":"Labtop",
    },
    {
"icon name":Icons.phone_android_rounded,
"label":"phone",
    },
    {
"icon name":Icons.camera_alt_rounded,
"label":"Camera",
    },
    {
"icon name":Icons.tv_rounded,
"label":"TV",
    },
    {
"icon name":Icons.headphones,
"label":"Headphone",
    },
  ];
  List items =[
    {
"photo name":  "assets//iphone2.jpg",
 "label":"iphone 15pro" ,
  "price":"999\$" 
    },
    {
"photo name":  "assets//mac.jpg",
 "label":"iMac" ,
  "price":"3999\$" 
    }
 ,{
"photo name":  "assets//headphones.jpg",
 "label":"Headphone" ,
  "price":"350\$" 
    },
 {
"photo name":  "assets//camera.jpg",
 "label":"Camera" ,
  "price":"850\$" 
    }


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomNavigationBar(items:[
         BottomNavigationBarItem(icon:Icon (Icons.home), label:"*"),
         BottomNavigationBarItem(icon:Icon (Icons.shopping_bag), label:"*"),
         BottomNavigationBarItem(icon:Icon (Icons.person), label:"*"),
]),


body: Container(
  padding: EdgeInsets.all(20),
child: ListView(children: [
  Row(children: [
    Expanded(
      child: TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText:"Search",
        border: InputBorder.none,
      fillColor: Colors.grey[200],
      filled: true
      ),

    )),
    Padding(
      padding: EdgeInsets.only(left:10),
    child: Icon(Icons.menu, size:50,),
    )
   
  ],),
  Container(height: 30,),
  Text("Categories", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
Container(height: 20,),
Container(
  height: 100,
  child: ListView.builder(
    itemCount: Categories.length,
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, i) {
      return  Container(
           margin: EdgeInsets.only(right: 10),
           child:Column(children: [
    Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(100)
          ),
          child: Icon(Categories[i]['icon name'],size: 60),
          padding:EdgeInsets.all(10),
          ),
          Text(
          Categories[i]['label'],
            style: TextStyle(
              fontWeight: FontWeight.bold),
          )
      ],
    ),
      );
    }
  ),
),
    
    
Container(
  margin: EdgeInsets.symmetric(vertical: 10),
 child:Text("Most Popular", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
),
 ),
GridView.builder(
  itemCount: items.length,
  physics: NeverScrollableScrollPhysics(),
  shrinkWrap: true,
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 250), 

itemBuilder: (context, i) {
  return InkWell(
    onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Details(data:items[i] )));
    },
    child: Card(
      child: Column(
        children: [
    Container(
     padding: EdgeInsets.all(20),
    width: 300,
    color: Colors.grey[200],
    child: Image.asset(items[i]["photo name"],
     height: 100, fit: BoxFit.fill),
    ),
    Text(items[i]["label"], 
    style: TextStyle(
    fontSize: 14, fontWeight: FontWeight.bold)),
    
    Text(items[i]["price"], 
    style: TextStyle(
    fontSize: 14,
     color: Colors.grey,
     fontWeight: FontWeight.bold )),
    
    ],),
    ),
  );
})
]),
),
    );
  }
}