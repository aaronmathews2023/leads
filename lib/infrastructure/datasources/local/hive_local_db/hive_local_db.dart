
import 'package:hive/hive.dart';
import 'package:leads/domain/entities/home_screen_model/theory_paper_model/theory_paper_model.dart';

abstract class BaseLocalStorageRepository {

  Future<Box?> openBox(String boxName);
  Future<Box?> openTheoryBox(String boxName);

  Future<LeadsTheoryModel?>? getTheoryPapers();
    Future<bool?> addTheoryPapers(
    LeadsTheoryModel? theoryPapers,
  );

  Future<void> clearBox(Box box);
  Future<void> clearLogout();
}
