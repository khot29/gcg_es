import 'package:flutter/material.dart';

class dashboard extends StatelessWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //details
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    // alignment: Alignment.center,
                    height: 200,
                    width: MediaQuery.of(context).size.width - 20,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 65, 61, 61),
                          width: 0.5,
                          style: BorderStyle.solid),
                    ),
                    child: Column(children: [
                      Text("Owais Patel"),
                      SizedBox(height: 20),
                      Text("owaispatel75@gmail.com"),
                      SizedBox(height: 20),
                      Text("9898531215"),
                      SizedBox(height: 20),
                      ElevatedButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Color.fromARGB(217, 70, 68, 60)),
                          onPressed: () {},
                          child: Text("Edit Profile")),
                    ]),
                  ),
                ),
              ),
            ],
          ),
          //address
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 80,
                  width: MediaQuery.of(context).size.width - 20,
                  child: Text("Please add Address..."),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 65, 61, 61),
                        width: 0.5,
                        style: BorderStyle.solid),
                  ),
                ),
              ),
            ],
          ),
          //orders
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
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
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
