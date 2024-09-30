part of 'question_bank_bloc_bloc.dart';

@freezed
class QuestionBankBlocEvent with _$QuestionBankBlocEvent {
  const factory QuestionBankBlocEvent.getQuestionBanks() = GetQuestionBanksEvent;
    const factory QuestionBankBlocEvent.loadMoreQuestionBank() = LoadMoreQuestionBankEvent;
        const factory QuestionBankBlocEvent.selectQuestionType(int index) = SelectQuestionTypeEvent;
                const factory QuestionBankBlocEvent.saveQuestionEvent(int index) = SaveQuestionEvent;
                     const factory QuestionBankBlocEvent.changeIndexEvent(int index) = ChangeIndexEvent;
}