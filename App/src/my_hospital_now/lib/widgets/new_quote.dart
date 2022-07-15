// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:my_hospital_now/screens/home_screen.dart';
import 'package:http/http.dart' as http;
import 'package:my_hospital_now/screens/login_screen.dart';
import 'package:my_hospital_now/services/auth_services.dart';
import 'package:my_hospital_now/services/globals.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';
import 'dart:convert';
import '../rounded_button.dart';

class NewQuote extends StatefulWidget {
  NewQuote({Key key}) : super(key: key);

  @override
  _NewQuoteState createState() => _NewQuoteState();
}

class _NewQuoteState extends State<NewQuote> {
  // ignore: deprecated_member_use
  List country = List();
  // ignore: deprecated_member_use
  List category = List();
  String pvalue;
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

  getEmail() async {
    final prefs = await SharedPreferences.getInstance();
    final pemail = 'email';
    setState(() {
      pvalue = prefs.get(pemail) ?? 0;
    });
    print(pvalue);
    return "success";
  }

  List<Asset> images = <Asset>[];
  Widget buildGridView() {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 5,
      children: List.generate(images.length, (index) {
        Asset asset = images[index];
        return AssetThumb(
          asset: asset,
          width: 300,
          height: 300,
        );
      }),
    );
  }

  Future<void> loadAssets() async {
    List<Asset> resultList = <Asset>[];

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 300,
        enableCamera: true,
        selectedAssets: images,
        cupertinoOptions: const CupertinoOptions(
          takePhotoIcon: "chat",
          doneButtonTitle: "Fatto",
        ),
        materialOptions: const MaterialOptions(
          actionBarColor: "#abcdef",
          actionBarTitle: "Example App",
          allViewTitle: "All Photos",
          useDetailsView: false,
          selectCircleStrokeColor: "#000000",
        ),
      );
    } on Exception catch (e) {
      print(e.toString());
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      images = resultList;
    });
  }

  TextEditingController _controllerEmail = TextEditingController();
  String _case = 'first-quote';
  String _email = '';
  String _name = '';
  String _phone = '';
  String _dailcode = '';
  String _countryid = '';
  String _categoryid = '';
  String _desc = '';
  String dropdownvalue = 'Select Country of Residence';
  String dropdownvalue1 = 'Select Your Treatment Category';
  File _image;
  final picker = ImagePicker();
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        _image = 'No image selected.' as File;
      }
    });
  }

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
    this.getEmail();
    this.pvalue;
    _controllerEmail.text = this.pvalue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Request for a New Quote',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              authServices.logout('0');
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new LoginScreen(),
              ));
            },
          )
        ],
      ),
      body: (pvalue != null && pvalue.isNotEmpty)
          ? getBody()
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  getBody() {
    return Padding(
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
          TextFormField(
            initialValue: pvalue,
            keyboardType: TextInputType.text,
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
            height: 30,
          ),
          TextField(
            keyboardType: TextInputType.multiline,
            maxLines: 2,
            decoration: const InputDecoration(hintText: 'Description'),
            onChanged: (value) {
              _desc = value;
            },
          ),
          const SizedBox(
            height: 40,
          ),
          // OutlineButton(onPressed: loadAssets, child: _buildImage()),
          // const SizedBox(
          //   height: 40,
          // ),
          RoundedButton(
            btnText: 'Submit',
            onBtnPressed: () {
              Map<String, String> body = {
                'name': _name,
                'country_id': _countryid,
                'category_id': _categoryid,
                'email': pvalue,
                'country_code': _dailcode,
                'phone': _phone,
                'desc': _desc,
              };
              authServices.createQuote(body, images);
            },
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }

  Widget _buildImage() {
    // ignore: unnecessary_null_comparison
    if (_image == null) {
      // ignore: prefer_const_constructors
      return Padding(
        padding: const EdgeInsets.all(5),
        child: const Text('Upload File'),
      );
    } else {
      return Text(_image.path);
    }
  }
}
