import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _EleccionDado createState() => _EleccionDado();
}

class _EleccionDado extends State<Dice> {
  int dadoIzquierdo = Random().nextInt(6) + 1;
  int dadoDerecho = Random().nextInt(6) + 1;

  void dadosRandom() {
    setState(() {
      dadoIzquierdo = Random().nextInt(6) + 1;
      dadoDerecho = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        dadosRandom();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              dado(Random().nextInt(6) + 1),
              dado(Random().nextInt(6) + 1),
            ],
          ),
        ],
      ),
    );
  }

  Expanded dado(valorDado) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextButton(
          onPressed: () {
            setState(() {});
          },
          child: Image.asset('assets/images/dice$valorDado.png')),
    ));
  }
}
