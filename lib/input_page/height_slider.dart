import 'package:bmi_calculator/input_page/reusable_container.dart';
import 'package:flutter/material.dart';

class HeightSlider extends StatefulWidget {
  const HeightSlider({super.key});

  @override
  State<HeightSlider> createState() => _HeightSliderState();
}

class _HeightSliderState extends State<HeightSlider> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    return Expanded(
      child: ReusableContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("height".toUpperCase(),
                style: TextStyle(
                    color: colors.onSecondary, fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  _currentSliderValue.toInt().toString(),
                  style: const TextStyle(fontSize: 40),
                ),
                const Text("cm"),
              ],
            ),
            Slider(
              value: _currentSliderValue,
              max: 100,
              divisions: 100,
              inactiveColor: colors.onSecondary,
              activeColor: colors.secondary,
              thumbColor: colors.secondary,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
