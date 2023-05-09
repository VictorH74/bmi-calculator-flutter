import 'package:bmi_calculator/input_page/reusable_container.dart';
import 'package:flutter/material.dart';

class IncrementableInput extends StatefulWidget {
  const IncrementableInput(this.label, this.initialValue,
      {super.key, required this.min, required this.max});

  final String label;
  final int initialValue;
  final int min;
  final int max;

  @override
  State<IncrementableInput> createState() => _IncrementableInput();
}

class _IncrementableInput extends State<IncrementableInput> {
  late int _value;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Expanded(
      child: ReusableContainer(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.label.toUpperCase(),
            style: TextStyle(
                color: theme.colorScheme.onSecondary,
                fontWeight: FontWeight.bold),
          ),
          Text(
            _value.toString(),
            style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  style: getButtonStyles(theme.colorScheme),
                  onPressed: () {
                    if (_value == widget.min) return;
                    setState(() {
                      _value--;
                    });
                  },
                  icon: const Icon(Icons.remove)),
              IconButton(
                  style: getButtonStyles(theme.colorScheme),
                  onPressed: () {
                    if (_value == widget.max) return;
                    setState(() {
                      _value++;
                    });
                  },
                  icon: const Icon(Icons.add)),
            ],
          )
        ],
      )),
    );
  }
}

ButtonStyle getButtonStyles(ColorScheme colors) => IconButton.styleFrom(
      backgroundColor: colors.onSecondary,
    );
