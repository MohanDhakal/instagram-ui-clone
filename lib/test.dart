import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_turn/page_turn.dart';

List<Widget> defaultPages = [
  Center(
    child: Text("Hello There"),
  ),
  Center(
    child: Text("asdmklkm"),
  ),
  Container(
    child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          'images/argentina.jpg',
          height: 40,
          width: 40,
          fit: BoxFit.cover,
        )),
  ),
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = GlobalKey<PageTurnState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageTurn(
          key: _controller,
          backgroundColor: Colors.white,
          showDragCutoff: false,
          lastPage: Container(child: Center(child: Text('Last Page!'))),
          children: defaultPages),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        onPressed: () {_controller.currentState.goToPage(2);
        },
      ),
    );
  }
}
