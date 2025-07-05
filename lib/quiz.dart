// lib/quiz.dart
import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/home_screen.dart';
import 'package:quiz_app/datas/questions.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/profil.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  final List<String> selectedAnswer = [];

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswer.clear();
      activeScreen = 'questions-screen';
    });
  }

  void switchScreen() {
    // Pastikan fungsi ini ada di sini
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void showProfileScreen() {
    setState(() {
      activeScreen = 'profile-screen';
    });
  }

  void goBackToHomeScreen() {
    setState(() {
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = HomeScreen(
      switchScreen, 
      profile: showProfileScreen, 
    );

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        choosenAnswers: selectedAnswer,
        onRestart: restartQuiz,
      );
    }

    if (activeScreen == 'profile-screen') {
      screenWidget = ProfileScreen(onGoBack: goBackToHomeScreen);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
