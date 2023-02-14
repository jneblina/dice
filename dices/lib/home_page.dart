import 'package:flutter/material.dart';

import 'package:dices/dice.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dados"),
        backgroundColor: Colors.indigo,
      ),
      backgroundColor: Colors.blueGrey,
      body: const Dice(),
    );
  }
}
