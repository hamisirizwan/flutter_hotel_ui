import 'package:flutter/material.dart';
import 'package:hotel_ui/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.8, 1),
                colors: <Color>[
                  Color(0xff004d40),
                  Color(0xFF00695C),
                  Color(0xFF00796B),
                  Color(0xFF26A69A),
                  Color(0xFF4DB6AC),
                  Color(0xFF80CBC4),
                  Color(0xFFB2DFDB),
                  Color(0xFFE0F2F1),
                ], // Gradient from https://learnui.design/tools/gradient-generator.html
                tileMode: TileMode.mirror,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 90.0),
              child: Column(
                children: [
                  //title
                  Text(
                    "WELCOME BACK,",
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                    // textAlign: TextAlign.center,
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "LOGIN",
                    style: TextStyle(
                        color: Colors.green[400],
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //field 1
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                    child: TextField(
                      // controller: _titlecontroller,
                      decoration: const InputDecoration(
                        hintText: 'Enter Username',
                        labelText: "Username",
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  //field 2
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                    child: TextField(
                      // controller: _titlecontroller,
                      decoration: const InputDecoration(
                        hintText: 'Enter Password',
                        labelStyle: TextStyle(color: Colors.white),
                        labelText: "Password",
                      ),
                    ),
                  ),
                  //button
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50),
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: const Text("SUCCESS"),
                              content: const Text("loged in successfully"),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HomePage(),
                                      ),
                                      (Route<dynamic> route) => false,
                                    );
                                  },
                                  child: Container(
                                    // color: Colors.green,
                                    padding: const EdgeInsets.all(14),
                                    child: const Text("okay"),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        child: Text("Login Now"),
                      ),
                    ),
                  ),
                  //forget password
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
