import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final currency;
  final String cardType;
  final color;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;

  const MyCard(
      {super.key,
      required this.balance,
      required this.currency,
      required this.cardType,
      required this.cardNumber,
      required this.color,
      required this.expiryMonth,
      required this.expiryYear});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Balance",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '$currency $balance',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 26,
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    margin: const EdgeInsets.only(
                      right: 20,
                      bottom: 5,
                    ),
                    child: Image.asset(
                      cardType,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 70,
                bottom: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '**** **** **** $cardNumber',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    '$expiryMonth/$expiryYear',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
