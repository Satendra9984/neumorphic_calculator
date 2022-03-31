import 'package:calculator_with_local_db/custom_widgets/calculation_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../custom_widgets/button_list.dart';

// this is our main ui page for the input and output of the data
class CalculatorHomePage extends ConsumerWidget {
  const CalculatorHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        // it has a column
        // column have two children

        body: Column(
          children: const [
            // widget for calculating text
            Expanded(
              flex: 4,
              child: CalculationResult(),
            ),
            // other for the keyboard
            Expanded(
              flex: 5,
              child: ButtonList(),
            ),
          ],
        ),
      ),
    );
  }
}
