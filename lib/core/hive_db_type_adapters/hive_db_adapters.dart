
import 'package:hive/hive.dart';
import 'package:leads/domain/entities/home_screen_model/theory_paper_model/theory_paper_model.dart';

setupHiveAdapters() async {
  Hive
    ..registerAdapter(LeadsTheoryModelAdapter())
    ..registerAdapter(TheoryDataAdapter())
     ..registerAdapter(TheoryResultAdapter());
    
}
// TOTAL ADAPTERS COUNT--------> 3  (To Identify Adapters Number Correctly Please Increment It If Registering a New Adapter)
