part of 'theory_paper_bloc.dart';

@freezed
class TheoryPaperState with _$TheoryPaperState {
  const factory TheoryPaperState(
      {required bool isLoading,
      required int page,
      required int lastSelectedIndex,required int? currentIndex ,required LeadsTheoryModel? theoryModel,required bool isPaginating,required bool hasMore}) = _TheoryPaperState;
  factory TheoryPaperState.initial() => const TheoryPaperState(
     isLoading:false, page: 1, currentIndex: null,lastSelectedIndex:0,theoryModel:null ,isPaginating:false,hasMore: true);
}
