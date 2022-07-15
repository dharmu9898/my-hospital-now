import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:my_hospital_now/Services/globals.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthServices {
  var token;
  Future<http.Response> register(
      String name,
      String email,
      String phone,
      String dailcode,
      String countryid,
      String categoryid,
      String _case) async {
    Map data = {
      "name": name,
      "email": email,
      "phone": phone,
      "country_code": dailcode,
      "country_id": countryid,
      "category_id": categoryid,
      "case": _case,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + 'register');
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    var getData = json.decode(response.body);
    print(getData["token"]);
    _savetoken(getData["token"]);
    _saveemail(email);
    return response;
  }

  Future<http.Response> login(String email, String password) async {
    Map data = {
      "email": email,
      "password": password,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + 'login');
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    var getData = json.decode(response.body);

    _savetoken(getData["success"]["token"]);
    _saveemail(email);
    return response;
  }

  Future<List> getOpenQuote() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key) ?? 0;
    final pemail = 'email';
    final pvalue = prefs.get(pemail) ?? 0;
    print(value);
    var url = Uri.parse(baseURL + 'quotes/open/' + pvalue);
    print(url);
    http.Response response = await http.get(url, headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer $value'
    });
    print(response.body);
    var getData = json.decode(response.body);
    return getData['data'];
  }

  Future<List> getClosedQuote() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key) ?? 0;
    final pemail = 'email';
    final pvalue = prefs.get(pemail) ?? 0;
    print(value);
    var url = Uri.parse(baseURL + 'quotes/closed/' + pvalue);
    print(url);
    http.Response response = await http.get(url, headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer $value'
    });
    print(response.body);
    var getData = json.decode(response.body);
    return getData['data'];
  }

  Future<bool> createQuote(Map<String, String> body, List filePath) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key) ?? 0;
    final pemail = 'email';
    final pvalue = prefs.get(pemail) ?? 0;
    print(value);
    Map<String, String> headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer $value',
      'content-Type': 'multipart/form-data'
    };
    print(body);
    var url = Uri.parse(baseURL + 'create-new-quote-request/' + pvalue);
    for (var i = 0; i < filePath.length; i++) {
      ByteData byteData = await filePath[i].getByteData();
      List<int> imageData = byteData.buffer.asUint8List();
      var request = http.MultipartRequest('POST', url)
        ..fields.addAll(body)
        ..headers.addAll(headers)
        ..files.add(
            await http.MultipartFile.fromPath('n_q_r_files', filePath[i].path));

      var response = await request.send();
      print(response.statusCode);
      if (response.statusCode == 201) {
        return true;
      } else {
        return false;
      }
    }
  }

  _savetoken(token) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = token;
    prefs.setString(key, value);
  }

  _saveemail(String email) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'email';
    final value = email;
    prefs.setString(key, value);
  }

  logout(token) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = token;
    prefs.setString(key, value);
  }
}
