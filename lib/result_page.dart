import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.vehicleRawResponse});
  Map<String, dynamic> vehicleRawResponse;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'plate number: ' + vehicleRawResponse['license_plate'],
          ),
          Text(
            'owner: ' + vehicleRawResponse['owner_name'],
          ),
          Text(
            'class: ' + vehicleRawResponse['class'],
          ),
          Text(
            'brand: ' + vehicleRawResponse['brand_name'],
          ),
          Text(
            'model: ' + vehicleRawResponse['brand_model'],
          ),
          Text(
            'fuel type: ' + vehicleRawResponse['fuel_type'],
          ),
          Text(
            'rto: ' + vehicleRawResponse['rto'],
          ),
          Text(
            'registration date: ' + vehicleRawResponse['registration_date'],
          ),
          Text(
            'insurance expiry: ' + vehicleRawResponse['insurance_expiry'],
          ),
          Text(
            'engine number: ' + vehicleRawResponse['engine_number'],
          ),
        ],
      ),
    );
  }
}
