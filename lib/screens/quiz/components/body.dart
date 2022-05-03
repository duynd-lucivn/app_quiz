import 'package:app_quiz/constants.dart';
import 'package:app_quiz/controllers/question_controller.dart';
import 'package:app_quiz/models/Questions.dart';
import 'package:app_quiz/screens/quiz/components/progress_bar.dart';
import 'package:app_quiz/screens/quiz/components/question_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class body extends StatelessWidget {
  const body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(
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
        SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: ProgressBar(),
                ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Obx(()=> Text.rich(
                TextSpan(
                  text: "Question ${_questionController.questionNumber.value}",
                  style: Theme
                      .of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: kSecondaryColor),
                  children: [
                    TextSpan(
                      text: "/${_questionController.questions.length}",
                      style: Theme
                          .of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(color: kSecondaryColor),
                    ),
                  ],
                ),
              ),)
            ),
            Divider(
              thickness: 1.5,
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Expanded(child: PageView.builder(
              physics: NeverScrollableScrollPhysics(),
              controller: _questionController.pageController,
              onPageChanged: _questionController.updateTheQnNum,
              itemCount: _questionController.questions.length,
                itemBuilder: (context, index) => QuestionCard(
                  questions: _questionController.questions[index]),
                ),),

      ],
    ),)
    ]
    ,
    );
  }
}


