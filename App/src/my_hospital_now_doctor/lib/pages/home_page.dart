import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_hospital_now_doctor/services/globals.dart';
import 'package:http/http.dart' as http;
import 'package:my_hospital_now_doctor/theme/colors.dart';
import 'package:my_hospital_now_doctor/widgets/category_box.dart';
import 'package:my_hospital_now_doctor/widgets/popular_doctor.dart';
import 'package:my_hospital_now_doctor/widgets/textbox.dart';
import 'package:badges/badges.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List doctors = [];
  Future<String> getDoctors() async {
    var url = Uri.parse(baseURL + 'get-all-doctors');

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
      backgroundColor: appBgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 10),
            child: Badge(
              position: BadgePosition.topEnd(top: 7, end: -4),
              badgeContent: const Text(
                '1',
                style: TextStyle(color: Colors.white),
              ),
              child: const Icon(
                Icons.notifications_sharp,
                color: primary,
              ),
            ),
          )
        ],
      ),
      // ignore: unnecessary_null_comparison
      body: (doctors != null && doctors.isNotEmpty)
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "Hi,",
            style: TextStyle(
                fontSize: 23, color: primary, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Let's Find Your Doctor",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 15,
          ),
          const CustomTextBox(),
          const SizedBox(
            height: 25,
          ),
          const Text(
            "Categories",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 5),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryBox(
                  title: "Heart",
                  icon: Icons.favorite,
                  color: Colors.red,
                ),
                CategoryBox(
                  title: "Medical",
                  icon: Icons.local_hospital,
                  color: Colors.blue,
                ),
                CategoryBox(
                  title: "Dental",
                  icon: Icons.details_rounded,
                  color: Colors.purple,
                ),
                CategoryBox(
                  title: "Healing",
                  icon: Icons.healing_outlined,
                  color: Colors.green,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            height: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://media.istockphoto.com/vectors/electronic-health-record-concept-vector-id1299616187?k=20&m=1299616187&s=612x612&w=0&h=gmUf6TXc8w6NynKB_4p2TzL5PVIztg9UK6TOoY5ckMM="),
                  fit: BoxFit.cover,
                )),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            "Popular Doctors",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 5),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                PopularDoctor(
                  doctor: doctors[0],
                ),
                PopularDoctor(
                  doctor: doctors[1],
                ),
                PopularDoctor(
                  doctor: doctors[2],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
