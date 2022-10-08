import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_cartax_v2/screens/calculator/calculate_button.dart';
import 'package:flutter_cartax_v2/screens/result/result_screen.dart';
import 'package:flutter_cartax_v2/screens/calculator/type.dart';
import 'package:flutter_cartax_v2/screens/calculator/grobgrab.dart';
import 'package:flutter_cartax_v2/screens/calculator/Uberry.dart';
import 'package:flutter_cartax_v2/screens/calculator/calculator.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  int carTax = 0;
  int typeIndex = 1;
  int Km = 0;
  int person = 1;
  int kl = 1;

  void changeTypeIndex(int newTypeIndex) {
    setState(() {
      typeIndex = newTypeIndex;
    });
  }

  void changeKm(double newKm) {
    setState(() {
      Km = newKm.toInt();
    });
  }

  void changePerson(int newPerson) {
    setState(() {
      person = newPerson.toInt();
    });
  }

  void changeKL(double newKL) {
    setState(() {
      kl = newKL.toInt();
    });
  }

  void calculateButtonClick() {
    setState(() {
      if (typeIndex == 1) {
        carTax = Calculator.car(Km: Km, person:person );
      } else if (typeIndex == 2) {
        carTax = Calculator.truck(Km: Km, person: person);
      } else if (typeIndex == 3) {
        carTax = Calculator.van(kl);
      }

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ResultScreen(carTax: carTax)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Type(typeIndex: typeIndex, carTypeChange: changeTypeIndex, //Code,
            ),
            (typeIndex == 1)
        ? Gropgrab(
            Km: Km,
            person: person,
            changeKm: changeKm,
            changePerson: changePerson)
            :Uberry(
            kl: Km, 
            person: person,
            changeKm: changeKm,
            changePerson: changePerson),
        CalculateButton(
          buttonClickedFunction: calculateButtonClick,
        ),
      ],
    );
  }
}
