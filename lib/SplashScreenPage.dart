import 'package:flutter/material.dart';
import 'package:new_app/Homepage.dart';

class Splashscreenpage extends StatefulWidget {
  const Splashscreenpage({super.key, required this.title});

  final String title;

  @override
  State<Splashscreenpage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<Splashscreenpage> {
    void initState() {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.push(context,
       //MaterialPageRoute(builder: (context) => MyHomePage(title: "Home Screeen Page"),
              MaterialPageRoute(builder: (context) => MyHomePage(title: "Home Screeen Page"),
       ),
       );

    });
   
    super.initState();}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     
      body: 
      Container(
        color: const Color.fromARGB(255, 0, 0, 0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          
            children: [
              Container(
                  child:Image.asset('assets/logo/ram.png')
                 ),
          
              Container(
                child: Text('Software Engineer',style: 
                TextStyle(fontSize: 30,fontWeight:
                 FontWeight.bold,color: const Color.fromARGB(255, 255, 255, 255)),
                 ),
                 
                 ),
                 
            ],
          ),
        ),
      ),
      

       );
  }
}