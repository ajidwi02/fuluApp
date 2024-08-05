import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Today, Aug 2"),
                Row(
                  children: [Text("Transactions")],
                ),
              ],
            ),
          ),
          Divider(color: Colors.grey[200]),
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 239, 243, 245),
              child: Icon(
                Icons.fitness_center,
                color: Colors.purpleAccent,
              ),
            ),
            title: Text("Gym"),
            subtitle: Text("Payment"),
            trailing: Text(
              "-\Rp 150.00",
              // style: TextStyle(color: Colors.red),
            ),
          ),
          Divider(color: Colors.grey[200]),
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 239, 243, 245),
              child: Icon(
                Icons.account_balance,
                color: Colors.teal,
              ),
            ),
            title: Text("Bank BNI 46"),
            subtitle: Text("Deposit"),
            trailing: Text(
              "+\Rp 15.000.000",
              style: TextStyle(color: Colors.teal),
            ),
          ),
          Divider(color: Colors.grey[200]),
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 239, 243, 245),
              child: Icon(
                Icons.send,
                color: Colors.orangeAccent,
              ),
            ),
            title: Text("BKK Polines"),
            subtitle: Text("Send"),
            trailing: Text(
              "-\Rp 4.500.000",
              // style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
