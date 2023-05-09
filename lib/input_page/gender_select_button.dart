import 'package:bmi_calculator/input_page/reusable_container.dart';
import 'package:flutter/material.dart';

class GenderSelectButton extends StatelessWidget {
  const GenderSelectButton(this.icon, this.label, {super.key});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    return Expanded(
      child: ReusableContainer(
        child: TextButton(
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 65,
                ),
                Text(
                  label.toUpperCase(),
                  style: TextStyle(color: colors.onSecondary),
                )
              ],
            )),
      ),
    );
  }
}
