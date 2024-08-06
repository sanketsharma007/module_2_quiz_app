import 'package:flutter/material.dart';
import 'package:module_2_quiz_app/answer_button.dart';
import 'package:module_2_quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                currentQuestion.text,
                style: const TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ...currentQuestion.answers.map((item) {
                return AnswerButton(answerText: item, onTap: () {});
              }),
              //   const SizedBox(height: 30),

              //   AnswerButton(answerText: currentQuestion.answers[0], onTap: () {}),

              //   const SizedBox(height: 30),

              //   AnswerButton(answerText: currentQuestion.answers[1], onTap: () {}),

              //   const SizedBox(height: 30),

              //   AnswerButton(answerText: currentQuestion.answers[2], onTap: () {}),
              // ],
            ]),
      ),
    );
  }
}
