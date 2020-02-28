import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:insta_ui/insta_ui/utils/constants.dart';
import 'model/notifications.dart';

class Activity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ActivityState();
  }
}

class ActivityState extends State<Activity> {
  NotificationList notificationList;
  MyNotification myNotification;
  NotificationMessage notificationMessage;

  String _assingString(int i) {
    switch (i) {
      case 1:
        return Constants.for_1;
        break;
      case 2:
        return Constants.for_2;
        break;
      case 3:
        return Constants.for_3;
        break;
      default:
        return Constants.for_1;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _fetchJsonData().then((value) {
        this.notificationList = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[dynamiContent(), setSelectedWidget()],
      ),
    );
  }

  Widget dynamiContent() {
    return AppBar(
      title: Text("Activity"),
    );
  }

  Widget setSelectedWidget() {
    if (notificationList == null) {
      return Container(
        child: Text("No Notifications Yet "),
      );
    } else {
      return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: notificationList.notifList.length,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          myNotification = notificationList.notifList.elementAt(index);
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _assingString(myNotification.timeStamp),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: myNotification.ntfList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: Image.asset(
                              myNotification.ntfList.elementAt(index).imageUri,
                              height: 30,
                              width: 30,
                              fit: BoxFit.cover,
                            )),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(myNotification.ntfList
                                .elementAt(index)
                                .message),
                          ),
                        ),
                        Image.asset(
                          myNotification.ntfList.elementAt(index).imageUri,
                          height: 30,
                          width: 30,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          );
        },
      );
    }
  }

  Future<NotificationList> _fetchJsonData() async {
    String jsonString = await _loadJsonFromAsset();
    final jsonResponse = json.decode(jsonString);
    notificationList = NotificationList.fromJson(jsonResponse);
    return notificationList;
  }

  Future<String> _loadJsonFromAsset() async {
    return await rootBundle.loadString('json/notifications.json');
  }
}
