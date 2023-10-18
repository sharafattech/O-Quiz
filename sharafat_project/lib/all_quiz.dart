class Quiz {
  final String question;
  final List<Answer> answerList;

  Quiz({required this.question, required this.answerList});
}

class Answer {
  final String answer;
  final bool isCorrect;

  Answer({required this.answer, required this.isCorrect});
}
