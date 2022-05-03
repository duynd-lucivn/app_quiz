import 'package:app_quiz/constants.dart';
import 'package:app_quiz/controllers/question_controller.dart';
import 'package:app_quiz/models/Questions.dart';
import 'package:app_quiz/screens/quiz/components/option.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key? key,
    required this.questions,
  }) : super(key: key);
final Question questions;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller=Get.put(QuestionController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [

          Text(
            questions.question ,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: kBlackColor),
          ),
          SizedBox(height: kDefaultPadding/2,),
          ...List.generate(questions.options!.length , (index) => Option(
              text: questions.options![index], index: index,
              press: ()=> _controller.checkAns(questions,index))),
        ],
      ),
    );
  }
}