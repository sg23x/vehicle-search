import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:vehicle_search/result_page.dart';
import 'api.dart';

class QueryPage extends StatefulWidget {
  @override
  _QueryPageState createState() => _QueryPageState();
}

class _QueryPageState extends State<QueryPage> {
  String vehicleId;
  Map<String, dynamic> vehicleRaw;
  String gg = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(gg),
          TextField(
            onChanged: (val) {
              vehicleId = val;
            },
          ),
          RaisedButton(
            onPressed: () {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return WillPopScope(
                    onWillPop: () async => false,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircularProgressIndicator(
                          strokeWidth: 8,
                        ),
                      ],
                    ),
                  );
                },
              );
              getData(
                vehicleId: vehicleId,
              ).then((value) {
                setState(() {
                  vehicleRaw = json.decode(value);
                });
                print(vehicleRaw);
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ResultPage(
                      vehicleRawResponse: vehicleRaw['response'],
                    ),
                  ),
                );
              });
            },
          ),
        ],
      ),
    );
  }
}
