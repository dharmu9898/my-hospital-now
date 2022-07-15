import 'package:flutter/material.dart';
import 'package:my_hospital_now/widgets/close_quote.dart';
import 'package:my_hospital_now/widgets/new_quote.dart';
import 'package:my_hospital_now/widgets/open_quote.dart';

// ignore: must_be_immutable
class CategoryBox extends StatelessWidget {
  CategoryBox({Key key, this.title, this.icon, this.color}) : super(key: key);
  IconData icon;
  Color color;
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 15, left: 10, top: 15),
        padding: EdgeInsets.only(right: 5, left: 5, top: 12, bottom: 12),
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
                  if (title == "Open Quote")
                    {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new OpenQuote(),
                      ))
                    }
                  else if (title == "Close Quote")
                    {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new CloseQuote(),
                      ))
                    }
                  else if (title == "New Quote")
                    {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NewQuote(),
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
