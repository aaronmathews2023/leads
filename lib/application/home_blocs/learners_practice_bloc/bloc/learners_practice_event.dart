part of 'learners_practice_bloc.dart';

@freezed
class LearnersPracticeEvent with _$LearnersPracticeEvent {
   const factory LearnersPracticeEvent.getPracticeInstructionsEvent() = GetPracticeInstructionsEvent;
  const factory LearnersPracticeEvent.getPracticeQuestions() = GetPracticeQuestionsEvent;
    const factory LearnersPracticeEvent.startPracticeTest() = StartPracticeTestEvent;
        const factory LearnersPracticeEvent.submitPracticeTestEvent() = SubmitPracticeTestEvent;
    const factory LearnersPracticeEvent.loadMoreQuestionTest() = LoadMoreQuestionsTest;
    const factory LearnersPracticeEvent.selectPracticeTestType(int index) = SelectPracticeTestTypeEvent;
        const factory LearnersPracticeEvent.nextQuestionEvent(int currentIndex) = NextQuestionEvent;
                const factory LearnersPracticeEvent.previousQuestionEvent(int currentIndex) = PreviousQuestionEvent;
                    const factory LearnersPracticeEvent.markAnswerEvent(int currentQuestionIndex,int answerIndex) = MarkAnswerEvent;
}