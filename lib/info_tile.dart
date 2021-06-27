import 'package:flutter/material.dart';

class InfoTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height * 0.1,
      color: Colors.pink,
    );
  }
}
