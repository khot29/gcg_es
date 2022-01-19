import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gcg_es/main.dart';

class myaccounts extends StatefulWidget {
  myaccounts({Key? key}) : super(key: key);

  @override
  _myaccountsState createState() => _myaccountsState();
}

class _myaccountsState extends State<myaccounts> {
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
              height: 26,
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
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => homepage()));
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
    );
  }
}