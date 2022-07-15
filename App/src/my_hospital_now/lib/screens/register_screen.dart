import 'package:flutter/material.dart';
import 'package:my_hospital_now/screens/home_screen.dart';
import 'package:http/http.dart' as http;
import 'package:my_hospital_now/screens/login_screen.dart';
import 'package:my_hospital_now/services/auth_services.dart';
import 'package:my_hospital_now/services/globals.dart';
import 'dart:convert';
import '../rounded_button.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // ignore: deprecated_member_use
  List country = List();
  // ignore: deprecated_member_use
  List category = List();
  // ignore: non_constant_identifier_names
  Future<String> fetch_country() async {
    var response = await http.get(Uri.parse(
        'https://www.myhospitalnow.com/quote-management/api/v1/j/get-all-countriess'));
    var resBody = json.decode(response.body);
    setState(() {
      country = resBody;
    });
    return "Success";
  }

  // ignore: non_constant_identifier_names
  Future<String> fetch_category() async {
    var response = await http.get(Uri.parse(
        'https://www.myhospitalnow.com/quote-management/api/v1/j/get-all-categoriess'));
    var resBody = json.decode(response.body);
    setState(() {
      category = resBody;
    });
    return "Success";
  }

  String _case = 'first-quote';
  String _email = '';
  String _name = '';
  String _phone = '';
  String _dailcode = '';
  String _countryid = '';
  String _categoryid = '';
  String dropdownvalue = 'Select Country of Residence';
  String dropdownvalue1 = 'Select Your Treatment Category';
  AuthServices authServices = AuthServices();
  registerPress() async {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(_email);
    if (emailValid) {
      http.Response response = await authServices.register(
          _name, _email, _phone, _dailcode, _countryid, _categoryid, _case);
      Map responseMap = json.decode(response.body);
      if (response.statusCode == 200) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => HomeScreen(),
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
    this.fetch_category();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Request for a Quote',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Name',
              ),
              onChanged: (value) {
                _name = value;
              },
            ),
            const SizedBox(
              height: 30,
            ),
            DropdownButton(
              isExpanded: true,
              icon: const Icon(Icons.keyboard_arrow_down),
              hint: Text(dropdownvalue),
              items: country.map((item) {
                return new DropdownMenuItem(
                  child: new Text(item['name']),
                  value: [
                    item['id'].toString(),
                    item['dial_code'].toString(),
                    item['name']
                  ],
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _countryid = value[0];
                  _dailcode = value[1];
                  dropdownvalue = value[2];
                });
              },
            ),
            const SizedBox(
              height: 30,
            ),
            DropdownButton(
              isExpanded: true,
              hint: Text(dropdownvalue1),
              icon: const Icon(Icons.keyboard_arrow_down),
              items: category.map((item) {
                return new DropdownMenuItem(
                  child: new Text(item['name']),
                  value: [item['id'].toString(), item['name']],
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _categoryid = value[0];
                  dropdownvalue1 = value[1];
                });
              },
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Enter Email',
              ),
              onChanged: (value) {
                _email = value;
              },
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Phone',
              ),
              onChanged: (value) {
                _phone = value;
              },
            ),
            const SizedBox(
              height: 40,
            ),
            RoundedButton(
              btnText: 'Submit',
              onBtnPressed: () => registerPress(),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => LoginScreen(),
                    ));
              },
              child: const Text(
                'already have an account',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
