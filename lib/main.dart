import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';

import 'widgets/CalcButton.dart';

void main() {
  runApp(CalcApp());
}

class CalcApp extends StatefulWidget {
  CalcApp({Key key}) : super(key: key);

  @override
  CalcAppState createState() => CalcAppState();
}

class CalcAppState extends State<CalcApp> {
  String _history = '';
  String _expression = '';

  void numClick(String text) {
    setState(() {
      _expression += text;
    });
  }

  void allClear(String text) {
    setState(() {
      _history = '';
      _expression = '';
    });
  }

  void clear(String text) {
    setState(() {
      _expression = '';
    });
  }

  void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      _history = _expression;
      _expression = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Calculator",
        home: Scaffold(
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
                  _history,
                  style: GoogleFonts.rubik(
                      textStyle: TextStyle(fontSize: 24),
                      color: Colors.grey[500]),
                ),
                alignment: Alignment(1, 1),
              ),
              Container(
                padding: EdgeInsets.all(12),
                child: Text(
                  _expression,
                  style: GoogleFonts.rubik(
                      textStyle: TextStyle(fontSize: 48), color: Colors.white),
                ),
                alignment: Alignment(1, 1),
              ),
              SizedBox(height: 40),
              Container(
                child: Divider(
                  height: 70,
                  thickness: 1,
                  color: Colors.orange,
                  indent: 25,
                  endIndent: 25,
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      text: 'AC',
                      fillColor: 0xFFFB8C00,
                      textColor: 0xFFFFFFFF,
                      callback: allClear,
                    ),
                    CalcButton(
                      text: 'C',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFFFB8C00,
                      callback: clear,
                    ),
                    CalcButton(
                      text: '%',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFFFB8C00,
                      callback: numClick,
                    ),
                    CalcButton(
                      text: '/',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFFFB8C00,
                      callback: numClick,
                    ),
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      text: '7',
                      fillColor: 0xFF212121,
                      callback: numClick,
                    ),
                    CalcButton(
                      text: '8',
                      fillColor: 0xFF212121,
                      callback: numClick,
                    ),
                    CalcButton(
                      text: '9',
                      fillColor: 0xFF212121,
                      callback: numClick,
                    ),
                    CalcButton(
                      text: '*',
                      textSize: 30,
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFFFB8C00,
                      callback: numClick,
                    ),
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      text: '4',
                      fillColor: 0xFF212121,
                      callback: numClick,
                    ),
                    CalcButton(
                      text: '5',
                      fillColor: 0xFF212121,
                      callback: numClick,
                    ),
                    CalcButton(
                      text: '6',
                      fillColor: 0xFF212121,
                      callback: numClick,
                    ),
                    CalcButton(
                      text: '-',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFFFB8C00,
                      callback: numClick,
                    ),
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      text: '1',
                      fillColor: 0xFF212121,
                      callback: numClick,
                    ),
                    CalcButton(
                      text: '2',
                      fillColor: 0xFF212121,
                      callback: numClick,
                    ),
                    CalcButton(
                      text: '3',
                      fillColor: 0xFF212121,
                      callback: numClick,
                    ),
                    CalcButton(
                      text: '+',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFFFB8C00,
                      callback: numClick,
                    ),
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      text: '.',
                      fillColor: 0xFF212121,
                      callback: numClick,
                    ),
                    CalcButton(
                      text: '0',
                      fillColor: 0xFF212121,
                      callback: numClick,
                    ),
                    CalcButton(
                      text: '00',
                      fillColor: 0xFF212121,
                      callback: numClick,
                    ),
                    CalcButton(
                      text: '=',
                      textSize: 30,
                      fillColor: 0xFFFB8C00,
                      textColor: 0xFFFFFFFF,
                      callback: evaluate,
                    ),
                  ]),
            ],
          ),
        ));
  }
}
