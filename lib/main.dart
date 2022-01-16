import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import 'login.dart';
import 'register.dart';
import 'splash.dart';
// import 'package:carousel_pro/carousel_pro.dart';
// import 'package:carousel_nullsafety/carousel_nullsafety.dart';
// import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
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

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 200,
              child: ListView(
                children: [
                  CarouselSlider(
                    items: [
                      //1st photo
                      Container(
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/slider/GCG_ES_Slider-1.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      //2nd photo
                      Container(
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/slider/GCG_ES_Slider-4-crop.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),

                      //3rd photo
                      Container(
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/slider/GCG_ES_Slider-6.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                      height: 180.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.easeOut,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 1.0,
                    ),
                  )
                ],
              ),
            ),
            // 4 banners
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 100,
                  color: Colors.white60,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: [
                        Icon(Icons.local_shipping_outlined),
                        Column(
                          children: [
                            Text("Free Shipping"),
                            Text("For orders from 50"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  color: Colors.white60,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: [
                        Icon(Icons.call_sharp),
                        Column(
                          children: [
                            Text("Support 24/7"),
                            Text("Call us anytime"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  color: Colors.white60,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: [
                        Icon(Icons.payment_sharp),
                        Column(
                          children: [
                            Text("100% Safety"),
                            Text("Only secure Payments"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  color: Colors.white60,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: [
                        Icon(Icons.local_offer_sharp),
                        Column(
                          children: [
                            Text("Hot Offers"),
                            Text("Disounts upto 90%"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            //featured products
            Container(
              color: Colors.redAccent,
              child: Column(
                children: [
                  Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Featured Products"),
                      Text("View all"),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width - 20,
                          child: Text("Products to be display"),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFFFFD333),
                                  width: 2.0,
                                  style: BorderStyle.solid)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //ad : industry soluions
            Container(
              child:
                  Image(image: AssetImage("assets/images/banner/banner.jpg")),
            ),
            //Bestsellers
            Container(
              color: Colors.redAccent,
              child: Column(
                children: [
                  Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("Featured Products"),
                    Text("View all"),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width - 20,
                          child: Text("Products to be display"),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFFFFD333),
                                  width: 2.0,
                                  style: BorderStyle.solid)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //new arrivals
            //company names in a row

            //toprated &
            //& special offers
          ],
        ),
      ),

      //section 1 starts

      //section 1 ends

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
          children: [
            ListTile(
              title: Text(
                "Menu",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              hoverColor: Color(0xFFFFFFFF),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => homepage()));
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
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
              child: Column(
                children: [
                  ListTile(
                    title: Text("Printer"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => homepage()));
                    },
                  ),
                  ListTile(
                    title: Text("Toners"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => homepage()));
                    },
                  ),
                  ListTile(
                    title: Text("Service"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => homepage()));
                    },
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text("My Account"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homepage()));
              },
            ),
            //myaccount details starts

            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
              child: Column(
                children: [
                  ListTile(
                    title: Text("Dashboard"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => homepage()));
                    },
                  ),
                  ListTile(
                    title: Text("Edit Profile"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => homepage()));
                    },
                  ),
                  ListTile(
                    title: Text("Order History"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => homepage()));
                    },
                  ),
                  ListTile(
                    title: Text("Invoice History"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => homepage()));
                    },
                  ),
                  ListTile(
                    title: Text("Shipment History"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => homepage()));
                    },
                  ),
                  ListTile(
                    title: Text("Address Book"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => homepage()));
                    },
                  ),
                  ListTile(
                    title: Text("Change Password"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => homepage()));
                    },
                  ),
                  ListTile(
                    title: Text("Logout"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => homepage()));
                    },
                  ),
                ],
              ),
            ),

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
          ],
        ),
      ),
    );
  }
}
