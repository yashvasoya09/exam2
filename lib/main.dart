import 'package:exam2/home/home_screen.dart';
import 'package:flutter/material.dart';

import 'home/add screen.dart';
void main()
{
  runApp(MaterialApp(
    routes: {
      '/':(context) => homeScreen(),
      'addScreen':(context) => addScreen(),
    },
    debugShowCheckedModeBanner: false,
  ),);
}