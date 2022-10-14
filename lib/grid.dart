import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class gridview extends StatefulWidget {
  const gridview({super.key});

  @override
  State<gridview> createState() => _gridviewState();
}

class _gridviewState extends State<gridview> {
  List<String> word = [];
  List<String> input =[];

  bottomsheet() {
    showModalBottomSheet(
        context: context,
        builder: ((context) {
          
          return Container(
            child: Column(
              children: [
                TextFormField(
                  controller: _input,
                  decoration: InputDecoration(hintText: 'enter a word:'),
                ),
                ElevatedButton(
                    onPressed: (() { Navigator.pop(context);
                     setState(() {
                                word.add("ggg");
                                input.add(_input.text);
                                a = a + 1;
                              });}),
                    child: const Text('Close bottomsheet'))
              ],
            ),
          );
        }));
  }

  TextEditingController _input = TextEditingController();
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Grid View',style: TextStyle(color: Colors.white),),backgroundColor: Colors.red,),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: word.length + 1,
          itemBuilder: (BuildContext ctx, index) {
            return index == a
                ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {
                               
                                bottomsheet();
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.black,
                              ))
                        ],
                      ),
                    ),
                )
                : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Center(child: Text(input[index])),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black)),
                    ),
                );
          }),
    );
  }
}
