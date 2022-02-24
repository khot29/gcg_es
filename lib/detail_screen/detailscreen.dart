// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gcg_es/main.dart';
import 'package:gcg_es/widgets/singleProduct_widget.dart';

class detailscreen extends StatefulWidget {
  const detailscreen({Key? key}) : super(key: key);

  // final SingleProductWidget data;
  // detailscreen({required this.data});

  @override
  State<detailscreen> createState() => _detailscreenState();
}

class _detailscreenState extends State<detailscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffd333),
        title: Text(
          "#Product Name",
          textAlign: TextAlign.center,
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
          children: [
            Center(
              child: Image.asset(
                "assets/images/products/P1.png",
                width: 250.0,
                height: 250.0,
                alignment: Alignment.center,
              ),
            ),
            Row(
              children: [
                Text(
                  "#Product name",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "#Product Description",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                      
                      margin: EdgeInsets.all(5.0),
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.amber,
                              width: 1.0,
                              style: BorderStyle.solid)),
                      alignment: Alignment.topCenter,
                      child: Row(
                        children: [
                          Text("Quantity"),
                          SizedBox(width: 10.0,),
                          ElevatedButton(
                              style: TextButton.styleFrom(
                                  fixedSize: Size(90, 35),
                                  backgroundColor: Color(0xD9FFD333)),
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => homepage()));
                              },
                              child: Text(
                                "Add to Enqiury",
                                style: TextStyle(
                                    fontSize: 12.0, fontWeight: FontWeight.bold),
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              )),
                          // Text(
                          //   "\$ $productPrice",
                          //   overflow: TextOverflow.ellipsis,
                          //   style: TextStyle(color: Colors.amber),
                          // ),
                          SizedBox(
                            width: 10.0,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite,
                                size: 25,
                                color: Color.fromARGB(87, 0, 0, 0),
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.bar_chart_outlined,
                                size: 25,
                                color: Color.fromARGB(139, 0, 0, 0),
                              )),
                        ],
                      )),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                      margin: EdgeInsets.all(5.0),
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.amber,
                              width: 1.0,
                              style: BorderStyle.solid)),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text("Description"),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text("short one line description"), 
                        ],
                      )),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                      margin: EdgeInsets.all(5.0),
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.amber,
                              width: 1.0,
                              style: BorderStyle.solid)),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text("specification"),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text("features and more"),
                        ],
                      )),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                      margin: EdgeInsets.all(5.0),
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.amber,
                              width: 1.0,
                              style: BorderStyle.solid)),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text("accessories"),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text("short breif"),
                        ],
                      )),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                      margin: EdgeInsets.all(5.0),
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.amber,
                              width: 1.0,
                              style: BorderStyle.solid)),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text("Services"),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text("Lines on services"),
                        ],
                      )),
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
