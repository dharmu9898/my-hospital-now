import 'package:flutter/material.dart';
import 'package:my_hospital_now_hospital/widgets/my_bids.dart';
import 'package:my_hospital_now_hospital/widgets/other_bids.dart';
import 'package:my_hospital_now_hospital/widgets/quote_requests.dart';

// ignore: must_be_immutable
class CategoryBox extends StatelessWidget {
  CategoryBox({Key key, this.title, this.icon, this.color}) : super(key: key);
  IconData icon;
  Color color;
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 15),
        padding: const EdgeInsets.only(top: 20, bottom: 20, left: 5, right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(1, 1), // changes position of shadow
            ),
          ],
        ),
        child: GestureDetector(
            onTap: () => {
                  if (title == "Quote Requests")
                    {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new QuoteRequest(),
                      ))
                    }
                  else if (title == "My Bids")
                    {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new MyBids(),
                      ))
                    }
                  else if (title == "Other Bids")
                    {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new OtherBids(),
                      ))
                    }
                },
            child: Column(
              children: [
                Icon(
                  icon,
                  size: 40,
                  color: color,
                ),
                const SizedBox(height: 10),
                Text(
                  title,
                  style: TextStyle(color: color),
                )
              ],
            )));
  }
}
