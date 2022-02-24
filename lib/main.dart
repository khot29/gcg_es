// import 'dart:html';
import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gcg_es/catergory%20drawer/printer.dart';
import 'package:gcg_es/catergory%20drawer/service.dart';
import 'package:gcg_es/catergory%20drawer/toners.dart';
import 'package:gcg_es/contact.dart';
import 'package:gcg_es/detail_screen/detailscreen.dart';
import 'package:gcg_es/models/product.dart';
import 'package:gcg_es/myaccounts_tabs/address.dart';
import 'package:gcg_es/myaccounts_tabs/dashboard.dart';
import 'package:gcg_es/myaccounts_tabs/edit_profile.dart';
import 'package:gcg_es/myaccounts_tabs/enquiryhistory.dart';
import 'package:gcg_es/myaccounts_tabs/invoicehistory.dart';
import 'package:gcg_es/myaccounts_tabs/logout.dart';
import 'package:gcg_es/myaccounts_tabs/myacc_Main.dart';
import 'package:gcg_es/myaccounts_tabs/password.dart';
import 'package:gcg_es/myaccounts_tabs/shippinghistory.dart';
import 'package:gcg_es/routes/routes.dart';
import 'package:gcg_es/widgets/singleProduct_widget.dart';

import 'login.dart';
import 'register.dart';
// import 'shop.dart';
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

      // initialRoute: '/shop',//changes to be made in future
      // routes: {
      //   '/': (context) => const splash(),
      //   '/shop': (context) => const shop(),
      // },
    );
  }
}

////new homepage
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  press() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //new one 28/01
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

      //new one 28/01
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: GridView.builder(
                shrinkWrap: true,
                primary: true,
                itemCount: demoProducts.length,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context, index) {
                  var data = demoProducts[index];
                  return SingleProductWidget(
                      productName: data.productName,
                      productImage: data.productImage,
                      productPrice: data.productPrice,
                      onPressed: (){});
                  // onPressed: () {
                  //   // PageRouting.goToNextPage(
                  //   //     context: context,
                  //   //     navigateTo: detailscreen(
                  //   //       data: data,
                  //   //     ));
                  // });
                  // GestureDetector(
                  //     onTap: () => press(),
                  //     child: Container(
                  //       margin: EdgeInsets.all(10.0),
                  //       decoration: BoxDecoration(
                  //         color: Colors.transparent,
                  //         borderRadius: BorderRadius.circular(5),
                  //       ),
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.start,
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           Expanded(
                  //             child: Container(
                  //               width: double.infinity,
                  //               alignment: Alignment.topRight,
                  //               decoration: BoxDecoration(
                  //                   color: Colors.black,
                  //                   borderRadius:
                  //                       BorderRadius.circular(10),
                  //                   image: DecorationImage(
                  //                     fit: BoxFit.cover,
                  //                     image: NetworkImage(
                  //                         "http://172.29.1.208:2018/assets/images/products/P6230cdn.png"),
                  //                   )),
                  //               child: IconButton(
                  //                   onPressed: () {},
                  //                   icon: Icon(
                  //                     Icons.favorite,
                  //                     size: 30,
                  //                     color: Colors.amber,
                  //                   )),
                  //             ),
                  //           ),
                  //           Expanded(
                  //               child: Padding(
                  //             padding:
                  //                 EdgeInsets.symmetric(horizontal: 20),
                  //             child: Column(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceEvenly,
                  //               crossAxisAlignment:
                  //                   CrossAxisAlignment.start,
                  //               children: [
                  //                 Text(
                  //                   "productName",
                  //                   overflow: TextOverflow.ellipsis,
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.bold),
                  //                 ),
                  //                 Row(
                  //                   children: [
                  //                     Text(
                  //                       "productPrice",
                  //                       overflow: TextOverflow.ellipsis,
                  //                       style: TextStyle(
                  //                           color: Colors.amber),
                  //                     ),

                  //                   ],
                  //                 ),
                  //               ],
                  //             ),
                  //           ))
                  //         ],
                  //       ),
                  //     ));
                }),
          ),
        ],
      ),

      //new one 28/01
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
            ExpansionTile(
              textColor: Colors.amber,
              iconColor: Colors.amber,
              expandedAlignment: Alignment.center,
              title: Text("All Categories"),
              children: <Widget>[
                // Padding(padding: EdgeInsets.all(16.0)),
                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => printer()));
                    },
                    child: Text("Printer")),
                SizedBox(height: 30),
                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => toners()));
                    },
                    child: Text("Toners")),
                SizedBox(height: 30),
                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => service()));
                    },
                    child: Text("Service")),
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
            ExpansionTile(
              textColor: Colors.amber,
              iconColor: Colors.amber,
              title: Text("My Accounts"),
              children: <Widget>[
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => myaccounts()));
                    },
                    child: Text("Dashboard")),
                SizedBox(height: 30),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => myaccounts()));
                    },
                    child: Text("Edit Profile")),
                SizedBox(height: 30),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => myaccounts()));
                    },
                    child: Text("Enqiry History")),
                SizedBox(height: 30),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => myaccounts()));
                    },
                    child: Text("Invoice History")),
                SizedBox(height: 30),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => myaccounts()));
                    },
                    child: Text("Shipment History")),
                SizedBox(height: 30),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => myaccounts()));
                    },
                    child: Text("Address Book")),
                SizedBox(height: 30),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => myaccounts()));
                    },
                    child: Text(
                      "Change password",
                      style: TextStyle(backgroundColor: Colors.transparent),
                    )),
                SizedBox(height: 30),
                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => homepage()));
                    },
                    child: Text("Logout")),
                SizedBox(height: 30),
              ],
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
              title: const Text("Login"),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => contact()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

