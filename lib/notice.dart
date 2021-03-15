import 'package:flutter/material.dart';

class Notice extends StatefulWidget {
  @override
  _NoticeState createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Notice',
        style: TextStyle(
          fontSize: 30,
        ),),
    );;
  }
}
