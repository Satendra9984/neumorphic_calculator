import 'package:calculator_with_local_db/custom_widgets/neo_button.dart';
import 'package:calculator_with_local_db/provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ButtonList extends StatelessWidget {
  const ButtonList({Key? key}) : super(key: key);

  // void onClicked(String buttonText) {
  //   // print('pressing ' + buttonText + '\n');
  //   final calculator;
  //   switch (buttonText) {
  //     case 'AC':
  //       calculator.reset();
  //       break;
  //     case '=':
  //       calculator.equals();
  //       break;
  //     case '<':
  //       calculator.delete();
  //       break;
  //     default:
  //       calculator.append(buttonText);
  //       break;
  //   }
  // }

  // function that builds a row of neon_buttons
  Widget buildButtonRow(
      String first, String second, String third, String fourth) {
    final row = [first, second, third, fourth];

    return Expanded(
      // so that row can fit in the availble horizontal space
      child: Consumer(
        builder: (context, ref, child) {
          final calc = ref.read(calculatorProvider);
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: row
                .map(
                  (element) => NeoButton(
                    buttonText: element,
                    // onClick: calc.onClicked,
                    // onLongTap: (){}
                  ),
                )
                .toList(),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        // color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
          // topRight: Radius.circular(20),
          // topLeft: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          buildButtonRow('AC', '<', '%', '÷'),
          buildButtonRow('1', '2', '3', 'x'),
          buildButtonRow('4', '5', '6', '–'),
          buildButtonRow('7', '8', '9', '+'),
          buildButtonRow('', '0', '.', '='),
        ],
      ),
    );
  }
}
