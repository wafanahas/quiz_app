import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/results_screen.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:flutter/material.dart';

import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _Quizstate();
  }
}

class _Quizstate extends State<Quiz> {
 final List<String> _selectedAnswers =[];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }
  void chooseAnswer(String answer) {
    _selectedAnswers.add(answer);
  
    if (_selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results_screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
     
     if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
        ) ;
     }

     if(activeScreen == 'results_screen'){
      screenWidget =  ResultsScreen(chosenAnswer: _selectedAnswers,); 
     }


   return MaterialApp(
    home: Scaffold(
      body:  Container(
         decoration: const BoxDecoration(
          gradient: LinearGradient(
           colors: [
            Color.fromARGB(255, 78, 13, 151),
            Color.fromARGB(255, 107, 15, 168),
           ], 
           begin: Alignment.topLeft,
           end:  Alignment.bottomRight,
          ),
          ),
        child: screenWidget,
        ),
       ),
       );
  }
}