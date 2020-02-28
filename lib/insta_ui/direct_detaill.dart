import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'model/messages.dart';

class DirectDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DirectDetailState();
  }
}

class DirectDetailState extends State<StatefulWidget> {
  MessageList messageList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _fetchJsonData().then((value) {
        messageList = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back),
        title: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Image.asset(
            "images/mohan.jpg",
            height: 25,
            width: 25,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Center(
                  child: Text(
                    "Mohan Dhakal",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Icon(
                    Icons.videocam,
                    size: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Icon(
                    Icons.bookmark_border,
                    size: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Icon(
                    Icons.perm_device_information,
                    size: 25,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: setSelectedWidget(),
    );
  }

  Widget setSelectedWidget() {
    if (messageList == null) {
      return Container(
        child: Text("This container is empty for now"),
      );
    } else {
      return Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                Message r_message = messageList.msgList.elementAt(index);
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24.0),
                          child: Image.asset(
                            r_message.imageUri,
                            height: 30,
                            width: 30,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Container(
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.white, width: 0.5),
                                  bottom: BorderSide(
                                      color: Colors.white, width: 0.5),
                                  right: BorderSide(
                                      color: Colors.white, width: 0.5),
                                  left: BorderSide(
                                      color: Colors.white, width: 0.5)),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.zero),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(r_message.message),
                            )),
                      )
                    ],
                  ),
                );
              },
              itemCount: messageList.msgList.length,
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.only(left: 8, right: 8),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(color: Colors.white, width: 0.5),
                    bottom: BorderSide(color: Colors.white, width: 0.5),
                    right: BorderSide(color: Colors.white, width: 0.5),
                    left: BorderSide(color: Colors.white, width: 0.5)),
                borderRadius: BorderRadius.all(Radius.circular(24))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Icon(
                    Icons.camera_alt,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left:36.0),
                    child: TextField(
                      decoration: InputDecoration(
                         /* enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 0.1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                          ),*/
                          border:
                              UnderlineInputBorder(borderSide: BorderSide.none),
                          hintText: "message....",
                          hintStyle: TextStyle(color: Colors.blueGrey)),
                    ),
                  ),
                ),
                Icon(Icons.keyboard_voice),
                Icon(Icons.photo),
                Icon(Icons.add_circle),
              ],
            ),
          )
        ],
      );
    }
  }

  Future<MessageList> _fetchJsonData() async {
    String jsonString = await _loadJsonFromAsset();
    final jsonResponse = json.decode(jsonString);
    messageList = MessageList.fromJson(jsonResponse);
    return messageList;
  }

  Future<String> _loadJsonFromAsset() async {
    return await rootBundle.loadString('json/directs.json');
  }
}
