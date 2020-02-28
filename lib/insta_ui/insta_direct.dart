import 'dart:convert';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:insta_ui/insta_ui/model/messages.dart';

class InstaDirect extends StatefulWidget {
  static const routeName='/direct';
  @override
  _InstaDirectState createState() => _InstaDirectState();
}

class _InstaDirectState extends State<InstaDirect> {
  MessageList messageList;

  Future<List<Message>> _getAllMessage(String value) async {
    return messageList.msgList;
  }

  @override
  void initState() {
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
      body: SafeArea(
        child: SearchBar<Message>(
            onSearch: _getAllMessage,
            hintText: "search here",
            icon: Icon(Icons.search),
            searchBarPadding: EdgeInsets.symmetric(horizontal: 10),
            listPadding: EdgeInsets.symmetric(horizontal: 10),
            placeHolder: setSelectedWidget(),
            onItemFound: (Message mymessage, int index) {
              return Container(
                color: Colors.lightBlue,
                child: ListTile(
                  title: Text(mymessage.name),
                  isThreeLine: true,
                  subtitle: Text(mymessage.message),
                  onTap: () {
                    //todo: implement the ontap lisetner
                  },
                ),
              );
            }),
      ),
    );
  }

  Widget setSelectedWidget() {
    if (messageList == null) {
      return Container(
        child: Text("No Data Available Yet"),
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:8.0,right: 8.0,top:10,bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[Text("Messages"), Text("1 request",style: TextStyle(color: Colors.blue),)],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: messageList.msgList.length,
                itemBuilder: (context, index) {
                  Message real_message = messageList.msgList.elementAt(index);
                  return ListTile(
                    title: Text(
                      real_message.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(real_message.message),
                    leading: Stack(
                     children: <Widget>[
                       ClipRRect(
                         child: Image.asset(
                           real_message.imageUri,
                           height: 40,
                           width: 40,
                           fit: BoxFit.cover,
                         ),
                         borderRadius: BorderRadius.circular(15),
                       ),
                       Positioned(
                         left:28,
                         top:28,
                         child: Container(
                           height: 10,
                           width: 10,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(4),
                             color: Colors.greenAccent
                           ),
                         ),
                       )
                     ],
                    ),
                    trailing: Icon(Icons.camera_alt),
                  );
                }),
          ),
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
    return await rootBundle.loadString('json/newmessages.json');
  }
}
