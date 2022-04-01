import 'package:flutter/cupertino.dart';

class HomeCardModule{
  final String title;
  final String date;
  final String description;
  final VoidCallback heartAction;
  final bool isHeartFill;
  final Color bgColor;
  final Widget action;

  HomeCardModule(this.title, this.date, this.description, this.isHeartFill, this.bgColor, this.heartAction, this.action);

}