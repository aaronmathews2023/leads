
import 'package:leads/core/singleton/singleton_classes.dart';
import 'package:leads/domain/entities/home_screen_model/theory_paper_model/theory_paper_model.dart';
import 'package:leads/infrastructure/datasources/remote/api/api.dart';
import 'package:leads/infrastructure/datasources/remote/dio_api_service/dio_api_service.dart';
import 'package:leads/infrastructure/datasources/remote/endpoints/endpoints.dart';
import 'package:leads/utils/logger/logger.dart';

class TheoryPaperRepo {
  ApiService apiService = locator<DioApiService>();

  Future<LeadsTheoryModel?> getTheoryPapers({
    required int page,
  }) async {
    try {
      final url = '${EndPoints.getTheoryPapers}?page=$page&pagesize=12';
      final response = await apiService.get(url);
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
