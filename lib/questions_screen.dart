// lib/questions_screen.dart
import 'package:flutter/material.dart';
import 'package:quiz_app/datas/questions.dart';
import 'package:quiz_app/models/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.onSelectAnswer, //
  });

  final void Function(String answer) onSelectAnswer; 

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    //
    widget.onSelectAnswer(selectedAnswer); 
    setState(() {
      
      currentQuestionIndex++; 
    });
  }

  @override
  Widget build(context) {
    if (currentQuestionIndex >= questions.length) {
      return Center(
        child: Text(
          'Kuis Selesai! Mengalihkan ke Hasil...',
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 237, 223, 252),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswer().map(
              (item) {
                return Container(
                  margin: const EdgeInsets.all(5),
                  child: AnswerButton(
                    text: item,
                    onTap: () {
                      answerQuestion(item); 
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
