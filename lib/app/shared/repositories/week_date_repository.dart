import 'package:dio/dio.dart';
import 'package:structure_project/app/shared/models/week_date_model.dart';

class WeekDateRepository {
  final Dio dio;

  WeekDateRepository(this.dio);

  Future<List<WeekDateModel>> getAllWeekData() async {
    var response = await dio.get('/22f47741-1482-4dfa-b3f7-b4962950db18');
    List<WeekDateModel> list = [];

    for (var json in (response.data['results'] as List)) {
      WeekDateModel model = WeekDateModel(dia_semana: json['dia_semana']);
      list.add(model);
    }
    return list;
  }
}
