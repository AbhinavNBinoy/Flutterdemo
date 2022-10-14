import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<String> color = [
    'Cool Blue,64GB',
    'Cool Blue',
    'Power Black',
    'Yellow',
    'Power Black',
    'Yellow'
  ];
  List<String> pic = [
    'https://rukminim1.flixcart.com/image/416/416/l2jcccw0/mobile/i/p/o/-original-imagdu8j9vxscfdh.jpeg?q=70',
    'https://rukminim1.flixcart.com/image/416/416/l2jcccw0/mobile/i/p/o/-original-imagdu8j9vxscfdh.jpeg?q=70',
    'https://rukminim1.flixcart.com/image/832/832/l2jcccw0/mobile/i/1/y/-original-imagdu8gtefvchbn.jpeg?q=70',
    'https://rukminim1.flixcart.com/image/832/832/l2jcccw0/mobile/g/l/5/-original-imagdu8j9k3ejjc3.jpeg?q=70',
    'https://rukminim1.flixcart.com/image/832/832/l2jcccw0/mobile/i/1/y/-original-imagdu8gtefvchbn.jpeg?q=70',
    'https://rukminim1.flixcart.com/image/832/832/l2jcccw0/mobile/g/l/5/-original-imagdu8j9k3ejjc3.jpeg?q=70',
  ];
  List<String> names = [
    'POCO M4 5G (Cool Blue,64 GB)',
    'POCO M4 5G (Cool Blue,128 GB)',
    'POCO M4 5G (Power Black,64 GB)',
    'POCO M4 5G (Yellow,64 GB)',
    'POCO M4 5G (Power Black,128 GB)',
    'POCO M4 5G (Yellow, 128 GB)'
  ];
  List<String> abc = [
    '#just here',
    '#just here',
    '#just here',
    '#just here',
    '#just here',
    '#just here'
  ];
  List<String> h = [
    '(20,515)',
    '(9,946)',
    '(20,515)',
    '(20,515)',
    '(9,946)',
    '(9,946)'
  ];
  List<String> price = [
    '15,999',
    '18,999',
    '15,999',
    '15,999',
    '18,999',
    '18,999'
  ];
  List<String> price1 = [
    '10,999',
    '12,999',
    '10,999',
    '10,999',
    '12,999',
    '12,999'
  ];
  List<String> space = [
    '4 GB RAM | 64 GB Storage',
    '6 GB RAM | 128 GB Stoarge',
    '4 GB RAM | 64 GB Storage',
    '4 GB RAM | 64 GB Storage',
    '6 GB RAM | 128 GB Stoarge',
    '6 GB RAM | 128 GB Stoarge'
  ];
  List<double> _config = [4, 3, 4, 3, 4, 4];
  List<double> _ss = [35, 30, 18, 58, 10, 43];
  List<bool> LikedList =[];
  bool heart = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 243, 244, 244),
          title: Text(
            'POCO M4 5G',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            SizedBox(
              width: 14,
            ),
            Icon(
              Icons.mic,
              color: Colors.black,
            ),
            SizedBox(
              width: 14,
            ),
            Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
            ),
            SizedBox(
              width: 14,
            ),
            Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            SizedBox(
              width: 13,
            )
          ],
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              itemCount: color.length,
              itemBuilder: ((context, index) {
                LikedList.add(false);
                return Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 160,
                                width: 90,
                                child: Image.network(pic[index])),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Text(
                                    names[index],
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(
                                    width: _ss[index],
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        LikedList[index]=!LikedList[index];
                                      });
                                    },
                                    child: Icon(
                                        LikedList[index]
                                            ? Icons.favorite_sharp
                                            : Icons.favorite_outline,
                                        color:
                                            LikedList[index] ? Colors.red : Colors.black),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    abc[index],
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 12, 0, 0),
                                    child: RatingBar.builder(
                                        initialRating: _config[index],
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        itemCount: 5,
                                        itemSize: 12,
                                        itemBuilder: ((context, index) => Icon(
                                              Icons.star,
                                              size: 5,
                                              color: Colors.amber,
                                            )),
                                        onRatingUpdate: ((value) {})),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      h[index],
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  Container(
                                      height: 35,
                                      width: 50,
                                      child: Image.network(
                                          'https://www.adgully.com/img/800/68264_fl.png.jpg')),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Row(
                                  children: [
                                    Text(
                                      price[index],
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.grey),
                                    ),
                                    Icon(Icons.currency_rupee),
                                    Text(
                                      price1[index],
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '31 % off',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                'Free delivery',
                                style: TextStyle(color: Colors.black),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 8.0, 8.0, 8.0),
                                child: Container(
                                  height: 18,
                                  width: 70,
                                  color: Color.fromARGB(255, 229, 187, 236),
                                  child: Center(
                                      child: Text(
                                    'Sales Price Live',
                                    style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                              Row(
                                children: [
                                  Text('Upto'),
                                  Icon(Icons.currency_rupee),
                                  Text(
                                    '12,400',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    ' Off on Exchange',
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 8.0, 0, 0),
                        child: Container(
                          height: 20,
                          width: 200,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black26, width: 0.4)),
                          child: Center(
                              child: Text(
                            space[index],
                            style: TextStyle(color: Colors.grey),
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 8.0, 0, 0),
                        child: Row(
                          children: [
                            Container(
                              height: 20,
                              width: 250,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black26, width: 0.4)),
                              child: Center(
                                  child: Text(
                                '16.71 cm (6.58 inch) Full HD+ Display',
                                style: TextStyle(color: Colors.grey),
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16.0, 0, 0, 0),
                              child: Container(
                                height: 20,
                                width: 70,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black26, width: 0.4)),
                                child: Center(
                                    child: Text(
                                  '5000 mAh',
                                  style: TextStyle(color: Colors.grey),
                                )),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 8.0, 0, 0),
                        child: Row(
                          children: [
                            Container(
                              height: 20,
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black26, width: 0.4)),
                              child: Center(
                                child: Text(
                                  '50MP + 2MP',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16.0, 0, 0, 0),
                              child: Container(
                                height: 20,
                                width: 150,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black26, width: 0.4)),
                                child: Center(
                                  child: Text(
                                    '8 MP Front Camera',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              })),
        ));
  }
}
