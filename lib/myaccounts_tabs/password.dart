import 'package:flutter/material.dart';
import 'package:gcg_es/main.dart';

class password extends StatelessWidget {
  const password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(

          children: [
            SizedBox(height: 50),
            Text(
              "Change Password",
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal),
            ),
            SizedBox(height: 50),
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
                    hintText: "Current Password",
                    labelText: "Current Password"),
              ),
            ),
            SizedBox(height: 10),
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
                    hintText: "New Password",
                    labelText: "New Password"),
              ),
            ),
            SizedBox(height: 10),
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
                    hintText: "Re-enter your Password",
                    labelText: "Re-enter your Password"),
              ),
            ),
            SizedBox(height: 10),
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
                    "Change",
                    textAlign: TextAlign.center,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
