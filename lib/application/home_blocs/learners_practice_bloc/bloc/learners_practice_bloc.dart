import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leads/domain/entities/home_screen_model/learners_practice_test_models/practice_question_model/practice_question_model.dart';
import 'package:leads/domain/entities/home_screen_model/learners_practice_test_models/practice_submit_model/practice_submit_model.dart';
import 'package:leads/infrastructure/repositories/home_screen_repos/learners_practice_test_repo/practice_test_repo.dart';
import 'package:leads/utils/logger/logger.dart';

part 'learners_practice_event.dart';
part 'learners_practice_state.dart';
part 'learners_practice_bloc.freezed.dart';

class LearnersPracticeBloc extends Bloc<LearnersPracticeEvent, LearnersPracticeState> {
  LearnersPracticeBloc() : super(LearnersPracticeState.initial()) {
        on<GetPracticeInstructionsEvent>(getPracticeInstructionsEvent);
    on<GetPracticeQuestionsEvent>(getQuestionBankEvent);
    on<LoadMoreQuestionsTest>(loadMorePracticeQuestion);
    on<MarkAnswerEvent>(markAnswerEvent);
  }
 final practiceRepo = LearnersPracticeTestRepo();
  getPracticeInstructionsEvent(GetPracticeInstructionsEvent event, Emitter<LearnersPracticeState> emit) async {
      try {
        
      } catch (e) {
        
      }
    }
     loadMorePracticeQuestion(LoadMoreQuestionsTest event, Emitter<LearnersPracticeState> emit) async {
     int page = state.page;
   page = page+1;
  try {
if(state.hasMore){
  emit(state.copyWith(isPaginating: true));
}
    final resp = await practiceRepo.getQuestionsPracticeTest(page: page);
    if(resp !=null && (resp.data?.results?.isNotEmpty??false)){
        List<PracticeQuesResult>? results = List.from(state.practiceQuestions?.data?.results??[]);
        results.addAll(resp.data?.results??[]);

emit(state.copyWith(isLoading: false,practiceQuestions:state.practiceQuestions?.copyWith(data: state.practiceQuestions?.data?.copyWith(results: results)),page: page,hasMore:(resp.data?.next?.isEmpty??true)?false:true,isPaginating:false));
    }else{
         emit(state.copyWith(isLoading: false,hasMore: false,isPaginating: false)); 
    }
  } catch (e) {
    emit(state.copyWith(isLoading: false,page: state.page,hasMore: true,isPaginating: false));
    AppLogger.e(e);
  }
    }
   getQuestionBankEvent(GetPracticeQuestionsEvent event, Emitter<LearnersPracticeState> emit) async {
      try {
        if(state.practiceQuestions?.data ==null){
          emit(state.copyWith(hasMore: true,page: 1,isLoading: true,currentQuestionPage: 0,selectedAnswersIndex:List.generate(100, (index) => -1,),isPaginating: true,practiceSubmitModel: null )); 
        }else{
          if(state.practiceQuestions?.data?.results?.isNotEmpty ??false){
                      emit(state.copyWith(hasMore: true,page: 1,isLoading: false,currentQuestionPage: 0,selectedAnswersIndex:List.generate(100, (index) => -1,),isPaginating: true,practiceSubmitModel: null )); 
          }
        }

    final resp = await   practiceRepo.getQuestionsPracticeTest(page: 1,stateId:"66ea81d4038acc96425e19ac" );
    if(resp!=null||(resp?.data?.results?.isNotEmpty??false)){
  emit(state.copyWith(hasMore: true,page: 1,isLoading: false,currentQuestionPage: 0,isPaginating: false,practiceQuestions: resp,practiceSubmitModel: null,selectedAnswersIndex: List.generate(resp?.data?.results?.length??0, (index) => -1,growable: true),)); 
    }else{
  emit(state.copyWith(hasMore: true,page: 1,isLoading: false,currentQuestionPage: 0,isPaginating: false,practiceSubmitModel: null,selectedAnswersIndex: List.generate(resp?.data?.results?.length??0, (index) => -1,growable: true),)); 
    }
      } catch (e) {
        AppLogger.i(e);
      }
    }
     markAnswerEvent(MarkAnswerEvent event, Emitter<LearnersPracticeState> emit) async {
      try {
        int markedAnswer = event.answerIndex;
        int questionIndex = event.currentQuestionIndex;
List<int> answeredQuestons = List.from(state.selectedAnswersIndex);
answeredQuestons[questionIndex] =markedAnswer;
        emit(state.copyWith(selectedAnswersIndex: answeredQuestons));
      } catch (e) {
        AppLogger.e(e);
      }
    }
    
}
