import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:gcg_es/main.dart';

class contact extends StatelessWidget {
  const contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffd333),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain,
              height: 26,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => homepage()));
            },
            icon: Icon(Icons.search),
            // focusColor: Color(0xFFFFD333),
            // hoverColor: Color(0xFFFFD333),
            // splashColor: Color(0xFFFFD333),
            // highlightColor: Color(0xFFFFD333),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => homepage()));
            },
            icon: Icon(Icons.favorite_outline),
            // focusColor: Color(0xFFFFD333),
            // hoverColor: Color(0xFFFFD333),
            // splashColor: Color(0xFFFFD333),
            // highlightColor: Color(0xFFFFD333),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => homepage()));
            },
            icon: Icon(Icons.shopping_cart_outlined),
            // focusColor: Color(0xFFFFD333),
            // hoverColor: Color(0xFFFFD333),
            // splashColor: Color(0xFFFFD333),
            // highlightColor: Color(0xFFFFD333),
          ),
        ],),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Contact Us", style: TextStyle(color: Color(0xFF3d464d),fontSize: 20,fontWeight: FontWeight.bold),),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("GCG is focused on advanced automation and digitalization of energy systems in the Middle East, which include Design, Engineering, Supply, Inspection, Installation, Testing, Commissioning, Training, and Maintenance support.",
              style: TextStyle(color: Color(0xFF3d464d), fontSize: 15),textAlign: TextAlign.center,
            ),
        ),
        SizedBox(height: 20,),  
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Abu Dhabi, UAE Building 411, 11th Floor Madinat Zayed Office Tower Sultan Bin Zayed The First Street P.O. Box 43044 +971 2 419 6900",
              style: TextStyle(color: Color(0xFF3d464d), fontSize: 15),
              textAlign: TextAlign.center,
            ),
        ),
        SizedBox(height: 20,),  
        Center(child: Text("sales@gcg-es.com")),
        SizedBox(height: 20,),  
        Text("+971 2 419 6900 , +971 4 238 4440"),
      
      ],
    ),
    );
  }
}
