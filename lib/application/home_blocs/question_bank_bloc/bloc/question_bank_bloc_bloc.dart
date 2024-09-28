import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leads/infrastructure/repositories/home_screen_repos/question_bank_repo/question_bank_repo.dart';

part 'question_bank_bloc_event.dart';
part 'question_bank_bloc_state.dart';
part 'question_bank_bloc_bloc.freezed.dart';

class QuestionBankBlocBloc extends Bloc<QuestionBankBlocEvent, QuestionBankBlocState> {
  QuestionBankBlocBloc() : super(QuestionBankBlocState.initial()) {
    on<GetQuestionBanksEvent>(getQuestionBankEvent);
 on<LoadMoreQuestionBankEvent>(loadMoreQuestionBankEvent);
  on<SelectQuestionTypeEvent>(selectQuestionTypeEvent);
  }
  final questionBanksRepo = QuestionBanksRepo();
  getQuestionBankEvent(GetQuestionBanksEvent event, Emitter<QuestionBankBlocState> emit) async {
      try {
        
      } catch (e) {
        
      }
    }
      loadMoreQuestionBankEvent(LoadMoreQuestionBankEvent event, Emitter<QuestionBankBlocState> emit) async {
      try {
        
      } catch (e) {
        
      }
    }
      selectQuestionTypeEvent(SelectQuestionTypeEvent event, Emitter<QuestionBankBlocState> emit) async {
      try {
        
      } catch (e) {
        
      }
    }
}
