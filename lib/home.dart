import 'package:flutter/material.dart';
import 'package:teste/check_box_option.dart';

import 'check_box_custom.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //bool cbIsSelected_1 = false;

  _HomeState();

  final List<CheckBoxOption> months = [
    CheckBoxOption(title: 'Janeiro'),
    CheckBoxOption(title: 'Fevereiro'),
    CheckBoxOption(title: 'Março'),
    CheckBoxOption(title: 'Abril'),
    CheckBoxOption(title: 'Maio'),
    CheckBoxOption(title: 'Junho'),
    CheckBoxOption(title: 'Julho'),
    CheckBoxOption(title: 'Agosto'),
    CheckBoxOption(title: 'Setembro'),
    CheckBoxOption(title: 'Outubro'),
    CheckBoxOption(title: 'Novembro'),
    CheckBoxOption(title: 'Dezembro')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Aula 30/07/2024'),
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: months.length,
              itemBuilder: (_, index) {
                return CheckboxCustomWidget(item: months[index]);
              })),
      floatingActionButton: FloatingActionButton(
        onPressed: printSelectedMounths,
        child: const Icon(Icons.add),
      ),
    );
  }

  void printSelectedMounths() {
    List<CheckBoxOption> selectedMonths =
        List.from(months.where((item) => item.checked));

    selectedMonths.forEach((item) {
      print(item.title);
    });
  }
}