//Home Page//

// class homepage extends StatefulWidget {
//   const homepage({Key? key}) : super(key: key);

//   @override
//   State<homepage> createState() => _homepageState();
// }

// class _homepageState extends State<homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xffffd333),
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/images/logo.png',
//               fit: BoxFit.contain,
//               height: 26,
//             ),
//           ],
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {
//               Navigator.push(
//                   context, MaterialPageRoute(builder: (context) => homepage()));
//             },
//             icon: Icon(Icons.search),
//             // focusColor: Color(0xFFFFD333),
//             // hoverColor: Color(0xFFFFD333),
//             // splashColor: Color(0xFFFFD333),
//             // highlightColor: Color(0xFFFFD333),
//           ),
//           IconButton(
//             onPressed: () {
//               Navigator.push(
//                   context, MaterialPageRoute(builder: (context) => homepage()));
//             },
//             icon: Icon(Icons.favorite_outline),
//             // focusColor: Color(0xFFFFD333),
//             // hoverColor: Color(0xFFFFD333),
//             // splashColor: Color(0xFFFFD333),
//             // highlightColor: Color(0xFFFFD333),
//           ),
//           IconButton(
//             onPressed: () {
//               Navigator.push(
//                   context, MaterialPageRoute(builder: (context) => homepage()));
//             },
//             icon: Icon(Icons.shopping_cart_outlined),
//             // focusColor: Color(0xFFFFD333),
//             // hoverColor: Color(0xFFFFD333),
//             // splashColor: Color(0xFFFFD333),
//             // highlightColor: Color(0xFFFFD333),
//           ),
//         ],
//       ),

//       body: Column(
//         children: [
//           Text(
//             "Shop",
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             textAlign: TextAlign.center,
//           ),
//           Padding(
//             padding: const EdgeInsets.fromLTRB(32.0, 0.0, 32.0, 0.0),
//             child: Divider(
//               color: Color.fromARGB(255, 37, 34, 34),
//             ),
//           ),
//           GridView.builder(
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//               ),
//               itemCount: 2,
//               itemBuilder: (BuildContext context, int index) {
//                 return Container();
//               })
//         ],
//       ),

//       //older one below

//       // body: SingleChildScrollView(
//       //   child: Column(
//       //     children: <Widget>[
//       //       SizedBox(
//       //         height: 200,
//       //         child: ListView(
//       //           children: [
//       //             CarouselSlider(
//       //               items: [
//       //                 //1st photo
//       //                 Container(
//       //                   margin: EdgeInsets.all(8.0),
//       //                   decoration: BoxDecoration(
//       //                     // borderRadius: BorderRadius.circular(8.0),
//       //                     image: DecorationImage(
//       //                       image: AssetImage(
//       //                           "assets/images/slider/GCG_ES_Slider-1.jpg"),
//       //                       fit: BoxFit.fill,
//       //                     ),
//       //                   ),
//       //                 ),
//       //                 //2nd photo
//       //                 Container(
//       //                   margin: EdgeInsets.all(8.0),
//       //                   decoration: BoxDecoration(
//       //                     // borderRadius: BorderRadius.circular(8.0),
//       //                     image: DecorationImage(
//       //                       image: AssetImage(
//       //                           "assets/images/slider/GCG_ES_Slider-4-crop.jpg"),
//       //                       fit: BoxFit.fill,
//       //                     ),
//       //                   ),
//       //                 ),

//       //                 //3rd photo
//       //                 Container(
//       //                   margin: EdgeInsets.all(8.0),
//       //                   decoration: BoxDecoration(
//       //                     // borderRadius: BorderRadius.circular(8.0),
//       //                     image: DecorationImage(
//       //                       image: AssetImage(
//       //                           "assets/images/slider/GCG_ES_Slider-6.jpg"),
//       //                       fit: BoxFit.fill,
//       //                     ),
//       //                   ),
//       //                 ),
//       //               ],
//       //               options: CarouselOptions(
//       //                 height: 180.0,
//       //                 enlargeCenterPage: true,
//       //                 autoPlay: true,
//       //                 aspectRatio: 16 / 9,
//       //                 autoPlayCurve: Curves.easeOut,
//       //                 enableInfiniteScroll: true,
//       //                 autoPlayAnimationDuration: Duration(milliseconds: 800),
//       //                 viewportFraction: 1.0,
//       //               ),
//       //             )
//       //           ],
//       //         ),
//       //       ),
//       //       // 4 banners
//       //       // Column(
//       //       //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       //       //   mainAxisSize: MainAxisSize.min,
//       //       //   children: <Widget>[
//       //       //     Container(
//       //       //       height: 100,
//       //       //       color: Colors.white60,
//       //       //       child: Padding(
//       //       //         padding: const EdgeInsets.all(4.0),
//       //       //         child: Column(
//       //       //           children: [
//       //       //             Icon(Icons.local_shipping_outlined),
//       //       //             Column(
//       //       //               children: [
//       //       //                 Text("Free Shipping"),
//       //       //                 Text("For orders from 50"),
//       //       //               ],
//       //       //             ),
//       //       //           ],
//       //       //         ),
//       //       //       ),
//       //       //     ),
//       //       //     Container(
//       //       //       height: 100,
//       //       //       color: Colors.white60,
//       //       //       child: Padding(
//       //       //         padding: const EdgeInsets.all(4.0),
//       //       //         child: Column(
//       //       //           children: [
//       //       //             Icon(Icons.call_sharp),
//       //       //             Column(
//       //       //               children: [
//       //       //                 Text("Support 24/7"),
//       //       //                 Text("Call us anytime"),
//       //       //               ],
//       //       //             ),
//       //       //           ],
//       //       //         ),
//       //       //       ),
//       //       //     ),
//       //       //     Container(
//       //       //       height: 100,
//       //       //       color: Colors.white60,
//       //       //       child: Padding(
//       //       //         padding: const EdgeInsets.all(4.0),
//       //       //         child: Column(
//       //       //           children: [
//       //       //             Icon(Icons.payment_sharp),
//       //       //             Column(
//       //       //               children: [
//       //       //                 Text("100% Safety"),
//       //       //                 Text("Only secure Payments"),
//       //       //               ],
//       //       //             ),
//       //       //           ],
//       //       //         ),
//       //       //       ),
//       //       //     ),
//       //       //     Container(
//       //       //       height: 100,
//       //       //       color: Colors.white60,
//       //       //       child: Padding(
//       //       //         padding: const EdgeInsets.all(4.0),
//       //       //         child: Column(
//       //       //           children: [
//       //       //             Icon(Icons.local_offer_sharp),
//       //       //             Column(
//       //       //               children: [
//       //       //                 Text("Hot Offers"),
//       //       //                 Text("Disounts upto 90%"),
//       //       //               ],
//       //       //             ),
//       //       //           ],
//       //       //         ),
//       //       //       ),
//       //       //     ),
//       //       //   ],
//       //       // ),
//       //       //featured products

//       //       Container(
//       //         color: Color.fromARGB(255, 255, 255, 255),
//       //         child: Column(
//       //           children: [
//       //             Row(
//       //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       //               crossAxisAlignment: CrossAxisAlignment.start,
//       //               children: [
//       //                 Padding(
//       //                   padding: const EdgeInsets.all(8.0),
//       //                   child: InkWell(
//       //                     onTap: () {
//       //                       Navigator.push(
//       //                           context,
//       //                           MaterialPageRoute(
//       //                               builder: (context) => shop()));
//       //                     },
//       //                     child: Text(
//       //                       "Featured Products",
//       //                       style:
//       //                           TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
//       //                     ),
//       //                   ),
//       //                 ),
//       //                 Padding(
//       //                   padding: const EdgeInsets.all(8.0),
//       //                   child: InkWell(
//       //                     onTap: () {
//       //                       Navigator.push(
//       //                           context,
//       //                           MaterialPageRoute(
//       //                               builder: (context) => shop()));
//       //                     },
//       //                     child: Text(
//       //                       "View all",
//       //                       style:
//       //                           TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
//       //                     ),
//       //                   ),
//       //                 ),
//       //               ],
//       //             ),

//       //             SizedBox(
//       //               width: 14, //
//       //               child: Column(
//       //                 children: [
//       //                   AspectRatio(
//       //                     aspectRatio: 1.02,
//       //                     child: Container(
//       //                       padding: EdgeInsets.all(20), //
//       //                       decoration: BoxDecoration(
//       //                         color: Color.fromARGB(255, 218, 218, 218)
//       //                             .withOpacity(0.1),
//       //                         borderRadius: BorderRadius.circular(15),
//       //                       ),
//       //                       child: Image.asset(demoProducts[0].images[0]),
//       //                     ),
//       //                   ),
//       //                   const SizedBox(height: 5),
//       //                   Text(
//       //                     demoProducts[0].title,
//       //                     style: TextStyle(color: Colors.black),
//       //                     maxLines: 2,
//       //                   ),
//       //                   Row(
//       //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       //                     children: [
//       //                       Text(
//       //                         "${demoProducts[0].price}",
//       //                         style: TextStyle(
//       //                             fontSize: 18,
//       //                             fontWeight: FontWeight.w600,
//       //                             color: Color(0xFFFFD333)), //
//       //                       ),
//       //                       Container(
//       //                           padding: EdgeInsets.all(8),
//       //                           width: 20, //
//       //                           height: 20,
//       //                           decoration: BoxDecoration(
//       //                             color: Color(0xffFFD333).withOpacity(0.1),
//       //                             shape: BoxShape.circle,
//       //                           ), //
//       //                           child: IconButton(
//       //                             onPressed: () {},
//       //                             icon: Icon(Icons.library_add_sharp),
//       //                           ))
//       //                     ],
//       //                   )
//       //                 ],
//       //               ),
//       //             ),

//       //             // Row(
//       //             //   children: [
//       //             //     Padding(
//       //             //       padding: const EdgeInsets.all(8.0),
//       //             //       child: Container(
//       //             //         height: 200,
//       //             //         width: MediaQuery.of(context).size.width - 20,
//       //             //         child: Padding(
//       //             //           padding: const EdgeInsets.all(16.0),
//       //             //           child: Text(
//       //             //             "Products to be display",
//       //             //             style: TextStyle(
//       //             //                 color: Color.fromARGB(255, 0, 0, 0)),
//       //             //           ),
//       //             //         ),
//       //             //         decoration: BoxDecoration(
//       //             //             border: Border.all(
//       //             //                 color: Color(0xFFFFD333),
//       //             //                 width: 2.0,
//       //             //                 style: BorderStyle.solid)),
//       //             //       ),
//       //             //     ),
//       //             //   ],
//       //             // ),
//       //           ],
//       //         ),
//       //       ),

//       //       //ad : industry soluions
//       //       // Container(
//       //       //   child:
//       //       //       Image(image: AssetImage("assets/images/banner/banner.jpg")),
//       //       // ),
//       //       //Bestsellers
//       //       Container(
//       //         color: Color.fromARGB(255, 255, 255, 255),
//       //         child: Column(
//       //           children: [
//       //             Row(
//       //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       //               crossAxisAlignment: CrossAxisAlignment.start,
//       //               children: [
//       //                 Padding(
//       //                   padding: const EdgeInsets.all(8.0),
//       //                   child: Text(
//       //                     "Bestsellers",
//       //                     style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
//       //                   ),
//       //                 ),
//       //                 Padding(
//       //                   padding: const EdgeInsets.all(8.0),
//       //                   child: Text(
//       //                     "View all",
//       //                     style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
//       //                   ),
//       //                 ),
//       //               ],
//       //             ),
//       //             Row(
//       //               children: [
//       //                 Padding(
//       //                   padding: const EdgeInsets.all(8.0),
//       //                   child: Container(
//       //                     height: 200,
//       //                     width: MediaQuery.of(context).size.width - 20,
//       //                     child: Padding(
//       //                       padding: const EdgeInsets.all(16.0),
//       //                       child: Text(
//       //                         "Products to be display",
//       //                         style: TextStyle(
//       //                             color: Color.fromARGB(255, 0, 0, 0)),
//       //                       ),
//       //                     ),
//       //                     decoration: BoxDecoration(
//       //                         border: Border.all(
//       //                             color: Color(0xFFFFD333),
//       //                             width: 2.0,
//       //                             style: BorderStyle.solid)),
//       //                   ),
//       //                 ),
//       //               ],
//       //             ),
//       //           ],
//       //         ),
//       //       ),
//       //       //new arrivals
//       //       //company names in a row

//       //       //toprated &
//       //       //& special offers
//       //     ],
//       //   ),
//       // ),
//       drawer: Drawer(
//         child: ListView(
//           // padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
//           children: <Widget>[
//             UserAccountsDrawerHeader(
//                 decoration: BoxDecoration(color: Colors.amberAccent),
//                 // currentAccountPicture: CircleAvatar(backgroundImage: ,),
//                 accountName: Text("Owais Patel"),
//                 accountEmail: Text("owaispatel75@gmail.com")),

//             // ListTile(
//             //   title: Text(
//             //     "Menu",
//             //     style: TextStyle(fontWeight: FontWeight.bold),
//             //   ),
//             //   hoverColor: Color(0xFFFFFFFF),
//             //   onTap: () {
//             //     // Navigator.push(context,
//             //     //     MaterialPageRoute(builder: (context) => homepage()));
//             //   },
//             // ),
//             ListTile(
//               title: Text("Home"),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => homepage()));
//               },
//             ),
//             ListTile(
//               title: Text("Shop"),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => homepage()));
//               },
//             ),
//             ExpansionTile(
//               expandedAlignment: Alignment.center,
//               title: Text("All Categories"),
//               children: <Widget>[
//                 Text("Printer"),
//                 SizedBox(height: 30),
//                 Text("Toners"),
//                 SizedBox(height: 30),
//                 Text("Service"),
//                 SizedBox(height: 30),
//               ],
//             ),
//             // Padding(
//             //   padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
//             //   child: Column(
//             //     children: [
//             //       ListTile(
//             //         title: Text("Printer"),
//             //         onTap: () {
//             //           Navigator.push(context,
//             //               MaterialPageRoute(builder: (context) => homepage()));
//             //         },
//             //       ),
//             //       ListTile(
//             //         title: Text("Toners"),
//             //         onTap: () {
//             //           Navigator.push(context,
//             //               MaterialPageRoute(builder: (context) => homepage()));
//             //         },
//             //       ),
//             //       ListTile(
//             //         title: Text("Service"),
//             //         onTap: () {
//             //           Navigator.push(context,
//             //               MaterialPageRoute(builder: (context) => homepage()));
//             //         },
//             //       ),
//             //     ],
//             //   ),
//             // ),
//             InkWell(
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => myaccounts()));
//               },
//               child: ExpansionTile(
//                 title: Text("My Accounts"),
//                 children: <Widget>[
//                   Text("Dashboard"),
//                   SizedBox(height: 30),
//                   Text("Edit Profile"),
//                   SizedBox(height: 30),
//                   Text("Enqiry History"),
//                   SizedBox(height: 30),
//                   Text("Invoice History"),
//                   SizedBox(height: 30),
//                   Text("Shipment History"),
//                   SizedBox(height: 30),
//                   Text("Address Book"),
//                   SizedBox(height: 30),
//                   Text("Change password"),
//                   SizedBox(height: 30),
//                   Text("Logout"),
//                   SizedBox(height: 30),
//                 ],
//               ),
//             ),
//             //myaccount details starts

