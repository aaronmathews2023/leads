import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leads/application/home_blocs/theory_paper_bloc/bloc/theory_paper_bloc.dart';
import 'package:leads/core/theme/text_styles/app_text_styles.dart';
import 'package:leads/presentation/common/loading_pagination/loading_pagination.dart';
import 'package:leads/presentation/common/loading_widget/loading_widget.dart';
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
            return (( theoryList?.isEmpty??true)  && (state.isLoading))?const LoadingIconWidget():  (( theoryList?.isEmpty??true)  && (!state.isLoading)) ?const NoDataIconWidget(): ListView.builder(
              controller: scrollController,
              shrinkWrap: true,
              itemCount: theoryList?.length??0,
              itemBuilder: (context, index) {

                return Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3.0.w,vertical: 2.h),
                  child: Column(
                    children: [
                      Card(
                        child: ExpansionTile(
                          onExpansionChanged: (value){},
                          maintainState: false,
                          title: Text(theoryList?[index].title??"",style: AppTextStyles.h3().copyWith(fontSize: 13,fontWeight: FontWeight.w900),),
                          children: [Container(
                            margin: EdgeInsets.symmetric(horizontal: 2.w,vertical: 5.h),
                            padding: const EdgeInsets.all(8.0),
                            child: Text(theoryList?[index].description??""),
                          )],
                        ),
                      ),
                      if((index+1)==theoryList?.length && state.isPaginating)
                      const LoadingPagination(),
                    ],
                  ),
                );
              },
            );
          },
        ));
  }
}
