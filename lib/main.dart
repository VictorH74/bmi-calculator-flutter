import 'package:bmi_calculator/input_page/view.dart';
import 'package:bmi_calculator/result_page/view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const Color mainColor = Color(0xff0A0E21);

const ColorScheme colorSchemeData = ColorScheme(
    brightness: Brightness.dark,
    primary: Colors.white,
    onPrimary: Colors.white,
    secondary: Color(0xffeb1555),
    onSecondary: Color(0xff575D70),
    background: Colors.blue,
    onBackground: Colors.purple,
    surface: mainColor,
    onSurface: Colors.white,
    error: Colors.red,
    onError: Colors.white);

class SlideRoute extends PageRouteBuilder {
  final Widget page;
  @override
  final RouteSettings settings;

  SlideRoute({required this.page, required this.settings})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          settings: settings,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1, 0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(color: mainColor),
        scaffoldBackgroundColor: mainColor,
        colorScheme: colorSchemeData,
      ),
      home: const InputPage(title: "bmi calculator"),
    );
  }
}
