import 'package:quiz_app/models/quiz_question.dart'; 

const questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?', 
    [
      'Widgets', 
      'Components', 
      'Blocks', 
      'Functions', 
    ],
  ),
  QuizQuestion(
    'How are Flutter UIs built?',
    [
      'By combining widgets in code',
      'By combining functions in code',
      'By combining components in a file',
      'By combining blocks in a configuration',
    ],
  ),
  QuizQuestion(
    "What's the purpose of a StatefulWidget?",
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'The data is ignored',
    ],
  ),
  QuizQuestion(
    'You can connect an app to a backend using which of these?',
    [
      'Firebase',
      'MySQL',
      'MongoDB',
      'PostgreSQL',
    ],
  ),
];
