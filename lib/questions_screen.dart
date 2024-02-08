import 'package:flutter/material.dart';
import 'package:quiz/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Questoins....'),
          const SizedBox(
            width: 30,
          ),
          AnswerButton(answerText: 'Answwer', onTap: () {}),
          AnswerButton(answerText: 'Answwer', onTap: () {}),
          AnswerButton(answerText: 'Answwer', onTap: () {}),
        ],
      ),
    );
  }
}
