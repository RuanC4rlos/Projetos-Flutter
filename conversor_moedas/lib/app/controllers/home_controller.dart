import 'package:conversor_moedas/app/models/moeda_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  late List<MoedaModel> currencies;

  final TextEditingController toText;
  final TextEditingController fromText;

  late MoedaModel toMoeda;
  late MoedaModel fromMoeda;

  HomeController({required this.toText, required this.fromText}) {
    currencies = MoedaModel.getCurrencies();
    toMoeda = currencies[0];
    fromMoeda = currencies[1];
  }

  void convert() {
    String text = toText.text;
    double value = double.tryParse(text) ?? 1.0;
    double returValue = 0;

    if (fromMoeda.name == 'Real') {
      returValue = value * toMoeda.real;
    } else if (fromMoeda.name == 'Dolar') {
      returValue = value * toMoeda.dolar;
    } else if (fromMoeda.name == 'Euro') {
      returValue = value * toMoeda.euro;
    } else if (fromMoeda.name == 'Bitcoin') {
      returValue = value * toMoeda.bitcoin;
    }
    fromText.text = returValue.toStringAsFixed(2);
  }
}
