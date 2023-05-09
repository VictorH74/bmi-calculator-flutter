import 'package:flutter/cupertino.dart';

class ReusableContainer extends StatelessWidget {
  const ReusableContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: const Color(0xff1d1e33),
          borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }
}
