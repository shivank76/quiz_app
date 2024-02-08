import 'package:flutter/material.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String activeScreen = 'start_screen';
  // Widget? activeScreen;
  // //init runs after the object is created not during object creation
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const QuestionsScreen();
  //   });
  // }
  void switchScreen() {
    setState(() {
      activeScreen = 'questions_screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions_screen') {
      screenWidget = const QuestionsScreen();
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 98, 186, 253),
                Color.fromARGB(255, 4, 141, 246)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          // child: activeScreen
          // child: activeScreen == 'start_screen'
          //     ? StartScreen(switchScreen)
          //     : const QuestionsScreen(),
          child: screenWidget,
        ),
      ),
    );
  }
}
