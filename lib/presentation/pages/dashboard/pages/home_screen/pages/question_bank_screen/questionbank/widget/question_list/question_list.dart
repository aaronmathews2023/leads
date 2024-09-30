
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leads/application/home_blocs/question_bank_bloc/bloc/question_bank_bloc_bloc.dart';
import 'package:leads/domain/entities/home_screen_model/question_bank_model/question_bank_model.dart';
import 'package:leads/presentation/common/loading_pagination/loading_pagination.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/question_bank_screen/questionbank/widget/container_bank.dart';
import 'package:leads/utils/logger/logger.dart';

class QuestionsListWidget extends StatefulWidget {
  const QuestionsListWidget({
    super.key,
    required this.quesBank,
  });

  final List<QuestionBankResult>? quesBank;

  @override
  State<QuestionsListWidget> createState() => _QuestionsListWidgetState();
}

class _QuestionsListWidgetState extends State<QuestionsListWidget> {
 late ScrollController scrollCtrl; 
  @override
  void initState() {
    // TODO: implement initState
    scrollCtrl =ScrollController();
    scrollCtrl.addListener(_scrlListener);
    super.initState();
  }
    _scrlListener() {
    if (scrollCtrl?.position.maxScrollExtent ==
            scrollCtrl?.offset &&
        BlocProvider.of<QuestionBankBlocBloc>(context).state.hasMore == true &&BlocProvider.of<QuestionBankBlocBloc>(context).state.isPagination==false ) {
      AppLogger.e("Load more data");
      BlocProvider.of<QuestionBankBlocBloc>(context)
          .add(const LoadMoreQuestionBankEvent());
    }
  }
  @override
  void dispose() {
    scrollCtrl.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionBankBlocBloc, QuestionBankBlocState>(
      builder: (context, state) {
        return Expanded(
          child: SingleChildScrollView(
            controller: scrollCtrl,
            child: Column(
              children: List.generate(
                widget.quesBank?.length ?? 0,
                (index) => Column(
                  children: [
                    ContainerBank(
                        onPress: () {
                          BlocProvider.of<QuestionBankBlocBloc>(context)
                              .add(ChangeIndexEvent(index));
                        },
                        selectedIndex: state.selectedIndex,
                        quesModel: widget.quesBank?[index],
                        question: widget.quesBank?[index].questions ?? "",
                        solution: widget.quesBank?[index].answer ?? "",
                        number: index),
                    const SizedBox(height: 5),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.0),
                      child: Divider(
                        thickness: .3,
                      ),
                    ),
                    const SizedBox(height: 5),
                    // Container(
                    //   margin: const EdgeInsets.symmetric(horizontal: 7),
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(20),
                    //       color: const Color(0xffD9D9D9).withOpacity(.1)),
                    //   height: 150,
                    //   width: double.maxFinite,
                    //   child: const Center(child: Text("advertisement")),
                    // ),
                    if(state.isPagination && state.questionBankModel?.data?.results?.length == (index+1))
                    const LoadingPagination()
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
