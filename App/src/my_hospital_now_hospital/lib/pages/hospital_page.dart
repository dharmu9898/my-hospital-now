// ignore_for_file: unnecessary_new
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:http/http.dart' as http;
import 'package:my_hospital_now_hospital/pages/login_page.dart';
import 'package:my_hospital_now_hospital/pages/register_page.dart';
import 'package:my_hospital_now_hospital/services/globals.dart';
import 'package:my_hospital_now_hospital/theme/colors.dart';
import 'package:my_hospital_now_hospital/widgets/avatar_image.dart';
import 'package:my_hospital_now_hospital/widgets/hospital_box.dart';
import 'package:my_hospital_now_hospital/widgets/textbox.dart';
import 'package:my_hospital_now_hospital/pages/hospital_profile_page.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HospitalPage extends StatefulWidget {
  const HospitalPage({Key key}) : super(key: key);

  @override
  _HospitalPageState createState() => _HospitalPageState();
}

class _HospitalPageState extends State<HospitalPage> {
  List doctors = [];
  Future<String> getDoctors() async {
    var url = Uri.parse(baseURL + 'get-all-profile');

    var response = await http.get(url);
    var resBody = json.decode(response.body);
    setState(() {
      doctors = resBody['data'];
    });

    return 'success';
  }

  @override
  void initState() {
    super.initState();
    getDoctors();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'My Hospital Now Hospital',
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.login_outlined),
              title: Text(
                'Login',
                style: TextStyle(
                  color: (Colors.blue),
                  fontSize: (18),
                ),
              ),
              onTap: () {
                setState(() {
                  print('click to home');
                });
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => Loginpage(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(Icons.app_registration_outlined),
              title: Text(
                'Register',
                style: TextStyle(
                  color: (Colors.blue),
                  fontSize: (18),
                ),
              ),
              onTap: () {
                setState(() {
                  print('click to home');
                });
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => RegisterPage(),
                    ));
              },
            )
          ],
        ),
      ),
      backgroundColor: appBgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.blueAccent),
        elevation: 0,
        title: const Text(
          "Hospitals",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.info,
              color: Colors.grey,
            ),
          )
        ],
      ),
      body: (doctors.isNotEmpty)
          ? getBody()
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  getBody() {
    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Expanded(child: CustomTextBox()),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.filter_list_rounded,
                    color: primary,
                    size: 35,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                        doctors.length,
                        (index) => Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, bottom: 10),
                              child: Badge(
                                  badgeColor: Colors.green,
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  position: BadgePosition.bottomEnd(
                                      bottom: -12, end: 21),
                                  badgeContent: const Text(''),
                                  child: AvatarImage(
                                      doctors[index]["avatar"].toString())),
                            ))),
              ),
              const SizedBox(
                height: 20,
              ),
              getDoctorList()
            ])));
  }

  getDoctorList() {
    return new StaggeredGridView.countBuilder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 4,
      itemCount: doctors.length,
      itemBuilder: (BuildContext context, int index) => HospitalBox(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const HospitalProfilePage()));
          },
          index: index,
          doctor: doctors[index]),
      staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(2, index.isEven ? 2 : 3),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
    );
  }
}
