import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_hospital_now_hospital/services/globals.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthServices {
  var token;
  Future<http.Response> register(
      String name,
      String email,
      String phone,
      String dailcode,
      String countryid,
      String countryname,
      String currencycode,
      String countrycode,
      String adminapproved,
      String currencysymbol,
      String currency) async {
    Map data = {
      "name": name,
      "email": email,
      "phone": phone,
      "countryCode": countrycode,
      "countryId": countryid,
      "countryName": countryname,
      "dialCode": dailcode,
      "currencyCode": currencycode,
      "currencySymbol": currencysymbol,
      "currency": currency,
      "admin_approved": adminapproved
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + 'register-hospital-user');
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

  Future<List> getAllQuote() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key) ?? 0;
    final pemail = 'email';
    final pvalue = prefs.get(pemail) ?? 0;
    print(value);
    var url = Uri.parse(baseURL + 'get-hospital-user');
    print(url);
    http.Response response = await http.get(url, headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer $value'
    });
    print(response.body);
    var getData = json.decode(response.body);
    return getData['data'];
  }

  Future<List> myBids() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key) ?? 0;
    final pemail = 'email';
    final pvalue = prefs.get(pemail) ?? 0;
    print(value);
    var url = Uri.parse(baseURL + 'bids-by-quoteid');
    print(url);
    http.Response response = await http.get(url, headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer $value'
    });
    print(response.body);
    var getData = json.decode(response.body);
    return getData['data']['data'];
  }

  Future<List> otherBids() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key) ?? 0;
    final pemail = 'email';
    final pvalue = prefs.get(pemail) ?? 0;
    print(value);
    var url = Uri.parse(baseURL + 'get-all-bids');
    print(url);
    http.Response response = await http.get(url, headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer $value'
    });
    print(response.body);
    var getData = json.decode(response.body);
    return getData['data'];
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
