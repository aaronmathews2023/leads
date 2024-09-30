
import 'package:leads/core/singleton/singleton_classes.dart';
import 'package:leads/domain/entities/home_screen_model/learners_practice_test_models/practice_question_model/practice_question_model.dart';
import 'package:leads/domain/entities/home_screen_model/theory_paper_model/theory_paper_model.dart';
import 'package:leads/infrastructure/datasources/remote/api/api.dart';
import 'package:leads/infrastructure/datasources/remote/dio_api_service/dio_api_service.dart';
import 'package:leads/infrastructure/datasources/remote/endpoints/endpoints.dart';
import 'package:leads/utils/logger/logger.dart';

class LearnersPracticeTestRepo {
  ApiService apiService = locator<DioApiService>();

  Future<PracticeQuestionModel?> getQuestionsPracticeTest({
    required int page,String? stateId
  }) async {
    try {
      const url = EndPoints.getLearnersPracticeTest;
      final response = await apiService.get("$url?state=$stateId&page=$page&pagesize=10");
      if (response.statusCode == 200 || response.statusCode == 201) {
        return PracticeQuestionModel.fromJson(response.data);
      } else {
        return null;
      }
    } catch (e) {
      AppLogger.e(e);
      return null;
    }
    
  }
 Future<LeadsTheoryModel?> submitPracticeTest({
   required Map<String,dynamic> data
  }) async {
    try {
     
      final response = await apiService.post(EndPoints.submitPracticeTest,data: data);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return LeadsTheoryModel.fromJson(response.data);
      } else {
        return null;
      }
    } catch (e) {
      AppLogger.e(e);
      return null;
    }
    
  }


}
