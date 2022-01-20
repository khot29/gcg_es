import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gcg_es/main.dart';
import 'package:gcg_es/myaccounts_tabs/address.dart';
import 'package:gcg_es/myaccounts_tabs/dashboard.dart';
import 'package:gcg_es/myaccounts_tabs/edit_profile.dart';
import 'package:gcg_es/myaccounts_tabs/enquiryhistory.dart';
import 'package:gcg_es/myaccounts_tabs/invoicehistory.dart';
import 'package:gcg_es/myaccounts_tabs/logout.dart';
import 'package:gcg_es/myaccounts_tabs/password.dart';
import 'package:gcg_es/myaccounts_tabs/shippinghistory.dart';

class myaccounts extends StatefulWidget {
  myaccounts({Key? key}) : super(key: key);

  @override
  _myaccountsState createState() => _myaccountsState();
}

class _myaccountsState extends State<myaccounts> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
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
          bottom: TabBar(
            isScrollable: true,
            tabs: [
            Tab(text: "Dashboard"),
            Tab(text: "Edit Profile"),
            Tab(text: "Enqiry History"),
            Tab(text: "Invoice History"),
            Tab(text: "Shipping History"),
            Tab(text: "Address"),
            Tab(text: "Password"),
            Tab(text: "Logout"),
          ]),
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
        body: TabBarView(children: [
          dashboard(),
          editprofile(),
          enquiryhistory(),
          invoicehistory(),
          shippinghistory(),
          address(),
          password(),
          logout(),
        ]),
      ),
    );
  }
}
