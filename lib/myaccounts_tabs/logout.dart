import 'package:flutter/material.dart';
import 'package:gcg_es/main.dart';

class logout extends StatelessWidget {
  const logout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:InkWell(
        onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => homepage()),
        );
      },
        child: Container(
          child: Text("you are have sucessfully Logout"),
        ),
      ),
    );
  }
}
