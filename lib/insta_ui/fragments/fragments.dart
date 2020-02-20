import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fragments {
  String title;
  IconData icon;

  static List<Fragments> get allfragments => _allfragments;

  Fragments(this.title, this.icon);

  static List<Fragments> _allfragments = <Fragments>[
    Fragments(
      'Home',
      Icons.home,
    ),
    Fragments('Business', Icons.business),
    Fragments(
      'Home',
      Icons.add,
    ),
    Fragments('Business', Icons.person),
  ];
}
