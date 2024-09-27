
import 'package:leads/application/home_blocs/theory_paper_bloc/bloc/theory_paper_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
List<BlocProvider> appBlocProviders = [
  BlocProvider<TheoryPaperBloc>(create: (context) => TheoryPaperBloc()),

];
