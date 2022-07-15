import 'package:flutter/material.dart';
import 'package:my_hospital_now/screens/login_screen.dart';
import 'package:my_hospital_now/services/auth_services.dart';
import 'package:my_hospital_now/widgets/category_box.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
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
                    builder: (BuildContext context) => new LoginScreen(),
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
        title: "Open Quote",
        icon: Icons.request_quote_outlined,
        color: Colors.red,
      ),
      CategoryBox(
        title: "Close Quote",
        icon: Icons.request_quote_sharp,
        color: Colors.blue,
      ),
      CategoryBox(
        title: "New Quote",
        icon: Icons.add_box_outlined,
        color: Colors.purple,
      ),
      CategoryBox(
        title: "Profile",
        icon: Icons.person,
        color: Colors.greenAccent,
      ),
    ],
  );
}
