import 'package:flutter/material.dart';
import 'package:gcg_es/main.dart';

class address extends StatelessWidget {
  const address({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 200,
            width: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.black, width: 1.0, style: BorderStyle.solid),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Add New"),
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(217, 78, 78, 75)),
                ),
              ],
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 80,
          width: MediaQuery.of(context).size.width - 20,
          child: Text("Please add address ......."),
          decoration: BoxDecoration(
            border: Border.all(
                color: Color.fromARGB(255, 65, 61, 61), width: 0.5, style: BorderStyle.solid),
          ),
        ),
      ],
    );
  }
}
