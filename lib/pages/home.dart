import 'package:fintech_app/widget/action_button.dart';
import 'package:fintech_app/widget/credit_card.dart';
import 'package:fintech_app/widget/transaction_list.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 80, 90),
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Back",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Aji Dwi Prakoso",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const Spacer(),
                  IconButton.outlined(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 167),
                    color: Colors.white,
                    child: const Column(
                      children: [
                        SizedBox(
                          height: 110,
                        ),
                        ActionButtons(),
                        SizedBox(height: 30),
                        TransactionList()
                      ],
                    ),
                  ),
                  const Positioned(
                    top: 20,
                    left: 25,
                    right: 25,
                    child: CreditCard(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
