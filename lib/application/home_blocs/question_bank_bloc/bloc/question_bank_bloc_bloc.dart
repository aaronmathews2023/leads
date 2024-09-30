import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leads/domain/entities/home_screen_model/question_bank_model/question_bank_model.dart';
import 'package:leads/infrastructure/repositories/home_screen_repos/question_bank_repo/question_bank_repo.dart';
import 'package:leads/utils/logger/logger.dart';

part 'question_bank_bloc_event.dart';
part 'question_bank_bloc_state.dart';
part 'question_bank_bloc_bloc.freezed.dart';

class QuestionBankBlocBloc extends Bloc<QuestionBankBlocEvent, QuestionBankBlocState> {
  QuestionBankBlocBloc() : super(QuestionBankBlocState.initial()) {
    on<GetQuestionBanksEvent>(getQuestionBankEvent);
 on<LoadMoreQuestionBankEvent>(loadMoreQuestionBankEvent);
  on<SelectQuestionTypeEvent>(selectQuestionTypeEvent);
  on<ChangeIndexEvent>(changeIndexEvent);
  }
  final questionBanksRepo = QuestionBanksRepo();
  getQuestionBankEvent(GetQuestionBanksEvent event, Emitter<QuestionBankBlocState> emit) async {
      try {
        if(state.questionBankModel?.data ==null){
emit(state.copyWith(isLoading: true,hasMore: true,page: 1,isPagination: true));
        }

        final resp =await questionBanksRepo.getQuestionBanks(page: 1);
        if(resp!=null && (resp.data?.results?.isNotEmpty??false)){
emit(state.copyWith(questionBankModel: resp,isLoading: false,hasMore: true,page: 1,isPagination: false));
        }else{
       emit(state.copyWith(questionBankModel: resp,isLoading: false,hasMore: false,page: 1,isPagination: false));   
        }
      } catch (e) {
        AppLogger.e(e);
      }finally{
       emit(state.copyWith(isLoading: false,page: 1,isPagination: false)); 
      }
    }
      loadMoreQuestionBankEvent(LoadMoreQuestionBankEvent event, Emitter<QuestionBankBlocState> emit) async {
         int page = state.page;
   page = page+1;
  try {
if(state.hasMore){
  emit(state.copyWith(isPagination: true));
}
    final resp = await questionBanksRepo.getQuestionBanks(page: page);
    if(resp !=null && (resp.data?.results?.isNotEmpty??false)){
        List<QuestionBankResult>? results = List.from(state.questionBankModel?.data?.results??[]);
        results.addAll(resp.data?.results??[]);

emit(state.copyWith(isLoading: false,questionBankModel:state.questionBankModel?.copyWith(data: state.questionBankModel?.data?.copyWith(results: results)),page: page,hasMore:(resp.data?.next?.isEmpty??true)?false:true,isPagination:false));
    }else{
         emit(state.copyWith(isLoading: false,hasMore: false,isPagination: false)); 
    }
  } catch (e) {
    emit(state.copyWith(isLoading: false,page: state.page,hasMore: true,isPagination: false));
    AppLogger.e(e);
  }
    }
      selectQuestionTypeEvent(SelectQuestionTypeEvent event, Emitter<QuestionBankBlocState> emit) async {
      try {
        
      } catch (e) {
        
      }
    }
     changeIndexEvent(ChangeIndexEvent event, Emitter<QuestionBankBlocState> emit) async {
      try {
        int index= state.selectedIndex;
        if(event.index==state.selectedIndex){
index = -1;
        }else{
          index =event.index;
        }
        AppLogger.i(event.index);
         AppLogger.w(state.selectedIndex);
       emit(state.copyWith(selectedIndex: index)); 
      } catch (e) {
        AppLogger.e(e);
      }
    }
}
