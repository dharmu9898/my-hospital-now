import 'package:flutter/material.dart';
import 'package:my_hospital_now_hospital/pages/login_page.dart';
import 'package:my_hospital_now_hospital/widgets/menu_box.dart';
import 'package:my_hospital_now_hospital/services/auth_services.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  AuthServices authServices = AuthServices();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Dashboard'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.exit_to_app),
                onPressed: () {
                  authServices.logout('0');
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Loginpage(),
                  ));
                },
              )
            ],
          ),
          body: getBody()),
    );
  }
}

getBody() {
  return GridView.count(
    crossAxisCount: 3,
    crossAxisSpacing: 4.0,
    mainAxisSpacing: 8.0,
    children: [
      CategoryBox(
        title: "Quote Requests",
        icon: Icons.request_quote_outlined,
        color: Colors.red,
      ),
      CategoryBox(
        title: "My Bids",
        icon: Icons.request_quote_sharp,
        color: Colors.blue,
      ),
      CategoryBox(
        title: "Other Bids",
        icon: Icons.add_box_outlined,
        color: Colors.purple,
      ),
      CategoryBox(
        title: "Profile",
        icon: Icons.person,
        color: Colors.greenAccent,
      ),
      CategoryBox(
        title: "Photo Gallery",
        icon: Icons.image,
        color: Colors.blueGrey,
      ),
      CategoryBox(
        title: "Video Gallery",
        icon: Icons.video_camera_back,
        color: Colors.redAccent,
      ),
    ],
  );
}
