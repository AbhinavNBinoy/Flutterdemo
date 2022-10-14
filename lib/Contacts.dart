import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/main.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  List<String> name = [
    'Abhinav',
    'George',
    'Abay',
    'Abhijeet',
    'Adithya',
    'Aharon',
    'Antony',
    'Azhrin',
    'Athul',
    'Balu',
    'Vishnu',
    'Ebin',
    'Fayez',
    'Gaurav',
    'Sebastein',
    'Gokul',
    'Johnson',
    'Kapil',
    'Leo',
    'Levin',
    'Nayan'
  ];
  List<MaterialColor> abc = [
    Colors.cyan,
    Colors.red,
    Colors.purple,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.purple,
    Colors.pink,
    Colors.red,
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.purple,
    Colors.red,
    Colors.pink,
    Colors.blue,
    Colors.red,
    Colors.purple,
    Colors.cyan,
    Colors.cyan,
    Colors.red,
  ];
  List<String> alph =['A','G','A','A','A','A','A','A','A','B','V','E','F','G','S','G','J','K','L','L','N'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Contacts',
          style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.add,
            size: 30,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.search,
            size: 30,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.info,
            size: 30,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: name.length,
            itemBuilder: ((context, index) {
              return Container(
                height: 60,
                child: Column(
                  children: [
                    Row(
                      children: [SizedBox(width: 20,),
                        SizedBox.fromSize(
                          size: Size(30, 30), // button width and height
                          child: ClipOval(
                            child: Material(
                              color: abc[index], // button color
                              child: InkWell(
                                splashColor: Colors.green, // splash color
                                onTap: () {}, // button pressed
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    // icon
                                    Text(alph[index],), // text
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),SizedBox(width: 20,),
                        Text(
                          name[index],
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                        
                      ],
                      
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.person,color: Colors.grey,),
                      ],
                    )
                  ],
                ),
                
              );
            })),
      ),
    );
  }
}
