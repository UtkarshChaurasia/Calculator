import 'package:flutter/material.dart';

import 'widgets/CalcButton.dart';

void main() {
  runApp(MaterialApp(
    title: "Calculator",
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: CalcButton(
          text: "1",
        ),
      ),
    );
  }
}
