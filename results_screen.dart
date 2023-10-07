import 'package:quiz_app/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_summery.dart';

class ResultsScreen extends  StatelessWidget {
 const ResultsScreen({
  super.key, required this.chosenAnswer,
  });

final List<String> chosenAnswer;

 List<Map<String, Object>> get summaryData {
  final List<Map<String, Object>> summary= [];
 

  for(var i = 0; i <chosenAnswer.length; i++) {
   summary.add({
      'question_index': i,
      'question':questions[i].text,
      'correct_answers': questions[i].answers[0],
      'user_answer': chosenAnswer[i]
    },
    );
  }
  return summary;
 }




  @override
  Widget build(BuildContext context) {
     final numTotalQuestions = questions.length;
     final numCorrectQuestions = summaryData.where(
      (data) =>  data ['user_answer']== data['correct_answers']
     ).length;


  return SizedBox(
      width: double.infinity,
      child: Container(
        margin:const  EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('You answered $numCorrectQuestions  out of $numTotalQuestions question answers!',),
         const SizedBox(
          height: 30,
          ),
         QuestionsScreen( summaryData),
        const SizedBox(height: 30,),
          TextButton(onPressed:  () {},
           child:const Text('Restart Quiz'),
           )
          ],
          ),
      ),
  );
  
  }
}