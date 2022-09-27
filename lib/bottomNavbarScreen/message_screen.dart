// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  bool activeSaitch = false;
  bool checkMark = false;
  double currentValue = 1.0;
  double progressValue(double count) {
    double updateValue = currentValue / count.toDouble();
    return updateValue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Message"),
      ),
      body: Column(
        children: [
          Switch(
              value: activeSaitch,
              onChanged: (value) {
                setState(() {
                  activeSaitch = value;
                  print(activeSaitch);
                });
              }),
          Checkbox(
              value: checkMark,
              onChanged: (value) {
                setState(() {
                  checkMark = value!;
                });
              }),
          SizedBox(
            height: 100,
          ),
          LinearProgressIndicator(),
          SizedBox(
            height: 100,
          ),
          CircularProgressIndicator.adaptive(),
        ],
      ),
    );
  }
}
