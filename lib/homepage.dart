// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_application_2/list.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool ischeck = true;
  bool _obscureText = true;
  String _obscureTextValue = 'Show';
  bool _validate=false;
  final _formkey = GlobalKey<FormState>();
  // void _toggle(){setState(() {
  //_obscureText=!_obscureText;
  // });}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 18, 17),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 150),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  'Log In',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                // ignore: prefer_const_constructors
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: SizedBox(
                    height: 70,
                    width: 400,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter some text';
                        }
                        return null;
                      },
                      controller: usernameController,
                      style: TextStyle(color: Colors.white),
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.redAccent),
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          errorBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.redAccent),
                           borderRadius: BorderRadius.all(Radius.circular(50))),
                           enabledBorder: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.redAccent),
                               borderRadius: BorderRadius.circular(30)),
                          // focusedBorder: OutlineInputBorder(
                          //     borderSide: BorderSide(color: Colors.redAccent),
                          //     borderRadius: BorderRadius.circular(30)),
                          hintText: 'Username',
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 244, 238, 238))),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 13),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: const Text('LOGIN'),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: SizedBox(
                  height: 70,
                  width: 400,
                  child: Container(height: 70,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter some text';
                        }
                        return null;
                      },
                      controller: passwordController,
                      obscureText: _obscureText,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        suffixIcon: Padding(
                          padding: EdgeInsets.fromLTRB(10, 15, 10, 0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            child: Text(
                              _obscureText ? "Show" : "Hide",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                         errorBorder:OutlineInputBorder(
                           // gapPadding: 10,
                             borderSide: BorderSide(color: Colors.redAccent,),
                             borderRadius: BorderRadius.circular(30),), 
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.redAccent),
                            borderRadius: BorderRadius.circular(30)),
                       focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.redAccent),
                            borderRadius: BorderRadius.circular(30)),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                    child: Checkbox(
                        value: ischeck,
                        side: BorderSide(color: Colors.white),
                        onChanged: (value) {
                          setState(() {
                            ischeck = !ischeck;
                          });
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                    child: Text(
                      'Remember me',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot password',
                          style: TextStyle(color: Colors.redAccent),
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 40,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: ElevatedButton(
                      onPressed: () {if(_formkey.currentState!.validate()){
                        
                      }
                        print(usernameController.text);
                          usernameController.text.isEmpty||passwordController.text.isEmpty?_validate=true:_validate=false;
                         if(_validate==false) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Listpage(
                                      username: usernameController.text,
                                      password: passwordController.text,
                                    )));}
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          textStyle: const TextStyle(color: Colors.white),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Text('Login')),
                ),
              ),
              SizedBox(
                height: 130,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(140, 20, 20, 30),
                child: Text(
                  'Or Sign in with',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                    child: Image.network(
                      'https://img.utdstc.com/icon/dca/e7e/dcae7e1859fae0ea28e192cf8dd36720f55ccbcccab1010106beac7351f03ccb:200',
                      height: 30,
                      width: 30,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 40),
                    child: Image.network(
                      'https://www.iconpacks.net/icons/2/free-twitter-logo-icon-2429-thumb.png',
                      height: 30,
                      width: 30,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 40),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHZy7zbUQ6OILJL2_LYex0dZz7iEKPAu74xA&usqp=CAU',
                      height: 30,
                      width: 30,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 40),
                    child: Image.network(
                      'https://cdn2.iconfinder.com/data/icons/social-media-2285/512/1_Instagram_colored_svg_1-512.png',
                      height: 30,
                      width: 30,
                      fit: BoxFit.scaleDown,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
                    child: Text(
                      'Dont have an account?',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Sign UP',
                          style: TextStyle(color: Colors.redAccent),
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
