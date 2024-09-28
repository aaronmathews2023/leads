import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leads/application/home_blocs/theory_paper_bloc/bloc/theory_paper_bloc.dart';
import 'package:leads/presentation/common/no_data_icon_widget/no_data_icon.dart';
import 'package:leads/utils/logger/logger.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class TheoryPaper extends StatefulWidget {
  const TheoryPaper({super.key});

  @override
  State<TheoryPaper> createState() => _TheoryPaperState();
}

class _TheoryPaperState extends State<TheoryPaper> {
  late ScrollController scrollController = ScrollController();
  @override
  void initState() {
   scrollController =ScrollController();
scrollController?.addListener(_scrlListener);
    super.initState();
  }
  @override
  void dispose() {
    scrollController.removeListener(_scrlListener);
scrollController?.dispose();
    super.dispose();
  }
    _scrlListener() {
    if (scrollController?.position.maxScrollExtent ==
            scrollController?.offset &&
        BlocProvider.of<TheoryPaperBloc>(context).state.hasMore == true &&BlocProvider.of<TheoryPaperBloc>(context).state.isPaginating==false ) {
      AppLogger.e("Load more data");
      BlocProvider.of<TheoryPaperBloc>(context)
          .add(const LoadMoreTheoryEvent());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Theory Paper"),
        ),
        body: BlocBuilder<TheoryPaperBloc, TheoryPaperState>(
          builder: (context, state) {
            final theoryList =state.theoryModel?.data?.results;
            return (( theoryList?.isEmpty??true)  && (state.isLoading))?Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: LoadingAnimationWidget.horizontalRotatingDots(
                                    color: Colors.white,
                                    size: 60.h,
                                  ),
                ),
              ],
            ):  (( theoryList?.isEmpty??true)  && (!state.isLoading)) ?const NoDataIconWidget(): ListView.builder(
              controller: scrollController,
              shrinkWrap: true,
              itemCount: theoryList?.length??0,
              itemBuilder: (context, index) {

                return Column(
                  children: [
                    Card(
                      child: ExpansionTile(
                        onExpansionChanged: (value){},
                        maintainState: false,
                        title: Text(theoryList?[index].title??""),
                        children: [Text(theoryList?[index].description??"")],
                      ),
                    ),
                    if((index+1)==theoryList?.length && state.isPaginating)
                    Padding(
                      padding: const EdgeInsets.only(top:0.0,bottom: 6),
                      child: LoadingAnimationWidget.horizontalRotatingDots(
                              color: Colors.white,
                              size: 60.h,
                            ),
                    ),
                  ],
                );
              },
            );
          },
        ));
  }
}
