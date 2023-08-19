import 'package:daily_ui_challenge/UI/wallet%20app/util/my_button.dart';
import 'package:daily_ui_challenge/UI/wallet%20app/util/my_card.dart';
import 'package:daily_ui_challenge/UI/wallet%20app/util/my_list.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WalletUi extends StatefulWidget {
  const WalletUi({super.key});

  @override
  State<WalletUi> createState() => _WalletUiState();
}

class _WalletUiState extends State<WalletUi> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      //creating a navigation bar with floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.home_outlined,
          color: Colors.black,
          size: 40,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomAppBar(
        height: 60,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.monetization_on_outlined,
              color: Colors.white,
              size: 35,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.settings,
              color: Colors.white,
              size: 35,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            //Creating the top part of the app
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //addding the text
                  RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: "My",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                          fontSize: 28,
                        )),
                    TextSpan(
                      text: "  ",
                    ),
                    TextSpan(
                        text: "Cards",
                        style: TextStyle(fontSize: 28, color: Colors.black54))
                  ])),

                  // adding the plus button
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.add),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),

            // creating the cards
            SizedBox(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: const [
                  MyCard(
                      balance: 50002.35,
                      currency: '\$',
                      cardType: 'assets/images/american-express.png',
                      cardNumber: 1234,
                      color: Colors.black87,
                      expiryMonth: 8,
                      expiryYear: 23),
                  MyCard(
                      balance: 300.86,
                      currency: '₤',
                      cardType: 'assets/images/visa.png',
                      cardNumber: 5678,
                      color: Color.fromARGB(255, 179, 164, 28),
                      expiryMonth: 8,
                      expiryYear: 23),
                  MyCard(
                      balance: 528.27,
                      currency: '£',
                      cardType: 'assets/images/american-express.png',
                      cardNumber: 4321,
                      color: Color.fromARGB(255, 115, 114, 114),
                      expiryMonth: 8,
                      expiryYear: 23),
                  MyCard(
                      balance: 7500000,
                      currency: '₦',
                      cardType: 'assets/images/mastercard.png',
                      cardNumber: 8765,
                      color: Color.fromARGB(255, 25, 94, 27),
                      expiryMonth: 8,
                      expiryYear: 23),
                ],
              ),
            ),

            const SizedBox(
              height: 12,
            ),

            //creating the card indicator with smooth_page_indicator package
            SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade600),
            ),

            const SizedBox(
              height: 25,
            ),

            // Creating the pay, send and bill button
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // send button
                  MyButton(
                      buttonText: 'Send Money',
                      iconPath: 'assets/images/send-money.png'),

                  // pay button
                  MyButton(
                      buttonText: 'Pay',
                      iconPath: 'assets/images/credit-card.png'),

                  // bills button
                  MyButton(
                      buttonText: 'Bills', iconPath: 'assets/images/bill.png'),
                ],
              ),
            ),

            const SizedBox(
              height: 7,
            ),

            //creating listview
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 220,
                color: Colors.transparent,
                child: Scrollbar(
                  thumbVisibility: true,
                  child: ListView(
                    children: [
                      //Transaction history
                      const MyList(
                        tileColor: Colors.black,
                        leadingImage: 'assets/images/transaction.png',
                        titleText: 'Transactions',
                        titleTextColor: Colors.white,
                        subtitleText: 'Transaction history',
                        subtitleTextColor: Colors.white,
                        trailingIconColor: Colors.white,
                      ),

                      //Statistics
                      const MyList(
                        tileColor: Colors.white,
                        leadingImage: 'assets/images/analysis.png',
                        titleText: 'Statistics',
                        titleTextColor: Colors.black,
                        subtitleText: 'Payment and income',
                        subtitleTextColor: Colors.black,
                        trailingIconColor: Colors.black,
                      ),

                      //Overdraft
                      const MyList(
                        tileColor: Colors.black,
                        leadingImage: 'assets/images/signing.png',
                        titleText: 'Overdraft',
                        titleTextColor: Colors.white,
                        subtitleText: 'Low interest loans',
                        subtitleTextColor: Colors.white,
                        trailingIconColor: Colors.white,
                      ),
                      const MyList(
                        tileColor: Colors.white,
                        leadingImage: 'assets/images/qr-code.png',
                        titleText: 'Scan QR',
                        titleTextColor: Colors.black,
                        subtitleText: 'Make QR payments',
                        subtitleTextColor: Colors.black,
                        trailingIconColor: Colors.black,
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          bottom: 10,
                        ),
                        child: const MyList(
                          tileColor: Colors.black,
                          leadingImage: 'assets/images/accountant.png',
                          titleText: 'Account Officer',
                          titleTextColor: Colors.white,
                          subtitleText: 'Speak to your account officer',
                          subtitleTextColor: Colors.white,
                          trailingIconColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )

            //creating bottom appbar
          ],
        ),
      ),
    );
  }
}
