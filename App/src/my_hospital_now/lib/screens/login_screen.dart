import 'package:flutter/material.dart';
import 'package:my_hospital_now/rounded_button.dart';
import 'package:my_hospital_now/screens/dashboard_screen.dart';
import 'package:my_hospital_now/services/auth_services.dart';
import 'package:my_hospital_now/services/globals.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _email = '';
  String _password = '';
  AuthServices authServices = AuthServices();
  loginPress() async {
    if (_email.isNotEmpty && _password.isNotEmpty) {
      http.Response response = await authServices.login(_email, _password);
      Map responseMap = json.decode(response.body);
      print(response.statusCode);
      if (response.statusCode == 200) {
        final prefs = await SharedPreferences.getInstance();
        final key = 'token';
        final value = prefs.get(key) ?? 0;
        if (value != 0) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => Dashboard(),
              ));
        } else {
          var getData = json.decode(response.body);
          final prefs = await SharedPreferences.getInstance();
          final key = 'token';
          final value = getData["success"]["token"];
          prefs.setString(key, value);
          final pemail = 'email';
          final pvalue = _email;
          prefs.setString(pemail, pvalue);
          if (value != 0) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => Dashboard(),
                ));
          }
        }
      } else {
        errorSnackBar(context, responseMap.values.first);
      }
    } else {
      errorSnackBar(context, 'enter all required fields');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Login',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Enter your email',
              ),
              onChanged: (value) {
                _email = value;
              },
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Enter your password',
              ),
              onChanged: (value) {
                _password = value;
              },
            ),
            const SizedBox(
              height: 30,
            ),
            RoundedButton(
              btnText: 'LOG IN',
              onBtnPressed: () => loginPress(),
            )
          ],
        ),
      ),
    );
  }
}
