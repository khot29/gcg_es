import 'package:flutter/material.dart';

class enquiryhistory extends StatelessWidget {
  const enquiryhistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 80,
      width: MediaQuery.of(context).size.width - 20,
      child: Text("You have not placed any Orders..."),
      decoration: BoxDecoration(
        border: Border.all(
            color: Color.fromARGB(255, 65, 61, 61),
            width: 0.5,
            style: BorderStyle.solid),
      ),
    );
  }
}
