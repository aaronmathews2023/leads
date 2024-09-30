
import 'package:leads/core/singleton/singleton_classes.dart';
import 'package:leads/domain/entities/home_screen_model/question_bank_model/question_bank_model.dart';
import 'package:leads/domain/entities/home_screen_model/theory_paper_model/theory_paper_model.dart';
import 'package:leads/infrastructure/datasources/remote/api/api.dart';
import 'package:leads/infrastructure/datasources/remote/dio_api_service/dio_api_service.dart';
import 'package:leads/infrastructure/datasources/remote/endpoints/endpoints.dart';
import 'package:leads/utils/logger/logger.dart';

class QuestionBanksRepo {
  ApiService apiService = locator<DioApiService>();

  Future<QuestionBankModel?> getQuestionBanks({
    required int page,String? stateId
  }) async {
    try {
      final url = '${EndPoints.getQuestionBank}?state=66ea81d4038acc96425e19ac&page=$page&pagesize=12';
      final response = await apiService.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return QuestionBankModel.fromJson(response.data);
      } else {
        return null;
      }
    } catch (e) {
      AppLogger.e(e);
      return null;
    }
  }


}
