import 'dart:html';

import 'package:flutter/material.dart';
import 'package:gcg_es/login.dart';
import 'package:gcg_es/main.dart';
import 'package:gcg_es/register.dart';

import 'contact.dart';
import 'myaccounts_tabs/myacc_Main.dart';

class shop extends StatefulWidget {
  const shop({Key? key}) : super(key: key);

  @override
  State<shop> createState() => _shopState();
}

class _shopState extends State<shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffd333),
        // title: Text(
        //   "Shop",
        //   style: TextStyle(fontWeight: FontWeight.bold),
        // ),
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
                  context, MaterialPageRoute(builder: (context) => shop()));
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
                  context, MaterialPageRoute(builder: (context) => shop()));
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
                  context, MaterialPageRoute(builder: (context) => shop()));
            },
            icon: Icon(Icons.shopping_cart_outlined),
            // focusColor: Color(0xFFFFD333),
            // hoverColor: Color(0xFFFFD333),
            // splashColor: Color(0xFFFFD333),
            // highlightColor: Color(0xFFFFD333),
          ),
        ],
      ),
      body: Column(
        children: [
          // Divider(color: Color.fromARGB(80, 0, 0, 0),height: 1,)
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: Column(
                  children: [
                    
                  ],
                ),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          // padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
          children: <Widget>[
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.amberAccent),
                // currentAccountPicture: CircleAvatar(backgroundImage: ,),
                accountName: Text("Owais Patel"),
                accountEmail: Text("owaispatel75@gmail.com")),

            // ListTile(
            //   title: Text(
            //     "Menu",
            //     style: TextStyle(fontWeight: FontWeight.bold),
            //   ),
            //   hoverColor: Color(0xFFFFFFFF),
            //   onTap: () {
            //     // Navigator.push(context,
            //     //     MaterialPageRoute(builder: (context) => homepage()));
            //   },
            // ),
            ListTile(
              title: Text("Home"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => shop()));
              },
            ),
            ListTile(
              title: Text("Shop"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => shop()));
              },
            ),
            ExpansionTile(
              expandedAlignment: Alignment.center,
              title: Text("All Categories"),
              children: <Widget>[
                Text("Printer"),
                SizedBox(height: 30),
                Text("Toners"),
                SizedBox(height: 30),
                Text("Service"),
                SizedBox(height: 30),
              ],
            ),
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
            //   child: Column(
            //     children: [
            //       ListTile(
            //         title: Text("Printer"),
            //         onTap: () {
            //           Navigator.push(context,
            //               MaterialPageRoute(builder: (context) => homepage()));
            //         },
            //       ),
            //       ListTile(
            //         title: Text("Toners"),
            //         onTap: () {
            //           Navigator.push(context,
            //               MaterialPageRoute(builder: (context) => homepage()));
            //         },
            //       ),
            //       ListTile(
            //         title: Text("Service"),
            //         onTap: () {
            //           Navigator.push(context,
            //               MaterialPageRoute(builder: (context) => homepage()));
            //         },
            //       ),
            //     ],
            //   ),
            // ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => myaccounts()));
              },
              child: ExpansionTile(
                title: Text("My Accounts"),
                children: <Widget>[
                  Text("Dashboard"),
                  SizedBox(height: 30),
                  Text("Edit Profile"),
                  SizedBox(height: 30),
                  Text("Enqiry History"),
                  SizedBox(height: 30),
                  Text("Invoice History"),
                  SizedBox(height: 30),
                  Text("Shipment History"),
                  SizedBox(height: 30),
                  Text("Address Book"),
                  SizedBox(height: 30),
                  Text("Change password"),
                  SizedBox(height: 30),
                  Text("Logout"),
                  SizedBox(height: 30),
                ],
              ),
            ),
            //myaccount details starts

            // Padding(
            //   padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
            //   child: Column(
            //     children: [
            //       ListTile(
            //         title: Text("Dashboard"),
            //         onTap: () {
            //           Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                   builder: (context) => myaccounts()));
            //         },
            //       ),
            //       ListTile(
            //         title: Text("Edit Profile"),
            //         onTap: () {
            //           Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                   builder: (context) => myaccounts()));
            //         },
            //       ),
            //       ListTile(
            //         title: Text("Enquiry History"),
            //         onTap: () {
            //           Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                   builder: (context) => myaccounts()));
            //         },
            //       ),
            //       ListTile(
            //         title: Text("Invoice History"),
            //         onTap: () {
            //           Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                   builder: (context) => myaccounts()));
            //         },
            //       ),
            //       ListTile(
            //         title: Text("Shipment History"),
            //         onTap: () {
            //           Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                   builder: (context) => myaccounts()));
            //         },
            //       ),
            //       ListTile(
            //         title: Text("Address Book"),
            //         onTap: () {
            //           Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                   builder: (context) => myaccounts()));
            //         },
            //       ),
            //       ListTile(
            //         title: Text("Change Password"),
            //         onTap: () {
            //           Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                   builder: (context) => myaccounts()));
            //         },
            //       ),
            //       ListTile(
            //         title: Text("Logout"),
            //         onTap: () {
            //           Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                   builder: (context) => myaccounts()));
            //         },
            //       ),
            //     ],
            //   ),
            // ),

            //myaccount details ends
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
            ListTile(
              title: Text("Contact Us"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => contact()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