//             // Padding(
//             //   padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
//             //   child: Column(
//             //     children: [
//             //       ListTile(
//             //         title: Text("Dashboard"),
//             //         onTap: () {
//             //           Navigator.push(
//             //               context,
//             //               MaterialPageRoute(
//             //                   builder: (context) => myaccounts()));
//             //         },
//             //       ),
//             //       ListTile(
//             //         title: Text("Edit Profile"),
//             //         onTap: () {
//             //           Navigator.push(
//             //               context,
//             //               MaterialPageRoute(
//             //                   builder: (context) => myaccounts()));
//             //         },
//             //       ),
//             //       ListTile(
//             //         title: Text("Enquiry History"),
//             //         onTap: () {
//             //           Navigator.push(
//             //               context,
//             //               MaterialPageRoute(
//             //                   builder: (context) => myaccounts()));
//             //         },
//             //       ),
//             //       ListTile(
//             //         title: Text("Invoice History"),
//             //         onTap: () {
//             //           Navigator.push(
//             //               context,
//             //               MaterialPageRoute(
//             //                   builder: (context) => myaccounts()));
//             //         },
//             //       ),
//             //       ListTile(
//             //         title: Text("Shipment History"),
//             //         onTap: () {
//             //           Navigator.push(
//             //               context,
//             //               MaterialPageRoute(
//             //                   builder: (context) => myaccounts()));
//             //         },
//             //       ),
//             //       ListTile(
//             //         title: Text("Address Book"),
//             //         onTap: () {
//             //           Navigator.push(
//             //               context,
//             //               MaterialPageRoute(
//             //                   builder: (context) => myaccounts()));
//             //         },
//             //       ),
//             //       ListTile(
//             //         title: Text("Change Password"),
//             //         onTap: () {
//             //           Navigator.push(
//             //               context,
//             //               MaterialPageRoute(
//             //                   builder: (context) => myaccounts()));
//             //         },
//             //       ),
//             //       ListTile(
//             //         title: Text("Logout"),
//             //         onTap: () {
//             //           Navigator.push(
//             //               context,
//             //               MaterialPageRoute(
//             //                   builder: (context) => myaccounts()));
//             //         },
//             //       ),
//             //     ],
//             //   ),
//             // ),

