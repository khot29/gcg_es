import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gcg_es/main.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Color(0xFFF9F9F9)),
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Text(
              "Login",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF000000)),
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFFD333))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFFD333))),
                    focusColor: Color(0xFF000000),
                    prefixIconColor: Color(0xFF000000),
                    suffixIconColor: Color(0xFF000000),
                    labelStyle: TextStyle(color: Color(0xCC000000)),
                    fillColor: Color(0xFF000000),
                    hoverColor: Color(0xFF000000),
                    hintText: "Enter your Email Id",
                    labelText: "Email Address"),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffFFD333))),
                    focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffFFD333))),
                    prefixIconColor: Color(0xFF000000),
                    suffixIconColor: Color(0xFF000000),
                    focusColor: Color(0xFF000000),
                    labelStyle: TextStyle(color: Color(0xCC000000)),
                    fillColor: Color(0xFF000000),
                    hoverColor: Color(0xFF000000),
                    hintText: "Enter your Password",
                    labelText: "Password"),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
              child: Text(
                "Forgotten Password",
                style: (TextStyle(color: Colors.cyan)
                ),
              ),
            ),
            //remember me feature to add STARTS

            //rememberme feature ENDS
            Padding(
              padding: EdgeInsets.all(16.0),
              child: ElevatedButton(
                  style:
                      TextButton.styleFrom(backgroundColor: Color(0xD9FFD333)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => homepage()));
                  }, 
                  child: Text(
                    "Login",
                    textAlign: TextAlign.center,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
