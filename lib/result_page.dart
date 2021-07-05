import 'package:flutter/material.dart';
import 'package:vehicle_search/info_tile.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.vehicleRawResponse});
  Map<String, dynamic> vehicleRawResponse;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(vehicleRawResponse['license_plate']),
      ),
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          // Text(
          //   'plate number: ' + vehicleRawResponse['license_plate'],
          // ),
          // Text(
          //   'owner: ' + vehicleRawResponse['owner_name'],
          // ),
          // Text(
          //   'class: ' + vehicleRawResponse['class'],
          // ),
          // Text(
          //   'brand: ' + vehicleRawResponse['brand_name'],
          // ),
          // Text(
          //   'model: ' + vehicleRawResponse['brand_model'],
          // ),
          // Text(
          //   'fuel type: ' + vehicleRawResponse['fuel_type'],
          // ),
          // Text(
          //   'rto: ' + vehicleRawResponse['rto'],
          // ),
          // Text(
          //   'registration date: ' + vehicleRawResponse['registration_date'],
          // ),
          // Text(
          //   'insurance expiry: ' + vehicleRawResponse['insurance_expiry'],
          // ),
          // Text(
          //   'engine number: ' + vehicleRawResponse['engine_number'],
          // ),
          InfoTile(), InfoTile(), InfoTile(), InfoTile(), InfoTile(),
          InfoTile(), InfoTile(),
        ],
      ),
    );
  }
}
