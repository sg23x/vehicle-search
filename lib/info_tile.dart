import 'package:flutter/material.dart';

class InfoTile extends StatelessWidget {
  InfoTile({this.title, this.response});
  String title;
  String response;
  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    double hei = MediaQuery.of(context).size.height;

    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: wid * 1,
        maxWidth: wid * 1,
        // minHeight: hei * 0.15,
      ),
      child: Container(
        margin: EdgeInsets.only(
          left: wid * 0.025,
          right: wid * 0.025,
          top: hei * 0.007,
          bottom: hei * 0.007,
        ),
        padding: EdgeInsets.only(
          left: wid * 0.025,
          right: wid * 0.025,
          top: hei * 0.014,
          bottom: hei * 0.014,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: wid * 0.004, color: Colors.grey),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$title',
              style: TextStyle(
                color: Colors.black38,
                fontSize: wid * 0.05,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
              ),
            ),
            Text(
              response,
              style: TextStyle(
                fontSize: wid * 0.07,
                color: Colors.black,
                fontFamily: 'Montserrat',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
