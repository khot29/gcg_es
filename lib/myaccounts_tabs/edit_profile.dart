import 'package:flutter/material.dart';
import 'package:gcg_es/main.dart';

class editprofile extends StatelessWidget {
  const editprofile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 25),
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
                    hintText: "Owais",
                    // labelText: "First Name"
                    ),
              ),
            ),

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
                    hintText: "Patel",
                    // labelText: "Last Name"
                    ),
              ),
            ),

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
                    hintText: "owaispatel75@gmail.com",
                    // labelText: "Email Address"
                    ),
              ),
            ),
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
                    hintText: "9898542361",
                    // labelText: "Phone Number"
                    ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(32.0),
              child: ElevatedButton(
                  style:
                      TextButton.styleFrom(backgroundColor: Color(0xD9FFD333)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => homepage()));
                  },
                  child: Text(
                    "Save",
                    textAlign: TextAlign.center,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
