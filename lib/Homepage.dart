import 'package:flutter/material.dart';
import 'package:new_app/workhome.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 83, 79, 79),
      appBar: AppBar(
      
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              child: Image.asset(
                'assets/logo/ram.png',
                fit: BoxFit.cover, // so image scales properly
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 300, left: 30, right: 30, bottom: 30),
              child: Container(
                height: 550,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 189, 99, 99),
                      spreadRadius: 8,
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 120,right: 50),
                        child: Text(
                          
                          'LogIn',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,color: Color.fromARGB(255, 6, 5, 5),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text('Email',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                        const SizedBox(height: 15),
                      const TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_outlined),
                          labelText: 'Enter your Email',hintStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                          border: OutlineInputBorder()
        
                        ),
        
                      ),
                       const SizedBox(height: 15),
                      const Text('Password',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                        const SizedBox(height: 15),
                        const TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_outlined),
                          labelText: 'Enter your Email',hintStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                          border: OutlineInputBorder()
        
                        ),
        
                      ),
                        
                      const Padding(
                        padding: EdgeInsets.only(left: 110,top: 10),
                        child: Text('Forgot Password?',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      ),
                       Padding(
                       padding: const EdgeInsets.only(left: 55,top: 15),
                       child: Container(
                         height: 70
                       ,width: 200,
                                     decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(30)
                                   ),
                                   child: TextButton(onPressed: (){
                                  Navigator.push(context,
                                   MaterialPageRoute(builder: (context) => const Workhome(title: "Home Screeen Page"),
                              ),
                             );
                             }, child: const Text('LogIn',style: TextStyle(fontSize: 30,fontWeight:
                                    FontWeight.bold,color: Colors.white),)
                                    )
                                    ),
                                  ),
                                const Padding(
                                padding: EdgeInsets.only(left: 35,top: 10),
                                child: Text("Don't have account? SignUP ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              )
                     
        
        
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}