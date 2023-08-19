import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  final tileColor;
  final String leadingImage;
  final String titleText;
  final String subtitleText;
  final titleTextColor;
  final subtitleTextColor;
  final trailingIconColor;

  const MyList({
    super.key,
    required this.tileColor,
    required this.leadingImage,
    required this.titleText,
    required this.titleTextColor,
    required this.subtitleText,
    required this.subtitleTextColor,
    required this.trailingIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: tileColor,
      ),
      margin: const EdgeInsets.only(
        top: 10,
        left: 7,
        right: 7,
      ),
      child: Center(
        child: ListTile(
          leading: Image.asset(
            leadingImage,
            width: 50,
            height: 45,
          ),
          title: Text(
            titleText,
            style: TextStyle(
              color: titleTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          subtitle: Text(
            subtitleText,
            style: TextStyle(
              color: subtitleTextColor,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: trailingIconColor,
          ),
        ),
      ),
    );
  }
}
