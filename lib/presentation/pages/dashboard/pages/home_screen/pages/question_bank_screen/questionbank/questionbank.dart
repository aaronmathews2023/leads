import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leads/application/home_blocs/question_bank_bloc/bloc/question_bank_bloc_bloc.dart';
import 'package:leads/constants/assets.dart';
import 'package:leads/constants/dimensions.dart';
import 'package:leads/core/theme/app_colors/app_colors.dart';
import 'package:leads/domain/entities/home_screen_model/question_bank_model/question_bank_model.dart';
import 'package:leads/presentation/common/loading_widget/loading_widget.dart';
import 'package:leads/presentation/common/no_data_icon_widget/no_data_icon.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/question_bank_screen/questionbank/widget/container_bank.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/question_bank_screen/questionbank/widget/question_list/question_list.dart';
import 'package:leads/theme/colors.dart';
import 'package:leads/utils/logger/logger.dart';

class Questionbank extends StatelessWidget {
  const Questionbank({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
 appBar: AppBar(
        title: const Text("Question Bank"),
      ),
      body: BlocBuilder<QuestionBankBlocBloc, QuestionBankBlocState>(
        builder: (context, state) {
          final quesBank = state.questionBankModel?.data?.results;
          return (state.questionBankModel?.data?.results?.isEmpty ?? true) &&
                  (state.isLoading)
              ? const LoadingIconWidget()
              : (state.questionBankModel?.data?.results?.isEmpty ?? true) &&
                      (!state.isLoading)
                  ? const NoDataIconWidget()
                  : Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 5),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Select Qn Type"),
                                Icon(Icons.keyboard_arrow_down)
                              ],
                            ),
                          ),
                          kHeight15,
                          QuestionsListWidget(quesBank: quesBank),
                        ],
                      ),
                    );
        },
      ),
    );
  }
}
