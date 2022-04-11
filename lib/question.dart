class Question {
  late String questionText;
  late bool questionAns;

  Question({String? q, bool? a}) {
    questionText = q.toString();
    questionAns = a!;
  }
}
