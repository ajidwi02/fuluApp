import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        height: 100,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 239, 243, 245),
            borderRadius: BorderRadius.circular(15)),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const ActionButton(
              icon: Icons.account_balance,
              label: 'Deposit',
            ),
            const ActionButton(
              icon: Icons.swap_horiz,
              label: 'Transfer',
            ),
            const ActionButton(
              icon: Icons.attach_money,
              label: 'WithDraw',
            ),
            const ActionButton(
              icon: Icons.apps_sharp,
              label: 'More',
            ),
          ],
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton.outlined(
          onPressed: () {},
          icon: Icon(icon, color: const Color.fromARGB(255, 16, 80, 90)),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
