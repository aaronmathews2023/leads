
import 'package:hive/hive.dart';
import 'package:leads/domain/entities/home_screen_model/learners_practice_test_models/practice_submit_model/practice_submit_model.dart';
import 'package:leads/domain/entities/home_screen_model/theory_paper_model/theory_paper_model.dart';

setupHiveAdapters() async {
  Hive
    ..registerAdapter(LeadsTheoryModelAdapter())
    ..registerAdapter(TheoryDataAdapter())
     ..registerAdapter(TheoryResultAdapter())
        ..registerAdapter(LearnersPracticeSubmitModelAdapter())
           ..registerAdapter(PracticeDataAdapter());
    
}
// TOTAL ADAPTERS COUNT--------> 5  (To Identify Adapters Number Correctly Please Increment It If Registering a New Adapter)