//             //myaccount details ends
//             ListTile(
//               title: const Text("Login"),
//               onTap: () {
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (context) => login()));
//               },
//             ),
//             ListTile(
//               title: Text("Register"),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => register()));
//               },
//             ),
//             ListTile(
//               title: Text("Contact Us"),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => contact()));
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ///shop section
// // class shop extends StatefulWidget {
// //   const shop({Key? key}) : super(key: key);

// //   @override
// //   State<shop> createState() => _shopState();
// // }

// // class _shopState extends State<shop> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: Color(0xffffd333),
// //         // title: Text(
// //         //   "Shop",
// //         //   style: TextStyle(fontWeight: FontWeight.bold),
// //         // ),
// //         title: Row(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Image.asset(
// //               'assets/images/logo.png',
// //               fit: BoxFit.contain,
// //               height: 26,
// //             ),
// //           ],
// //         ),
// //         actions: [
// //           IconButton(
// //             onPressed: () {
// //               Navigator.push(
// //                   context, MaterialPageRoute(builder: (context) => shop()));
// //             },
// //             icon: Icon(Icons.search),
// //             // focusColor: Color(0xFFFFD333),
// //             // hoverColor: Color(0xFFFFD333),
// //             // splashColor: Color(0xFFFFD333),
// //             // highlightColor: Color(0xFFFFD333),
// //           ),
// //           IconButton(
// //             onPressed: () {
// //               Navigator.push(
// //                   context, MaterialPageRoute(builder: (context) => shop()));
// //             },
// //             icon: Icon(Icons.favorite_outline),
// //             // focusColor: Color(0xFFFFD333),
// //             // hoverColor: Color(0xFFFFD333),
// //             // splashColor: Color(0xFFFFD333),
// //             // highlightColor: Color(0xFFFFD333),
// //           ),
// //           IconButton(
// //             onPressed: () {
// //               Navigator.push(
// //                   context, MaterialPageRoute(builder: (context) => shop()));
// //             },
// //             icon: Icon(Icons.shopping_cart_outlined),
// //             // focusColor: Color(0xFFFFD333),
// //             // hoverColor: Color(0xFFFFD333),
// //             // splashColor: Color(0xFFFFD333),
// //             // highlightColor: Color(0xFFFFD333),
// //           ),
// //         ],
// //       ),
// //       body: Column(
// //         children: [
// //           // Divider(color: Color.fromARGB(80, 0, 0, 0),height: 1,)
// //           GridView.builder(
// //             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// //               crossAxisCount: 2,
// //             ),
// //             itemCount: 2,
// //             itemBuilder: (BuildContext context, int index) {
// //               return Container(
// //                 child: Column(
// //                   children: [],
// //                 ),
// //               );
// //             },
// //           ),
// //         ],
// //       ),
// //       drawer: Drawer(
// //         child: ListView(
// //           // padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
// //           children: <Widget>[
// //             UserAccountsDrawerHeader(
// //                 decoration: BoxDecoration(color: Colors.amberAccent),
// //                 // currentAccountPicture: CircleAvatar(backgroundImage: ,),
// //                 accountName: Text("Owais Patel"),
// //                 accountEmail: Text("owaispatel75@gmail.com")),

