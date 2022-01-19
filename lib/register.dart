import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:gcg_es/main.dart';

class register extends StatelessWidget {
  const register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Color(0xFFF9F9F9)),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  "Register",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF000000)),
                ),
                SizedBox(height: 30.0),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
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
                        hintText: "Enter your First Name",
                        labelText: "First Name"),
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
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
                        hintText: "Enter your Last Name",
                        labelText: "Last Name"),
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
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
                SizedBox(height: 10.0),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
                  child: TextFormField(
                    obscureText: true,
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
                        hintText: "Enter your Password",
                        labelText: "Password"),
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
                  child: TextFormField(
                    obscureText: true,
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
                        hintText: "Repeat your Password",
                        labelText: "Repeat Password"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(32.0),
                  child: ElevatedButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xD9FFD333)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => homepage()));
                      },
                      child: Text(
                        "Register",
                        textAlign: TextAlign.center,
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
