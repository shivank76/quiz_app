import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/summary_data.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.choosenAnswers});
  final List<String> choosenAnswers;
  List<Map<String, Object>> getSummary() {
    List<Map<String, Object>> summary = [];
    for (int i = 0; i < choosenAnswers.length; i++) {
      summary.add(
        {
          'questionIndex': i + 1,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': choosenAnswers[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummary();
    final int totalQuestions = questions.length;
    final int correctQuestions = summaryData
        .where(
          (element) => element['user_answer'] == element['correct_answer'],
        )
        .length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'You answered $correctQuestions out of $totalQuestions answers correctly!'),
            const SizedBox(height: 20),
            SummaryData(summaryData: summaryData),
            const SizedBox(height: 20),
            OutlinedButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
              ),
              icon: const Icon(Icons.restart_alt_sharp),
              label: const Text('Restart'),
            )
          ],
        ),
      ),
    );
  }
}
