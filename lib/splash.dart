import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gcg_es/main.dart';
// import 'package:gcg_es/shop.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> homepage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Color(0xFFFFD333)),
        child: Image.asset('assets/images/logo.png'),

      ),
    );
  }
}
