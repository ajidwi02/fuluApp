import 'package:flutter/material.dart';

class TopUpPage extends StatefulWidget {
  const TopUpPage({super.key});

  @override
  State<TopUpPage> createState() => _TopUpPageState();
}

class _TopUpPageState extends State<TopUpPage> {
  String selectedProvider = 'Bank Rakyat Indonesia';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton.outlined(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text("Top Up"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Bank Transfer",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              PaymentProvider(
                image: 'assets/bri.jpg',
                name: "Bank Rakyat Indonesia",
                account: "**** **** **** 1990",
                isSelected: selectedProvider == 'Bank Rakyat Indonesia',
                onChanged: (value) {
                  if (value == true) {
                    setState(() {
                      selectedProvider = 'Bank Rakyat Indonesia';
                    });
                  }
                },
              ),
              PaymentProvider(
                image: 'assets/bni.png',
                name: "BNI 46",
                account: "**** **** **** 1990",
                isSelected: selectedProvider == 'BNI 46',
                onChanged: (value) {
                  if (value == true) {
                    setState(() {
                      selectedProvider = 'BNI 46';
                    });
                  }
                },
              ),
              const SizedBox(height: 20),
              const Text(
                "Other",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              PaymentProvider(
                image: 'assets/paypal.png',
                name: "PayPal",
                account: "Easy Payment",
                isSelected: selectedProvider == 'PayPal',
                onChanged: (value) {
                  if (value == true) {
                    setState(() {
                      selectedProvider = 'PayPal';
                    });
                  }
                },
              ),
              PaymentProvider(
                image: 'assets/doku.png',
                name: "Doku",
                account: "Easy Payment",
                isSelected: selectedProvider == 'Doku',
                onChanged: (value) {
                  if (value == true) {
                    setState(() {
                      selectedProvider = 'Doku';
                    });
                  }
                },
              ),
              PaymentProvider(
                image: 'assets/faspay.jpg',
                name: "FasPay",
                account: "Easy Payment",
                isSelected: selectedProvider == 'FasPay',
                onChanged: (value) {
                  if (value == true) {
                    setState(() {
                      selectedProvider = 'FasPay';
                    });
                  }
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TopUpPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  fixedSize: const Size(double.maxFinite, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                child: const Text(
                  "Top Up",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentProvider extends StatelessWidget {
  const PaymentProvider({
    super.key,
    required this.image,
    required this.name,
    required this.account,
    required this.isSelected,
    required this.onChanged,
  });

  final String image;
  final String name;
  final String account;
  final bool isSelected;
  final ValueChanged<bool?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage(image),
            backgroundColor: Colors.white,
          ),
          title: Text(name),
          subtitle: Text(account),
          trailing: Transform.scale(
            scale: 1.5,
            child: Radio.adaptive(
              value: true,
              groupValue: isSelected,
              onChanged: onChanged,
              activeColor: const Color.fromARGB(255, 16, 80, 90),
            ),
          ),
          contentPadding: const EdgeInsets.all(12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: isSelected
                  ? Colors.black
                  : Colors.black12, // Black border when selected
              width: isSelected ? 2.0 : 1.0,
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
