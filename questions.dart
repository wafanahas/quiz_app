import 'package:quiz_app/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs ?',
    [
      'Widgets',
      'Components',
      ' Blocks',
      ' Functions',
    ],
    ),
  QuizQuestion('How are Flutter UIs built?',[
  'By combining widgets in code',
  'By combining widgets in a visual editors',
  'By defining widges in config files',
  'By using XCode for ios and android Studio For Andriod',

  ],
 ),
 QuizQuestion(
  'What are the purpose of a StateFulWidget?',[
    'Update UI as data changes',
    'Update data as UI changes',
    'Ignore data changes',
    'Render UI that does not depend on data',
  ],
),
QuizQuestion(
  'How should you update data inside of StatesulWidget',[
    'By calling satState',
    'By calling updataData',
    'By calling updateUI',
    'By calling updateState',
  ],
),
];