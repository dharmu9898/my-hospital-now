import 'package:flutter/material.dart';
import 'package:my_hospital_now/screens/register_screen.dart';

class GetStartedScreen extends StatefulWidget {
  GetStartedScreen({Key key}) : super(key: key);

  @override
  _GetStartedScreenState createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => RegisterScreen(),
              ));
        },
        child: Text('Get Started'),
      ),
    );
  }
}
