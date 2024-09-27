part of 'theory_paper_bloc.dart';

@freezed
class TheoryPaperBlocEvent with _$TheoryPaperBlocEvent {
 
  const factory TheoryPaperBlocEvent.getTheoryEvent() = GetTheoryEvent;
    const factory TheoryPaperBlocEvent.loadMoreTheory() = LoadMoreTheoryEvent;
  const factory TheoryPaperBlocEvent.expandTileEvent(int index) = ExpandTileEvent;
   const factory TheoryPaperBlocEvent.collapseEvent(int index) = CollapseTileEvent;
}
