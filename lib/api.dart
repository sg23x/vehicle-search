import 'package:http/http.dart' as http;

Future getData({vehicleId}) async {
  http.Response response = await http.post(
    "https://api.apiclub.in/api/v1/vehicle_info/",
    headers: {
      "API-KEY": "628017c99f177a4937a767d79fa5776f",
      "Referer": "app in testing"
    },
    body: {
      "vehicleId": vehicleId,
    },
  );
  return response.body;
}
