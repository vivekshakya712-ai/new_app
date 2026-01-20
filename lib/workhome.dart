import 'package:flutter/material.dart';

class Workhome extends StatefulWidget {
  const Workhome({super.key, required this.title});

  final String title;

  @override
  State<Workhome> createState() => _workhomePageState();
}

class _workhomePageState extends State<Workhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 251, 251),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: 
      Text('')
      
      );
      
      
    
  }
}