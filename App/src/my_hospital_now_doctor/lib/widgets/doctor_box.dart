import 'package:flutter/material.dart';

class DoctorBox extends StatelessWidget {
  const DoctorBox(
      {Key? key,
      required this.index,
      required this.doctor,
      required this.onTap})
      : super(key: key);
  final int index;
  // ignore: prefer_typing_uninitialized_variables
  final doctor;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(1, 1), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                    height: index.isEven ? 100 : 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: (doctor["avatar"] == 'default.png')
                              ? NetworkImage(
                                  'https://www.myhospitalnow.com/doctors/storage/images/' +
                                      doctor["avatar"])
                              : NetworkImage(
                                  'https://www.myhospitalnow.com/doctors/storage/users/' +
                                      doctor["avatar"]),
                          fit: BoxFit.cover),
                    )),
              ),
              const SizedBox(height: 10),
              Text(
                doctor["name"],
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 3),
              const SizedBox(height: 3),
            ],
          )),
    );
  }
}
