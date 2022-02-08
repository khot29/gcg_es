import 'package:flutter/material.dart';

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
        onTap: () => onPressed,
        child: Container(
          margin: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
          
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Expanded(
                
                child: Container(
                  
                  width: 500,//double.infinity,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "\$ $productPrice",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.amber),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              size: 25,
                              color: Color.fromARGB(139, 0, 0, 0),
                            )),
                      ],
                    ),
                  ],
                ),
              ))
            ],
          ),
        ));
  }
}
