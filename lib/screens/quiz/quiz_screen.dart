import 'package:app_quiz/controllers/question_controller.dart';
import 'package:app_quiz/screens/quiz/components/body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class QuizScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    QuestionController _controller =Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(onPressed: (){_controller.nextQuestion();}, child: Text("Skip",style: TextStyle
            (color: Colors.white),))
        ],
      ),
      body: body(),
    );
  }
}

