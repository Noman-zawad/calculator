import 'package:flutter/material.dart';

import '../widgets/button.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _input = '';

  void _onButtonPressed(String value) {
    setState(() {
      _input += value;
    });
  }

  void _onClearPressed() {
    setState(() {
      _input = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ... (other scaffold properties)
      body: Column(
        children: [
          // ... (other calculator UI elements)
          Column(
            children: [
              Row(
                children: [
                  CalculatorButton(
                      text: 'v',
                      textColor: Colors.black,
                      onPressed: _onButtonPressed),
                  CalculatorButton(
                      text: 'c',
                      textColor: Colors.red,
                      onPressed: _onClearPressed),
                  CalculatorButton(
                      text: 'x',
                      textColor: Colors.black,
                      onPressed: _onButtonPressed),
                  CalculatorButton(
                      text: '/',
                      textColor: Colors.black,
                      onPressed: _onButtonPressed),
                ],
              ),
              Row(
                children: [
                  CalculatorButton(
                      text: '(',
                      textColor: Colors.black,
                      onPressed: _onButtonPressed),
                  CalculatorButton(
                      text: ')',
                      textColor: Colors.black,
                      onPressed: _onButtonPressed),
                  CalculatorButton(
                      text: '%',
                      textColor: Colors.black,
                      onPressed: _onButtonPressed),
                  CalculatorButton(
                      text: '*',
                      textColor: Colors.black,
                      onPressed: _onButtonPressed),
                ],
              ),
              Row(
                children: [
                  CalculatorButton(
                      text: '1',
                      textColor: Colors.black,
                      onPressed: _onButtonPressed),
                  CalculatorButton(
                      text: '2',
                      textColor: Colors.black,
                      onPressed: _onButtonPressed),
                  CalculatorButton(
                      text: '3',
                      textColor: Colors.black,
                      onPressed: _onButtonPressed),
                  CalculatorButton(
                      text: '-',
                      textColor: Colors.black,
                      onPressed: _onButtonPressed),
                ],
              ),
              Row(
                children: [
                  CalculatorButton(
                      text: '4',
                      textColor: Colors.black,
                      onPressed: _onButtonPressed),
                  CalculatorButton(
                      text: '5',
                      textColor: Colors.black,
                      onPressed: _onButtonPressed),
                  CalculatorButton(
                      text: '6',
                      textColor: Colors.black,
                      onPressed: _onButtonPressed),
                  CalculatorButton(
                      text: '+',
                      textColor: Colors.black,
                      onPressed: _onButtonPressed),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    flex: 3,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CalculatorButton(
                                text: '7',
                                textColor: Colors.black,
                                onPressed: _onButtonPressed),
                            CalculatorButton(
                                text: '8',
                                textColor: Colors.black,
                                onPressed: _onButtonPressed),
                            CalculatorButton(
                                text: '9',
                                textColor: Colors.black,
                                onPressed: _onButtonPressed),
                          ],
                        ),
                        Row(
                          children: [
                            CalculatorButton(
                                text: '0',
                                textColor: Colors.black,
                                onPressed: _onButtonPressed),
                            CalculatorButton(
                                text: '00',
                                textColor: Colors.black,
                                onPressed: _onButtonPressed),
                            CalculatorButton(
                                text: '.',
                                textColor: Colors.black,
                                onPressed: _onButtonPressed),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                        text: '=',
                        textColor: Colors.black,
                        onPressed: _onButtonPressed),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
