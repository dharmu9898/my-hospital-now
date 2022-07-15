import 'package:flutter/material.dart';
import 'package:my_hospital_now_hospital/pages/login_page.dart';
import 'package:my_hospital_now_hospital/services/auth_services.dart';

class OtherBids extends StatefulWidget {
  const OtherBids({Key key}) : super(key: key);

  @override
  State<OtherBids> createState() => _OtherBidsState();
}

class _OtherBidsState extends State<OtherBids> {
  AuthServices authServices = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Other Bids'),
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
        body: new FutureBuilder<List>(
          future: authServices.otherBids(),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);
            return snapshot.hasData
                ? new ItemList(list: snapshot.data)
                : new Center(
                    child: new CircularProgressIndicator(),
                  );
          },
        ));
  }
}

// ignore: must_be_immutable
class ItemList extends StatelessWidget {
  List list;
  ItemList({this.list});
  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return new ListView.builder(
        itemCount: list == null ? 0 : list.length,
        itemBuilder: (context, i) {
          return new Container(
            padding: const EdgeInsets.all(10.0),
            child: new Card(
                child: new ListTile(
              title: new Text(list[i]['name']),
              leading: new Icon(Icons.apps),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                textDirection: TextDirection.ltr,
                children: <Widget>[
                  new Text('Quote Number : ${list[i]['quote_no']}'),
                  new Text('No of Bids : ${list[i]['no_of_bids']}'),
                  new Text('DOS : ${list[i]['d_o_s']}'),
                ],
              ),
            )),
          );
        });
  }
}
