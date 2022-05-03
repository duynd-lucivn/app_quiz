import 'package:app_quiz/controllers/question_controller.dart';
import 'package:app_quiz/screens/quiz/components/question_card.dart';
import 'package:app_quiz/screens/quiz/quiz_screen.dart';
import 'package:app_quiz/screens/score/score_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:app_quiz/screens/welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   // Get.lazyPut(()=>(QuestionController()));
    return GetMaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: WelcomeScreen(),
    );
  }
}
