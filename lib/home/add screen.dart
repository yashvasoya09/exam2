import 'package:flutter/material.dart';

class addScreen extends StatefulWidget {
  const addScreen({Key? key}) : super(key: key);

  @override
  State<addScreen> createState() => _addScreenState();
}

class _addScreenState extends State<addScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Screen"),centerTitle: true),
      body: Column(children: [
        SizedBox(height: 10),
        TextField(),
        SizedBox(height: 10),
        TextField(),
      ]),
    );
  }
}
