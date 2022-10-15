import 'package:flutter/material.dart';

Widget createDrawerHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
       decoration:
       BoxDecoration(
         color: Colors.purple.shade300,
         //  image: DecorationImage(
         //      fit: BoxFit.fill,
         //      image:  AssetImage('assets/images/proba.png')
         //  )
      ),
      child: Stack(children: const <Widget>[
        Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text("Welcome to AfterMath",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500))),
      ]));
}