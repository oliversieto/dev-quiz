import 'package:DevQuiz/shared/models/answer_model.dart';

class QuestinModel {
  final String title;
  final List<AnswerModel> answers;

  QuestinModel({
    required this.title,
    required this.answers,
  }) : assert(answers.length == 4);
}
