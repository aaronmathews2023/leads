part of 'question_bank_bloc_bloc.dart';

@freezed
class QuestionBankBlocState with _$QuestionBankBlocState {
  const factory QuestionBankBlocState({required bool isLoading,required int page,required bool hasMore,required dynamic questionBankModel,required List<String> questionTypeLists,required int selectedQuestionType})=_QuestionBankBlocState;

   factory QuestionBankBlocState.initial() => const QuestionBankBlocState(isLoading: false,hasMore: true,page: 1,questionBankModel: null,questionTypeLists: [],selectedQuestionType: 0);
}

