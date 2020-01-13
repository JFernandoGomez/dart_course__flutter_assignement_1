import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';

class TextController extends StatelessWidget {
  final String textItem;
  final Map button;
  final Function changeTextHandler;

  TextController({
    @required this.textItem,
    @required this.changeTextHandler,
    @required this.button,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          TextDisplay(textItem),
          RaisedButton(
            child: Text(button['label']),
            color: button['color'],
            onPressed: changeTextHandler,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}

class TextDisplay extends StatelessWidget {
  final textLabel;

  TextDisplay(this.textLabel);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        textLabel,
        style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
