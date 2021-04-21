import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/widgets.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    user = UserModel(
      name: "Renato Oliveira",
      photoUrl: "https://avatars.githubusercontent.com/u/29523854?v=4",
    );
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
        title: "NLW 5 Flutter",
        image: AppImages.blocks,
        questions: [
          QuestionModel(
            title: "Está curtindo o Flutter?",
            answers: [
              AnswerModel(title: "Estou curtindo"),
              AnswerModel(title: "Amando Flutter"),
              AnswerModel(title: "Muito top"),
              AnswerModel(title: "Show de bole", isRight: true),
            ],
          ),
          QuestionModel(
            title: "Está curtindo o Flutter?",
            answers: [
              AnswerModel(title: "Estou curtindo"),
              AnswerModel(title: "Amando Flutter"),
              AnswerModel(title: "Muito top"),
              AnswerModel(title: "Show de bole", isRight: true),
            ],
          )
        ],
        level: Level.facil,
      )
    ];
    state = HomeState.success;
  }
}
