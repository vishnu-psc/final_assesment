// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Get_Started(),
    theme: ThemeData(primarySwatch: Colors.indigo),
    debugShowCheckedModeBanner: false,
  ));
}

class Get_Started extends StatelessWidget {
  const Get_Started({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(padding: EdgeInsets.all(50.0)),
            Center(
              child: Text(
                "TRAINING",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.deepPurple,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Image.network(
              "https://dataprivacymanager.net/wp-content/uploads/2022/01/Your-Simple-Guide-to-Common-Vulnerabilities-And-Exposures--1536x864.webp",
              height: 280,
              width: 335,
            ),
            Padding(padding: EdgeInsets.only(top: 40, bottom: 30)),
            SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return User_login();
                  }));
                },
                child: Text("Get Started"),
                style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
              ),
              width: 300,
            ),
          ],
        ),
      ),
    );
  }
}

TextEditingController c1 = TextEditingController();
TextEditingController c2 = TextEditingController();

class User_login extends StatefulWidget {
  const User_login({Key? key}) : super(key: key);

  @override
  State<User_login> createState() => _User_loginState();
}

class _User_loginState extends State<User_login> {
  String name = "";
  bool changeButton = false;
  var _formkey = GlobalKey<FormState>();

  String? _nameError = null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("Fun app"),
              centerTitle: true,
            ),
            backgroundColor: Colors.white,
            body: Form(
              key: _formkey,
              child: ListView(children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 35, top: 100),
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 45,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please enter Username';
                          }
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: "Enter Username",
                          labelText: "Student Name",
                          // labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please enter Email ID';
                          }
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: "Enter Email ID",
                          labelText: "Email ID",
                          // labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                          child: Text("Login"),
                          style:
                              TextButton.styleFrom(minimumSize: Size(320, 40)),
                          onPressed: () {
                            setState(() {
                              if (_formkey.currentState!.validate()) {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Training_completion();
                                  // Navigator.pushNamed(context, MyRoutes.FinalRoute);
                                }));
                              }
                            });
                          }),
                    ],
                  ),
                )
              ]),
            )));
  }
}

// TextEditingController name=c1;
class Training_completion extends StatelessWidget {
  // const Training_completion({Key? key}) : super(key: key);
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Hi,${c1.text}",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.normal),
              ),
            ),
            Image.network(
              "https://officetemplatesonline.com/wp-content/uploads/2022/04/certificate-of-project-completion.jpg",
              // fit: BoxFit.cover,
              height: 280,
              width: 335,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                bottom: 50,
                left: 10,
              ),
              child: Container(
                child: Text(
                  "You have Successfully Completed \n Hybrid Mobile App Development Course.",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  "INSTRUCTOR NAME",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                alignment: Alignment.bottomLeft,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 5, left: 8.0, right: 8.0, bottom: 30),
              child: Container(
                child: Text(
                  "Pankaj Kapoor",
                  style: TextStyle(fontSize: 24),
                ),
                alignment: Alignment.bottomLeft,
              ),
            ),
            Container(
              child: Text(
                "Date ${today.day}-${today.month}-${today.year}",
                style: TextStyle(fontSize: 20),
              ),
              alignment: Alignment.bottomRight,
            )
          ],
        ),
      ),
    );
  }
}
