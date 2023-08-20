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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text('Calculator'),
        ),
        backgroundColor: const Color(0xFF0e2433),
        body: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    CalculatorButton(
                        text: 'v',
                        onPressed: _onButtonPressed,
                        btnColor: const Color(0xff0b344f)),
                    CalculatorButton(
                        text: 'c',
                        onPressed: _onClearPressed,
                        btnColor: const Color(0xff0b344f)),
                    CalculatorButton(
                        text: 'x',
                        onPressed: _onButtonPressed,
                        btnColor: const Color(0xff0b344f)),
                    CalculatorButton(
                        text: '/',
                        onPressed: _onButtonPressed,
                        btnColor: const Color(0xff0b344f)),
                  ],
                ),
                Row(
                  children: [
                    CalculatorButton(
                        text: '(',
                        onPressed: _onButtonPressed,
                        btnColor: const Color(0xff0b344f)),
                    CalculatorButton(
                        text: ')',
                        onPressed: _onButtonPressed,
                        btnColor: const Color(0xff0b344f)),
                    CalculatorButton(
                        text: '%',
                        onPressed: _onButtonPressed,
                        btnColor: const Color(0xff0b344f)),
                    CalculatorButton(
                        text: '*',
                        onPressed: _onButtonPressed,
                        btnColor: const Color(0xff0b344f)),
                  ],
                ),
                Row(
                  children: [
                    CalculatorButton(
                        text: '1',
                        onPressed: _onButtonPressed,
                        btnColor: const Color(0xff0b344f)),
                    CalculatorButton(
                        text: '2',
                        onPressed: _onButtonPressed,
                        btnColor: const Color(0xff0b344f)),
                    CalculatorButton(
                        text: '3',
                        onPressed: _onButtonPressed,
                        btnColor: const Color(0xff0b344f)),
                    CalculatorButton(
                        text: '-',
                        onPressed: _onButtonPressed,
                        btnColor: const Color(0xff0b344f)),
                  ],
                ),
                Row(
                  children: [
                    CalculatorButton(
                        text: '4',
                        onPressed: _onButtonPressed,
                        btnColor: const Color(0xff0b344f)),
                    CalculatorButton(
                        text: '5',
                        onPressed: _onButtonPressed,
                        btnColor: const Color(0xff0b344f)),
                    CalculatorButton(
                        text: '6',
                        onPressed: _onButtonPressed,
                        btnColor: const Color(0xff0b344f)),
                    CalculatorButton(
                        text: '+',
                        onPressed: _onButtonPressed,
                        btnColor: const Color(0xff0b344f)),
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
                                  onPressed: _onButtonPressed,
                                  btnColor: const Color(0xff0b344f)),
                              CalculatorButton(
                                  text: '8',
                                  onPressed: _onButtonPressed,
                                  btnColor: const Color(0xff0b344f)),
                              CalculatorButton(
                                  text: '9',
                                  onPressed: _onButtonPressed,
                                  btnColor: const Color(0xff0b344f)),
                            ],
                          ),
                          Row(
                            children: [
                              CalculatorButton(
                                  text: '0',
                                  onPressed: _onButtonPressed,
                                  btnColor: const Color(0xff0b344f)),
                              CalculatorButton(
                                  text: '00',
                                  onPressed: _onButtonPressed,
                                  btnColor: const Color(0xff0b344f)),
                              CalculatorButton(
                                  text: '.',
                                  onPressed: _onButtonPressed,
                                  btnColor: const Color(0xff0b344f)),
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: CalculatorButton(
                          text: '=',
                          onPressed: _onButtonPressed,
                          btnColor: const Color(0xff296d98)),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
