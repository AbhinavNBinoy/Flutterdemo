

import 'dart:ffi';

import 'package:flutter/material.dart';

class Listpage extends StatefulWidget {

  String? username;
  String? password;
  
   Listpage({super.key,required this.username,required this.password});

  @override
  State<Listpage> createState() => _ListpageState();
}

class _ListpageState extends State<Listpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height: 40,width: MediaQuery.of(context).size.width,
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Email:'),
                  Text(widget.username.toString()),
                ],
              ),color: Colors.yellow,),
            ),
            
         
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(height: 40,width: MediaQuery.of(context).size.width,child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Password:'),
              Text( widget.password.toString()),
              
            ],
          ),color: Colors.yellow,),
        ),
        ],),
      )
    );
  }
}