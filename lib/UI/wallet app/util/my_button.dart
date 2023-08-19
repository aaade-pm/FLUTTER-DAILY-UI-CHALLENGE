import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final String iconPath;
  const MyButton({
    super.key,
    required this.buttonText,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 10,
                    // spreadRadius: 10,
                    offset: const Offset(5, 5)),
                const BoxShadow(
                    color: Colors.white, blurRadius: 15, offset: Offset(-5, -5))
              ]),
          child: Center(child: Image.asset(iconPath)),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          buttonText,
          style: const TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        )
      ],
    );
  }
}
