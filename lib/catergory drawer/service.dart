import 'package:flutter/material.dart';
import 'package:gcg_es/main.dart';
import 'package:gcg_es/models/product.dart';
import 'package:gcg_es/widgets/singleProduct_widget.dart';

class service extends StatefulWidget {
  service({Key? key}) : super(key: key);

  @override
  State<service> createState() => _serviceState();
}

class _serviceState extends State<service> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffd333),
        title: Text(
          "Service",
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
                      onPressed: () {},
                      );
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
    );
  }
}
