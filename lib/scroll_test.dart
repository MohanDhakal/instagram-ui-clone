import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:insta_ui/insta_ui/model/messages.dart';

class JsonTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: RaisedButton(
      onPressed: _fetchJsonData,
      child: Text("Get Data"),
    ));
  }

  _fetchJsonData() async {
    String jsonString = await _loadJsonFromAsset();

    final jsonResponse = json.decode(jsonString);
    MessageList messageList = MessageList.fromJson(jsonResponse);
    for (int i = 0; i < messageList.msgList.length; i++) {
      print(messageList.msgList.elementAt(0).message);
    }
  }

  Future<String> _loadJsonFromAsset() async {
    return await rootBundle.loadString("json/newmessages.json");
  }
}
