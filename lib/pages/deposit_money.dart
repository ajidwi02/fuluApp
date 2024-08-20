import 'package:flutter/material.dart';

class DepositMoney extends StatelessWidget {
  const DepositMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton.outlined(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text("Deposit"),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Choose account to deposit",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            // Add your content here, such as account selection, input fields, etc.
            Placeholder(
              fallbackHeight: 200,
            )
          ],
        ),
      ),
    );
  }
}
