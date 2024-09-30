import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leads/application/home_blocs/question_bank_bloc/bloc/question_bank_bloc_bloc.dart';
import 'package:leads/constants/dimensions.dart';
import 'package:leads/core/theme/app_colors/app_colors.dart';
import 'package:leads/domain/entities/home_screen_model/question_bank_model/question_bank_model.dart';
import 'package:leads/theme/colors.dart';

class ContainerBank extends StatelessWidget {
  const ContainerBank({
    super.key,
    required this.question,
    required this.solution,
    required this.number,
    required this.quesModel,
    required this.onPress,
    required this.selectedIndex,
  });
  final String question;
  final String solution;

  final int number;
  final QuestionBankResult? quesModel;
  final VoidCallback onPress;
  final int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${number + 1}. ',
                  style: const TextStyle(
                      fontSize: 13, color: white, fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Text(
                    question,
                    style: const TextStyle(
                        fontSize: 13,
                        color: white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(width: 16),
                const Icon(Icons.bookmark_outline, size: 30)
              ],
            ),
          ),
          kHeight,
          Column(children: [
            AnswerOptionsWidget(
              index: 0,
              optionsText: quesModel?.option1 ?? "",
            ),
            AnswerOptionsWidget(
              index: 1,
              optionsText: quesModel?.option2 ?? "",
            ),
            AnswerOptionsWidget(
              index: 2,
              optionsText: quesModel?.option3 ?? "",
            ),
            AnswerOptionsWidget(
              index: 3,
              optionsText: quesModel?.option4 ?? "",
            ),
          ]),
          const SizedBox(height: 20),
          BlocBuilder<QuestionBankBlocBloc, QuestionBankBlocState>(
            builder: (context, state) {
              return Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: onPress,
                      child: AnimatedContainer(
                        curve: Curves.linearToEaseOut,
                        duration: const Duration(milliseconds: 800),
                        width: number == state.selectedIndex ? kWidthScreen : 140.w,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(20),
                            color: number==state.selectedIndex?AppColors.kWhiteLight: const Color(0xffD9D9D9).withOpacity(.1)),
                        child: Row(
                          mainAxisAlignment:number!=state.selectedIndex? MainAxisAlignment.center:MainAxisAlignment.start,
                          children: [
                            if( number!=state.selectedIndex)
                            const Padding(
                              padding: EdgeInsets.only(right: 4.0),
                              child: Icon(Icons.remove_red_eye,size: 18,),
                            ),
                            Text(
                             number==state.selectedIndex ? solution=="Option_1"? " Option A":solution=="Option_2"?" Option B" :solution=="Option_3"?" Option C":" Option D": "Show Answer",
                              style:  TextStyle(
                                  fontSize: 13, fontWeight: number==state.selectedIndex?FontWeight.w800: FontWeight.w500,color:   number==state.selectedIndex?AppColors.black:null ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  if( number == state.selectedIndex)
                  Positioned(
                    top: 0,
                    left: 20,
                    child: Container(
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xff060606)),
                        height: 20,
                        width: 90,
                        child: const Center(
                          child: Text(
                            "Answer",
                            style: TextStyle(color: white, fontSize: 12),
                          ),
                        )),
                  )
                ],
              );
            },
          )
        ],
      ),
    );
  }
}

class AnswerOptionsWidget extends StatelessWidget {
  const AnswerOptionsWidget(
      {super.key, required this.index, required this.optionsText});

  final int index;
  final String optionsText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, left: 15.w),
      child: Row(
        children: [
          Text(
            "${String.fromCharCode(65 + index)})  ",
            style: const TextStyle(
                fontSize: 12, color: white, fontWeight: FontWeight.bold),
          ), // 65 is 'A' in ASCII
          Expanded(
            child: Text(
              optionsText,
              style: const TextStyle(
                  fontSize: 12, color: white, fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
