import 'package:calculator_with_local_db/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
// import 'package:calculator_with_local_db/provider/provider.dart';

import '../provider/provider.dart';

final firstStringProvider = Provider((ref) => 'First');

class CalculationResult extends StatelessWidget {
  const CalculationResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(right: 20, left: 20, bottom: 5),
      decoration: const BoxDecoration(
        // color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Consumer(
        builder: (context, ref, child) {
          // final stat = ref.watch(calculatorProvider);
          // final read = ref.read(calculatorProvider);
          // final read = ref.listen(provider, (previous, next) { });
          return Column(
            verticalDirection: VerticalDirection.down,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            textDirection: TextDirection.ltr,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                ref.watch(calculatorProvider).equation.toString(),
                // context.watch<CalculatorNotifier>.
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 48,
                  color: Colors.grey.shade900,
                  // fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
              Text(
                ref.watch(calculatorProvider).result.toString(),
                style: TextStyle(
                  fontSize: 48,
                  color: Colors.grey.shade900,
                  height: 1,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
