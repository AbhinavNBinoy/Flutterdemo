import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class listt extends StatefulWidget {
  const listt({super.key});

  @override
  State<listt> createState() => _listtState();
}

class _listtState extends State<listt> {
  List<String> word =[];
  int a=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.builder(itemBuilder: ((context, index) {
      return index==a?Padding(
        padding: const EdgeInsets.fromLTRB(0,20,0,20),
        child: Container(child: IconButton(onPressed: (() {
          setState(() {
            word.add('hh');
            a=a+1;
          });
        }), icon: Icon(Icons.add,color: Colors.black,)),decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),border: Border.all(color: Colors.black)),),
      ):Padding(
        padding: const EdgeInsets.fromLTRB(0,20,0,0),
        child: Container(height: 50,child: Icon(Icons.android,color: Colors.black,),decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),border:Border.all(color: Colors.black) ),),
      );
    }),itemCount: word.length+1,),);
  }
}