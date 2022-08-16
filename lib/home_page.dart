import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String? value=null;
   HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(value!),
      ),
    );
  }
}
