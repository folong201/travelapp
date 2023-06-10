import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
      title: Row( 
        children: [
       Padding(
         padding: const EdgeInsets.only(right:15.0),
         child: CircleAvatar(child: Icon(Icons.person)),
       ),
          Text("second page")
        ],
      ),),
      body: Center(
        child: Text("second page centered Test"),
      ),
    );
  }
}