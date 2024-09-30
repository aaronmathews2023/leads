import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leads/application/home_blocs/learners_practice_bloc/bloc/learners_practice_bloc.dart';
import 'package:leads/constants/dimensions.dart';
import 'package:leads/core/theme/text_styles/app_text_styles.dart';
import 'package:leads/presentation/pages/authentication/login_screen/widgets/custombutton.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/learners_practice_test_screen/learners_practice_screen/widget/container_partice.dart';

class LearnersPartice extends StatefulWidget {
  const LearnersPartice({super.key});

  @override
  State<LearnersPartice> createState() => _LearnersParticeState();
}

class _LearnersParticeState extends State<LearnersPartice> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LearnersPracticeBloc, LearnersPracticeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Practice"),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8),
                  margin: EdgeInsets.only(top: 10.h),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff161616),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("Select Qn Type"),
                          kWidth5Web,
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                      Text("1/222"),
                    ],
                  ),
                ),
                kHeight,
                const BUildPractceQuestions()
              ],
            ),
          ),
        );
      },
    );
  }
}

class BUildPractceQuestions extends StatelessWidget {
  const BUildPractceQuestions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LearnersPracticeBloc, LearnersPracticeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final questions = state.practiceQuestions?.data?.results??[];
        return Expanded(
            child: PageView.builder(
          itemCount: state.practiceQuestions?.data?.results?.length ?? 0,
          itemBuilder: (context, index) {
            return Column(
              children: [
                const Row(
                  children: [
                    Spacer(),
                    Icon(
                      Icons.bookmark_outline,
                      size: 30,
                    )
                  ],
                ),
               kHeight20,
                 Text(
                  questions[index].questions??"",
                  overflow: TextOverflow.clip,style: AppTextStyles.h3().copyWith(fontSize: 14,fontWeight: FontWeight.w600),
                ),
                kHeight40,
                 ContainerPartice(
                  onPress: () {
                    BlocProvider.of<LearnersPracticeBloc>(context).add(MarkAnswerEvent(index, 0));
                  },
                    option:                   questions[index].option1??"", selected: state.selectedAnswersIndex[index],answerIndex: null,optionIndex: 0,),
               kHeight20,
               ContainerPartice(
                onPress: () {
                      BlocProvider.of<LearnersPracticeBloc>(context).add(MarkAnswerEvent(index, 1));
                },
                    option:                   questions[index].option2??"", selected: state.selectedAnswersIndex[index],answerIndex: null,optionIndex: 1,),
               kHeight20,
          ContainerPartice(
            onPress: () {
                  BlocProvider.of<LearnersPracticeBloc>(context).add(MarkAnswerEvent(index, 2));
            },
                    option:                   questions[index].option3??"", selected: state.selectedAnswersIndex[index],answerIndex: null,optionIndex: 2,),
               kHeight20,
               if((questions[index].option4?.isNotEmpty??false)|| questions[index].option4!=null)
 ContainerPartice(
  onPress: () {
        BlocProvider.of<LearnersPracticeBloc>(context).add(MarkAnswerEvent(index, 3));
  },
                    option:                   questions[index].option4??"", selected: state.selectedAnswersIndex[index],answerIndex: null,optionIndex: 3,),
               kHeight20,
                CustomButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (ctx) => Container(
                                width: double.maxFinite,
                                color: const Color(0xff050B10),
                                child:  Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Text(
                                      "Incorrect",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text("Answer:"),
                                    kHeight5,
                                    Text(questions[index].answer??""),
                                    SizedBox(
                                      height: 50,
                                    )
                                  ],
                                ),
                              ));
                    },
                    label: "Incorrect")
              ],
            );
          },
        ));
      },
    );
  }
}
