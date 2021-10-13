import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //ustteki seffafligi kaldiriyor
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
    ));
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.8), BlendMode.dstATop),
              ),
            ),
            width: screenSize.width,
            height: screenSize.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Icon(
                  //   Icons.camera_outdoor_sharp,
                  //   size: 180,
                  // ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 40,
                        height: 80,
                      ),
                      Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 40, left: 40),
                          child: TextField(
                            decoration: new InputDecoration(
                              isDense: true,
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1),
                              ),
                              hintText: 'Username',
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 40, right: 40),
                          child: TextField(
                            decoration: new InputDecoration(
                              isDense: true,
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1),
                              ),
                              hintText: 'Password',
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 40, right: 40),
                          child: ElevatedButton(
                              onPressed: (() {}),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.red,
                                  textStyle: TextStyle(
                                    fontSize: 17,
                                  )),
                              child: Text("Login",
                                  style: TextStyle(fontFamily: "Caveat"))),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 40,
                            height: 50,
                          ),
                          Text("Signup", style: TextStyle(color: Colors.white))
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Forgot password?",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 40,
                            height: 50,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login or Signup with",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.google,
                      ),
                      SizedBox(width: 15),
                      Icon(FontAwesomeIcons.facebook)
                    ],
                  ),
                ],
              ),
            )));
  }
}
