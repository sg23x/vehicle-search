import 'package:flutter/material.dart';

class InfoTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width * 1,
        maxWidth: MediaQuery.of(context).size.width * 1,
        minHeight: MediaQuery.of(context).size.height * 0.15,
      ),
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 5, color: Colors.grey),
        ),
        child: Text(''),
      ),
    );
  }
}
