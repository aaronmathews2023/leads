import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leads/domain/entities/home_screen_model/learners_practice_test_models/practice_submit_model/practice_submit_model.dart';
import 'package:leads/infrastructure/repositories/home_screen_repos/learners_practice_test_repo/practice_test_repo.dart';

part 'learners_practice_event.dart';
part 'learners_practice_state.dart';
part 'learners_practice_bloc.freezed.dart';

class LearnersPracticeBloc extends Bloc<LearnersPracticeEvent, LearnersPracticeState> {
  LearnersPracticeBloc() : super(LearnersPracticeState.initial()) {
        on<GetPracticeInstructionsEvent>(getPracticeInstructionsEvent);
    on<GetPracticeQuestionsEvent>(getQuestionBankEvent);

  }
 final practiceRepo = LearnersPracticeTestRepo();
  getPracticeInstructionsEvent(GetPracticeInstructionsEvent event, Emitter<LearnersPracticeState> emit) async {
      try {
        
      } catch (e) {
        
      }
    }
   getQuestionBankEvent(GetPracticeQuestionsEvent event, Emitter<LearnersPracticeState> emit) async {
      try {
        
      } catch (e) {
        
      }
    }
    
}
