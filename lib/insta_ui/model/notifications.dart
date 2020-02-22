

/*PODO equivalence for the json parsing of the notification message, for format see notifications.json file in json directory*/


//to hold the actual notification message
class NotificationMessage {
  String imageUri, message;

  NotificationMessage({this.imageUri, this.message});

  factory NotificationMessage.fromJson(Map<String, dynamic> ntfMsg) {
    return NotificationMessage(
        imageUri: ntfMsg["imageUri"], message: ntfMsg["message"]);
  }
}

//holds the list of notification
class MyNotification {
  int timeStamp;
  List<NotificationMessage> ntfList;

  MyNotification({this.timeStamp,this.ntfList});
  factory MyNotification.fromJson(Map<String, dynamic> lists) {

    var ntfList=lists["notifications"] as List;

    List<NotificationMessage> customList=ntfList.map((i)=>NotificationMessage.fromJson(i)).toList();

    return MyNotification(
      timeStamp: lists["timeStamp"],
      ntfList: customList
    );
  }
}
//holds entire array of notification with timeStamp as well

class NotificationList{
  List<MyNotification>notifList;
  NotificationList({this.notifList});

  factory NotificationList.fromJson(List<dynamic>jsonResponse){
    return NotificationList(
      notifList:jsonResponse.map((i)=>MyNotification.fromJson(i)).toList()
    );
  }

}
