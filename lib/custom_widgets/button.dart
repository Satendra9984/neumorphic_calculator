// import 'package:flutter/material.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class TestNeonButton extends StatefulWidget {
  const TestNeonButton({Key? key}) : super(key: key);

  @override
  State<TestNeonButton> createState() => _TestNeonButtonState();
}

class _TestNeonButtonState extends State<TestNeonButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = const Color(0xFFE7ECEF);
    Offset distance = isPressed ? Offset(10, 10) : Offset(25, 25);
    double blur = isPressed ? 5.0 : 30.0;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 200,
          width: 200,
          child: GestureDetector(
            onTap: () {
              setState(() {
                isPressed = !isPressed;
                // Duration(milliseconds: 100);
              });
            },
            child: Container(
              height: double.infinity,
              // color: backgroundColor,
              margin: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  style: BorderStyle.none,
                  // color: backgroundColor,
                ),
                color: backgroundColor,
                // shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: blur,
                    offset: -distance,
                    // color: const Color(0xFFA7A9AF),
                    color: Colors.white70,
                    // spreadRadius: 1.0,
                    inset: isPressed,
                  ),
                  BoxShadow(
                    blurRadius: blur,
                    offset: distance,
                    color: const Color(0xFFA7A9AF),
                    // color: Colors.white,
                    // spreadRadius: 1.0,
                    inset: isPressed,
                  ),
                ],
              ),
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Neon',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              alignment: Alignment.center,
            ),
          ),
        ),
      ),
    );
  }
}
