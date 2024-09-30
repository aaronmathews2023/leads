part of 'learners_practice_bloc.dart';

@freezed
class LearnersPracticeState with _$LearnersPracticeState {
 const factory LearnersPracticeState({required bool isLoading,required int page,required bool hasMore,required List<int> selectedAnswersIndex,required int selectedQuestionType,required PracticeQuestionModel? practiceQuestions,required int currentQuestionPage,required LearnersPracticeSubmitModel? practiceSubmitModel,required bool isPaginating }) = _LearnersPracticeState;
  factory  LearnersPracticeState.initial() => const LearnersPracticeState(hasMore: true,isLoading: false,page: 1,practiceQuestions: null,selectedAnswersIndex: [],selectedQuestionType: 0,currentQuestionPage:0,practiceSubmitModel:null,isPaginating:false);
}
