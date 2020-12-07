import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.only(right: 12),
            child: Text(
              "123 x 123",
              style: GoogleFonts.rubik(
                  textStyle: TextStyle(fontSize: 24), color: Colors.grey[500]),
            ),
            alignment: Alignment(1, 1),
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: Text(
              "123",
              style: GoogleFonts.rubik(
                  textStyle: TextStyle(fontSize: 48), color: Colors.white),
            ),
            alignment: Alignment(1, 1),
          ),
          SizedBox(height: 40),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcButton(
                  text: 'AC',
                  fillColor: 0xFFFB8C00,
                  textColor: 0xFFFFFFFF,
                ),
                CalcButton(
                  text: 'C',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFFFB8C00,
                ),
                CalcButton(
                  text: '%',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFFFB8C00,
                ),
                CalcButton(
                  text: '/',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFFFB8C00,
                ),
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcButton(
                  text: '7',
                  fillColor: 0xFF212121,
                ),
                CalcButton(
                  text: '8',
                  fillColor: 0xFF212121,
                ),
                CalcButton(
                  text: '9',
                  fillColor: 0xFF212121,
                ),
                CalcButton(
                  text: 'X',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFFFB8C00,
                ),
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcButton(
                  text: '4',
                  fillColor: 0xFF212121,
                ),
                CalcButton(
                  text: '5',
                  fillColor: 0xFF212121,
                ),
                CalcButton(
                  text: '6',
                  fillColor: 0xFF212121,
                ),
                CalcButton(
                  text: '-',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFFFB8C00,
                ),
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcButton(
                  text: '1',
                  fillColor: 0xFF212121,
                ),
                CalcButton(
                  text: '2',
                  fillColor: 0xFF212121,
                ),
                CalcButton(
                  text: '3',
                  fillColor: 0xFF212121,
                ),
                CalcButton(
                  text: '+',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFFFB8C00,
                ),
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcButton(
                  text: '.',
                  fillColor: 0xFF212121,
                ),
                CalcButton(
                  text: '0',
                  fillColor: 0xFF212121,
                ),
                CalcButton(
                  text: '00',
                  fillColor: 0xFF212121,
                ),
                CalcButton(
                  text: '=',
                  textSize: 30,
                  fillColor: 0xFFFB8C00,
                  textColor: 0xFFFFFFFF,
                ),
              ]),
        ],
      ),
    );
  }
}
