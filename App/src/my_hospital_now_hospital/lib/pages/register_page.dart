// ignore_for_file: deprecated_member_use

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_hospital_now_hospital/pages/home_page.dart';
import 'package:my_hospital_now_hospital/services/auth_services.dart';
import 'package:my_hospital_now_hospital/services/globals.dart';
import '../rounded_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  List country = List();
  Future<String> fetch_country() async {
    var response = await http.get(Uri.parse(
        'https://www.myhospitalnow.com/quote-management/api/v1/j/get-all-countriess'));
    var resBody = json.decode(response.body);
    setState(() {
      country = resBody;
    });
    return "Success";
  }

  String _email = '';
  String _name = '';
  String _phone = '';
  String _dailcode = '';
  String _countryid = '';
  String _currencycode = '';
  String _countrycode = '';
  String _adminapproved = '1';
  String _currencysymbol = '';
  String _currency = '';
  String _dropdownvalue = 'Select Country of Residence';
  AuthServices authServices = AuthServices();
  registerPress() async {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(_email);
    if (emailValid) {
      http.Response response = await authServices.register(
          _name,
          _email,
          _phone,
          _dailcode,
          _countryid,
          _dropdownvalue,
          _currencycode,
          _countrycode,
          _adminapproved,
          _currencysymbol,
          _currency);
      Map responseMap = json.decode(response.body);
      if (response.statusCode == 200) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => HomePage(),
            ));
      } else {
        errorSnackBar(context, responseMap.values.first[0]);
      }
    } else {
      errorSnackBar(context, 'email not valid');
    }
  }

  @override
  void initState() {
    super.initState();
    this.fetch_country();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Register',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Enter your Name',
              ),
              onChanged: (value) {
                _name = value;
              },
            ),
            const SizedBox(
              height: 30,
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
            DropdownButton(
              isExpanded: true,
              icon: const Icon(Icons.keyboard_arrow_down),
              hint: Text(_dropdownvalue),
              items: country.map((item) {
                return new DropdownMenuItem(
                  child: new Text(item['name']),
                  value: [
                    item['id'].toString(),
                    item['dial_code'].toString(),
                    item['name'],
                    item['country_code'],
                    item['currency_code'],
                    item['currency_symbol'],
                    item['currency']
                  ],
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _countryid = value[0];
                  _dailcode = value[1];
                  _dropdownvalue = value[2];
                  _countrycode = value[3];
                  _currencycode = value[4];
                  _currencysymbol = value[5];
                  _currency = value[6];
                });
              },
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Enter your Phone',
              ),
              onChanged: (value) {
                _phone = value;
              },
            ),
            const SizedBox(
              height: 30,
            ),
            RoundedButton(
              btnText: 'Register',
              onBtnPressed: () => registerPress(),
            )
          ],
        ),
      ),
    );
  }
}