// //             // ListTile(
// //             //   title: Text(
// //             //     "Menu",
// //             //     style: TextStyle(fontWeight: FontWeight.bold),
// //             //   ),
// //             //   hoverColor: Color(0xFFFFFFFF),
// //             //   onTap: () {
// //             //     // Navigator.push(context,
// //             //     //     MaterialPageRoute(builder: (context) => homepage()));
// //             //   },
// //             // ),
// //             ListTile(
// //               title: Text("Home"),
// //               onTap: () {
// //                 Navigator.push(
// //                     context, MaterialPageRoute(builder: (context) => shop()));
// //               },
// //             ),
// //             ListTile(
// //               title: Text("Shop"),
// //               onTap: () {
// //                 Navigator.push(
// //                     context, MaterialPageRoute(builder: (context) => shop()));
// //               },
// //             ),
// //             ExpansionTile(
// //               expandedAlignment: Alignment.center,
// //               title: Text("All Categories"),
// //               children: <Widget>[
// //                 Text("Printer"),
// //                 SizedBox(height: 30),
// //                 Text("Toners"),
// //                 SizedBox(height: 30),
// //                 Text("Service"),
// //                 SizedBox(height: 30),
// //               ],
// //             ),
// //             // Padding(
// //             //   padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
// //             //   child: Column(
// //             //     children: [
// //             //       ListTile(
// //             //         title: Text("Printer"),
// //             //         onTap: () {
// //             //           Navigator.push(context,
// //             //               MaterialPageRoute(builder: (context) => homepage()));
// //             //         },
// //             //       ),
// //             //       ListTile(
// //             //         title: Text("Toners"),
// //             //         onTap: () {
// //             //           Navigator.push(context,
// //             //               MaterialPageRoute(builder: (context) => homepage()));
// //             //         },
// //             //       ),
// //             //       ListTile(
// //             //         title: Text("Service"),
// //             //         onTap: () {
// //             //           Navigator.push(context,
// //             //               MaterialPageRoute(builder: (context) => homepage()));
// //             //         },
// //             //       ),
// //             //     ],
// //             //   ),
// //             // ),
// //             InkWell(
// //               onTap: () {
// //                 Navigator.push(context,
// //                     MaterialPageRoute(builder: (context) => myaccounts()));
// //               },
// //               child: ExpansionTile(
// //                 title: Text("My Accounts"),
// //                 children: <Widget>[
// //                   Text("Dashboard"),
// //                   SizedBox(height: 30),
// //                   Text("Edit Profile"),
// //                   SizedBox(height: 30),
// //                   Text("Enqiry History"),
// //                   SizedBox(height: 30),
// //                   Text("Invoice History"),
// //                   SizedBox(height: 30),
// //                   Text("Shipment History"),
// //                   SizedBox(height: 30),
// //                   Text("Address Book"),
// //                   SizedBox(height: 30),
// //                   Text("Change password"),
// //                   SizedBox(height: 30),
// //                   Text("Logout"),
// //                   SizedBox(height: 30),
// //                 ],
// //               ),
// //             ),
// //             //myaccount details starts

