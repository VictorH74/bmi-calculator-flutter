import 'package:bmi_calculator/input_page/gender_select_button.dart';
import 'package:bmi_calculator/input_page/height_slider.dart';
import 'package:bmi_calculator/input_page/incrementable_input.dart';
import 'package:bmi_calculator/result_page/view.dart';
import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  const InputPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Center(child: Text(title.toUpperCase()))),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                GenderSelectButton(Icons.male, "male"),
                GenderSelectButton(Icons.female, "female"),
              ],
            ),
          ),
          const HeightSlider(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                IncrementableInput(
                  "Weight",
                  80,
                  min: 80,
                  max: 300,
                ),
                IncrementableInput(
                  "age",
                  20,
                  min: 5,
                  max: 100,
                ),
              ],
            ),
          ),
          Container(
            color: const Color(0xffeb1555),
            margin: const EdgeInsets.only(top: 15),
            height: 70,
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ResultPage()));
                    // PageRouteBuilder(
                    //     opaque: false,
                    //     pageBuilder: (BuildContext context, _, __) =>
                    //     const ResultPage(),
                    //     transitionsBuilder: (___, Animation<double> animation,
                    //         ____, Widget child) =>
                    //         FadeTransition(
                    //           opacity: animation,
                    //           child: RotationTransition(
                    //             turns: Tween<double>(begin: 0.5, end: 1.0)
                    //                 .animate(animation),
                    //             child: child,
                    //           ),
                    //         )));
              },
              child: Text(
                "calculate".toUpperCase(),
                style: const TextStyle(fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
