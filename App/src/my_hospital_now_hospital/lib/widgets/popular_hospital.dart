import 'package:flutter/material.dart';
import 'avatar_image.dart';

// ignore: must_be_immutable
class PopularHospital extends StatelessWidget {
  PopularHospital({Key key, this.doctor}) : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  var doctor;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 15),
        padding: const EdgeInsets.all(10),
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
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
        child: Row(
          children: [
            AvatarImage(doctor["avatar"]),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctor["name"],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 3,
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            )
          ],
        ));
  }
}
