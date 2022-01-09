import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import 'login.dart';
import 'register.dart';
import 'splash.dart';
// import 'package:iqra_technology/pages/login.dart';
// import 'package:iqra_technology/pages/register.dart';

// import 'pages/splash.dart';

// onTap: () {
//   Navigator.push(context,
//       MaterialPageRoute(builder: (context) => register()));
// },

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GCG Enterprise Solution",
      home: splash(),
      theme: ThemeData(
          hintColor: Color(0xAE000000),
          primaryColor: Color(0xFF000000),
          backgroundColor: Color(0xFFFFD333)),
    );
  }
}

//Home Page//

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffd333),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain,
              height: 32,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => homepage()));
            },
            icon: Icon(Icons.search),
            // focusColor: Color(0xFFFFD333),
            // hoverColor: Color(0xFFFFD333),
            // splashColor: Color(0xFFFFD333),
            // highlightColor: Color(0xFFFFD333),
          ),
          IconButton(
            onPressed:() {
              Navigator.push(context,MaterialPageRoute(builder: (context) => homepage()));
            },
            icon: Icon(Icons.favorite_outline),
            // focusColor: Color(0xFFFFD333),
            // hoverColor: Color(0xFFFFD333),
            // splashColor: Color(0xFFFFD333),
            // highlightColor: Color(0xFFFFD333),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => homepage()));
            },
            icon: Icon(Icons.shopping_cart_outlined),
            // focusColor: Color(0xFFFFD333),
            // hoverColor: Color(0xFFFFD333),
            // splashColor: Color(0xFFFFD333),
            // highlightColor: Color(0xFFFFD333),
          ),
        ],
      ),
      body: Container(
        
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: Text("Menu",style: TextStyle(fontWeight: FontWeight.bold),),
              hoverColor: Color(0xFFFFFFFF),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homepage()));
              },
            ),
            ListTile(
              title: Text("Home"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homepage()));
              },
            ),
            ListTile(
              title: Text("Shop"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homepage()));
              },
            ),
            ListTile(
              title: Text("All Categories"),      
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homepage()));
              },
            ),
            ListTile(
              title: Text("Login"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => login()));
              },
            ),
            ListTile(
              title: Text("Register"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => register()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
