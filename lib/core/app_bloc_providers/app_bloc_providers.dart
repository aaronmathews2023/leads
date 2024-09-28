
import 'package:leads/application/home_blocs/learners_practice_bloc/bloc/learners_practice_bloc.dart';
import 'package:leads/application/home_blocs/question_bank_bloc/bloc/question_bank_bloc_bloc.dart';
import 'package:leads/application/home_blocs/theory_paper_bloc/bloc/theory_paper_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
List<BlocProvider> appBlocProviders = [
  BlocProvider<TheoryPaperBloc>(create: (context) => TheoryPaperBloc()),
   BlocProvider<QuestionBankBlocBloc>(create: (context) => QuestionBankBlocBloc()),
    BlocProvider<LearnersPracticeBloc>(create: (context) => LearnersPracticeBloc()),

];
