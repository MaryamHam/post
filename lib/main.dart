import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Color c = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
  debugShowCheckedModeBanner: false,
home: Scaffold(

  appBar: AppBar(
    backgroundColor: Color.fromARGB(255, 21, 8, 167),
    title: Text("Posts",
    style: TextStyle(fontSize: 20,color: Colors.white),) ,
 ),

  body: Center(
    child: Container(
      width: 400,
      height: 460,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 229, 226, 226),
        boxShadow: [BoxShadow(color: Color.fromARGB(255, 172, 170, 170),
        offset: Offset(5, 5),
        blurRadius: 4),
        
        BoxShadow(color: Color.fromARGB(255, 172, 170, 170),
        offset: Offset(-5, -5),
         blurRadius: 4
        ),
        
        ],

         ),
      child: Column(
        
        children: [
       Row(
        mainAxisAlignment: MainAxisAlignment.start,
    
        children: [
          Container(
            margin: EdgeInsets.only(left: 20 ,top: 10,),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/photo.jpg"),
            ),
          ),
    
          Container(
            margin: EdgeInsets.only(left: 20 ,top: 15,),
            child: Text(
              "Maryam AlGharibi",
              style: TextStyle(fontWeight: FontWeight.bold,
              color: Colors.black),
            ),
          ),
    
        ],
       ),
    
       Container(
        height: 280,
        width: 400,
        margin: EdgeInsets.only(top: 20),
        child: Image(image: AssetImage("assets/photo.jpg"), fit: BoxFit.cover,)),
    
        Container(
          child: Row(
          children: [
           Column(
            children: [
              IconButton(onPressed: (){
                c = Colors.red;
                setState(() {
                  
                });
              }
              ,icon: Icon(Icons.favorite), color: c,),
              Text("100"),
            ],
           ),

           Column(
            children: [
               IconButton(onPressed: (){
              }
              ,icon: Icon(Icons.comment), color: Colors.grey,),
              Text("100"),
            ],
           ),


          ],

          ),
        ),
    
      ],),
    ),
  ),

),);
  }
}