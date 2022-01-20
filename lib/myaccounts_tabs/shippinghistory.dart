import 'package:flutter/material.dart';

class shippinghistory extends StatelessWidget {
  const shippinghistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 80,
      width: MediaQuery.of(context).size.width - 20,
      child: Text("Shipment will be generated after placing order"),
      decoration: BoxDecoration(
        border: Border.all(
            color: Color.fromARGB(255, 65, 61, 61),
            width: 0.5,
            style: BorderStyle.solid),
      ),
    );
  }
}
