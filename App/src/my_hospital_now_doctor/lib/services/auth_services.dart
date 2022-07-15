import 'dart:convert';

import 'package:my_hospital_now_doctor/Services/globals.dart';
import 'package:http/http.dart' as http;

class AuthServices {
  Future<String> getDoctors() async {
    var url = Uri.parse(baseURL + 'get-all-doctors');

    var response = await http.get(url);
    var resBody = json.decode(response.body);

    return resBody['data'];
  }

  // ignore: unnecessary_this

}
