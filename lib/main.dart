import 'package:flutter/material.dart';

import './textController.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _textIndex = 0;

  final _displayTexts = [
    'Hi!',
    'How are you?',
    'It\'s a sunny day!',
    'Good bye!',
  ];

  final Map<String, Object>_buttonStates = {
    'go': {
      'label': 'What\'s next?', 'color': Colors.lime,
    },
    'reset': {
      'label': 'Wanna go again?', 'color': Colors.red,
    }
  };

  Map _getLabel() {
    return _textIndex < _displayTexts.length - 1
        ? _buttonStates['go']
        : _buttonStates['reset'];
  }

  void textChange() {
    setState(() {
      _textIndex = _textIndex < _displayTexts.length - 1 ? _textIndex + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My flutter assignment'),
          centerTitle: false,
        ),
        body: Container(
          child: TextController(
            changeTextHandler: textChange,
            textItem: _displayTexts[_textIndex],
            button: _getLabel(),
          ),
        ),
      ),
    );
  }
}
