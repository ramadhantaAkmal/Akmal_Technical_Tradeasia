import 'dart:convert';

import 'package:http/http.dart' as http;

class BrandApi {
  static const String url = 'https://tradeasia.sg//en/dipentene';

  static getBrands() async {
    try {
      Uri a = Uri.parse(url);

      final response = await http.get(
        a,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      if (response.statusCode == 200) {
        final body = json.decode(response.body);
        return body;
      } else {
        final statusCode = response.statusCode;
        return "error status code: $statusCode";
      }
    } catch (e) {
      return "error";
    }
  }
}