// //             // Padding(
// //             //   padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
// //             //   child: Column(
// //             //     children: [
// //             //       ListTile(
// //             //         title: Text("Dashboard"),
// //             //         onTap: () {
// //             //           Navigator.push(
// //             //               context,
// //             //               MaterialPageRoute(
// //             //                   builder: (context) => myaccounts()));
// //             //         },
// //             //       ),
// //             //       ListTile(
// //             //         title: Text("Edit Profile"),
// //             //         onTap: () {
// //             //           Navigator.push(
// //             //               context,
// //             //               MaterialPageRoute(
// //             //                   builder: (context) => myaccounts()));
// //             //         },
// //             //       ),
// //             //       ListTile(
// //             //         title: Text("Enquiry History"),
// //             //         onTap: () {
// //             //           Navigator.push(
// //             //               context,
// //             //               MaterialPageRoute(
// //             //                   builder: (context) => myaccounts()));
// //             //         },
// //             //       ),
// //             //       ListTile(
// //             //         title: Text("Invoice History"),
// //             //         onTap: () {
// //             //           Navigator.push(
// //             //               context,
// //             //               MaterialPageRoute(
// //             //                   builder: (context) => myaccounts()));
// //             //         },
// //             //       ),
// //             //       ListTile(
// //             //         title: Text("Shipment History"),
// //             //         onTap: () {
// //             //           Navigator.push(
// //             //               context,
// //             //               MaterialPageRoute(
// //             //                   builder: (context) => myaccounts()));
// //             //         },
// //             //       ),
// //             //       ListTile(
// //             //         title: Text("Address Book"),
// //             //         onTap: () {
// //             //           Navigator.push(
// //             //               context,
// //             //               MaterialPageRoute(
// //             //                   builder: (context) => myaccounts()));
// //             //         },
// //             //       ),
// //             //       ListTile(
// //             //         title: Text("Change Password"),
// //             //         onTap: () {
// //             //           Navigator.push(
// //             //               context,
// //             //               MaterialPageRoute(
// //             //                   builder: (context) => myaccounts()));
// //             //         },
// //             //       ),
// //             //       ListTile(
// //             //         title: Text("Logout"),
// //             //         onTap: () {
// //             //           Navigator.push(
// //             //               context,
// //             //               MaterialPageRoute(
// //             //                   builder: (context) => myaccounts()));
// //             //         },
// //             //       ),
// //             //     ],
// //             //   ),
// //             // ),

// //             //myaccount details ends
// //             ListTile(
// //               title: Text("Login"),
// //               onTap: () {
// //                 Navigator.push(
// //                     context, MaterialPageRoute(builder: (context) => login()));
// //               },
// //             ),
// //             ListTile(
// //               title: Text("Register"),
// //               onTap: () {
// //                 Navigator.push(context,
// //                     MaterialPageRoute(builder: (context) => register()));
// //               },
// //             ),
// //             ListTile(
// //               title: Text("Contact Us"),
// //               onTap: () {
// //                 Navigator.push(context,
// //                     MaterialPageRoute(builder: (context) => contact()));
// //               },
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
