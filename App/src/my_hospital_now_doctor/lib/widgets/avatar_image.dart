import 'package:flutter/material.dart';

class AvatarImage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const AvatarImage(this.url,
      {this.width = 60,
      this.height = 60,
      this.bgColor,
      this.borderWidth = 0,
      this.radius = 50,
      this.borderColor});
  final String url;
  final double width;
  final double height;
  final double borderWidth;
  final Color? borderColor;
  final Color? bgColor;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
            color: borderColor ?? Theme.of(context).cardColor,
            width: borderWidth),
        color: bgColor,
        // shape: BoxShape.circle,
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(1, 1), // changes position of shadow
          ),
        ],
        image: DecorationImage(
            image: (url == 'default.png')
                ? NetworkImage(
                    'https://www.myhospitalnow.com/doctors/storage/images/' +
                        url)
                : NetworkImage(
                    'https://www.myhospitalnow.com/doctors/storage/users/' +
                        url),
            fit: BoxFit.cover),
      ),
    );
  }
}
