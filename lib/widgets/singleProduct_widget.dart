import 'package:flutter/material.dart';
import 'package:gcg_es/detail_screen/detailscreen.dart';

class SingleProductWidget extends StatelessWidget {
  final String productName, productImage;
  final double productPrice;
  final Function onPressed;

  SingleProductWidget({
    required this.productName,
    required this.productImage,
    // required this.productModel,
    required this.productPrice,
    required this.onPressed,
  });

  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => detailscreen()));
        }, 
        // onPressed,
        child: Container(
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            border: Border.all(
                color: Colors.amber, width: 1.0, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(productImage),
                      )),
                  // child: IconButton(
                  //     onPressed: () {},
                  //     icon: Icon(
                  //       Icons.favorite,
                  //       size: 25,
                  //       color: Color.fromARGB(139, 0, 0, 0),
                  //     )),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productName,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
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
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold),
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              )),
                          // Text(
                          //   "\$ $productPrice",
                          //   overflow: TextOverflow.ellipsis,
                          //   style: TextStyle(color: Colors.amber),
                          // ),
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
                      ),
                    ),
                  ],

                ),
              )),
            ],
          ),
        ));
  }
}
