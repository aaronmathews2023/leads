import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leads/application/home_blocs/question_bank_bloc/bloc/question_bank_bloc_bloc.dart';
import 'package:leads/constants/assets.dart';
import 'package:leads/presentation/common/no_data_icon_widget/no_data_icon.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/question_bank_screen/questionbank/widget/container_bank.dart';
import 'package:leads/theme/colors.dart';

class Questionbank extends StatefulWidget {
  const Questionbank({super.key});

  @override
  State<Questionbank> createState() => _QuestionbankState();
}

class _QuestionbankState extends State<Questionbank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Question Bank"),
      ),
      body: BlocBuilder<QuestionBankBlocBloc, QuestionBankBlocState>(
        builder: (context, state) {
          return state.questionBankModel==null?const NoDataIconWidget(): Column(
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
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                  0,
                      (index) => Column(
                        children: [
                          const ContainerBank(
                              question:
                                  "",
                              solution:
                                  "",
                              number: 1),
                          const SizedBox(height: 20),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xffD9D9D9).withOpacity(.1)),
                            height: 150,
                            width: double.maxFinite,
                            child: const Center(child: Text("advertisement")),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
