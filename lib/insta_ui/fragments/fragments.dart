import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fragments {
  String title;
  IconData icon;
  Fragments(this.title, this.icon);
}
class FirstFragment extends StatefulWidget {
  @override
  _FirstFragmentState createState() => _FirstFragmentState();
}

class _FirstFragmentState extends State<FirstFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("First Fragment"),
    );
  }
}

class SecondFragment extends StatefulWidget {
  @override
  _SecondFragmentState createState() => _SecondFragmentState();
}

class _SecondFragmentState extends State<SecondFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("second fragment"),
    );
  }
}

class ThirdFragment extends StatefulWidget {
  @override
  _ThirdFragmentState createState() => _ThirdFragmentState();
}

class _ThirdFragmentState extends State<ThirdFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("third fragment"),
      
    );
  }
}
class FourthFragment extends StatefulWidget {
  @override
  _FourthFragmentState createState() => _FourthFragmentState();
}

class _FourthFragmentState extends State<FourthFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Fourth Fragment"),
      
    );
  }
}

class FifthFragment extends StatefulWidget {
  @override
  _FifthFragmentState createState() => _FifthFragmentState();
}

class _FifthFragmentState extends State<FifthFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Fifth Fragment"),
    );
  }
}