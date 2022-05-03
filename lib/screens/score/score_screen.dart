import 'package:app_quiz/constants.dart';
import 'package:app_quiz/controllers/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController =Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                child: SvgPicture.asset(
                  "assets/icons/bg.svg",
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                Spacer(flex: 3,),
                Text(
                  "Score ",
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      ?.copyWith(color: kSecondaryColor),
                ),
              Spacer(),
              Text("${_qnController.numOfCorrectAns*10}/${_qnController.questions.length*10}"


              ,style: Theme.of(context).textTheme
                .headline4?.copyWith(color: kSecondaryColor),
              ),
                Spacer(flex: 3,),],

            ),
          )
        ],
      ),
    );
  }
}
