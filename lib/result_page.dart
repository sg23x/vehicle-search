import 'package:flutter/material.dart';
import 'package:vehicle_search/info_tile.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.vehicleRawResponse});
  Map<String, dynamic> vehicleRawResponse;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          vehicleRawResponse['license_plate'],
          style: TextStyle(
            fontFamily: 'Montserrat',
          ),
        ),
      ),
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          InfoTile(
            title: "License Plate Number",
            response: vehicleRawResponse["license_plate"],
          ),
          InfoTile(
            title: "Owner Name",
            response: vehicleRawResponse["owner_name"],
          ),
          InfoTile(
            title: "Brand",
            response: vehicleRawResponse["brand_name"],
          ),
          vehicleRawResponse["brand_model"] != null &&
                  vehicleRawResponse["brand_model"].toString().trim() != ""
              ? InfoTile(
                  title: "Model",
                  response: vehicleRawResponse["brand_model"],
                )
              : SizedBox(),
          vehicleRawResponse["fuel_type"] != null &&
                  vehicleRawResponse["fuel_type"].toString().trim() != ""
              ? InfoTile(
                  title: "Fuel Type",
                  response: vehicleRawResponse["fuel_type"],
                )
              : SizedBox(),
          InfoTile(
            title: "RTO",
            response:
                vehicleRawResponse["rto"] + ", " + vehicleRawResponse["state"],
          ),
          InfoTile(
            title: "Registration Date",
            response: vehicleRawResponse["registration_date"],
          ),
          InfoTile(
            title: "Vehicle age",
            response: vehicleRawResponse["registration_date"],
          ),
          InfoTile(
            title: "Insurance Expiry",
            response: vehicleRawResponse["insurance_expiry"],
          ),
        ],
      ),
    );
  }
}
