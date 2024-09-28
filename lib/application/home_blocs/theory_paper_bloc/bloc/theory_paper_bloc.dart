import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leads/domain/entities/home_screen_model/theory_paper_model/theory_paper_model.dart';
import 'package:leads/infrastructure/repositories/home_screen_repos/theory_paper_repo/theory_paper_repo.dart';
import 'package:leads/utils/logger/logger.dart';

part 'theory_paper_event.dart';
part 'theory_paper_state.dart';
part 'theory_paper_bloc.freezed.dart';





class TheoryPaperBloc extends Bloc<TheoryPaperBlocEvent, TheoryPaperState> {
  TheoryPaperBloc() : super(TheoryPaperState.initial()) {
  
  on<GetTheoryEvent>(getTheoryPapersEvent);
  on<LoadMoreTheoryEvent>(loadMoreTheoryPapersEvent);
  }
    final theoryRepo = TheoryPaperRepo();
getTheoryPapersEvent(GetTheoryEvent event, Emitter<TheoryPaperState> emit) async {
  try {
    if(state.theoryModel?.data==null){
    emit(state.copyWith(isLoading: true,page: 1,hasMore:true,isPaginating: true));  
    }
    final resp = await theoryRepo.getTheoryPapers(page: 1);
    if(resp !=null && (resp.data?.results?.isNotEmpty??false)){
emit(state.copyWith(isLoading: false,theoryModel:resp,page: 1,hasMore:(resp.data?.next?.isEmpty??true)?false:true,isPaginating:false));
    }else{
         emit(state.copyWith(isLoading: false,page: 1,hasMore: false,isPaginating: false)); 
    }
  } catch (e) {
    emit(state.copyWith(isLoading: false,page: 1,hasMore: true,isPaginating: false));
    AppLogger.e(e);
  }
}
loadMoreTheoryPapersEvent(LoadMoreTheoryEvent event, Emitter<TheoryPaperState> emit) async {
     int page = state.page;
   page = page+1;
  try {

    final resp = await theoryRepo.getTheoryPapers(page: page);
    if(resp !=null && (resp.data?.results?.isNotEmpty??false)){
        List<TheoryResult>? results = List.from(state.theoryModel?.data?.results??[]);
        results.addAll(resp.data?.results??[]);

emit(state.copyWith(isLoading: false,theoryModel:state.theoryModel?.copyWith(data: state.theoryModel?.data?.copyWith(results: results)),page: page,hasMore:(resp.data?.next?.isEmpty??true)?false:true,isPaginating:false));
    }else{
         emit(state.copyWith(isLoading: false,page: page,hasMore: false,isPaginating: false)); 
    }
  } catch (e) {
    emit(state.copyWith(isLoading: false,page: state.page,hasMore: true,isPaginating: false));
    AppLogger.e(e);
  }
}
}

