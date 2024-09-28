part of 'learners_practice_bloc.dart';

@freezed
class LearnersPracticeState with _$LearnersPracticeState {
 const factory LearnersPracticeState({required bool isLoading,required int page,required bool hasMore,required List<int> selectedAnswersIndex,required int selectedQuestionType,required dynamic practiceModel,required int currentQuestionPage,required LearnersPracticeSubmitModel? practiceSubmitModel }) = _LearnersPracticeState;
  factory  LearnersPracticeState.initial() => const LearnersPracticeState(hasMore: true,isLoading: false,page: 1,practiceModel: null,selectedAnswersIndex: [],selectedQuestionType: 0,currentQuestionPage:0,practiceSubmitModel:null);
}
