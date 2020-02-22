import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:insta_ui/insta_ui/model/notifications.dart';

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
    NotificationList notificationList = NotificationList.fromJson(jsonResponse);
    MyNotification notification = notificationList.notifList.elementAt(0);
    NotificationMessage notificationMessage = notification.ntfList.elementAt(0);
    print(notificationMessage.message);
    print(notificationMessage.imageUri);
  }


  Future<String> _loadJsonFromAsset() async {
    return await rootBundle.loadString('json/notifications.json');
  }

}
