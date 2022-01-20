import 'package:flutter/material.dart';
import 'package:gcg_es/main.dart';

class address extends StatelessWidget {
  const address({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homepage()));
              },
              child: Container(
                child: Text("Add new Address"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
