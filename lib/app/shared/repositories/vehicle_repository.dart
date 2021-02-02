import 'package:dio/dio.dart';
import 'package:structure_project/app/shared/models/vehicle_model.dart';

class VehicleRepository{
  final Dio dio;

  VehicleRepository(this.dio);
  
  Future<List<VehicleModel>> getAllVehicle() async {
    var response = await dio.get('/19adc066-52a3-4b36-9fac-66a19f4dafbe');
    List<VehicleModel> list = [];
    
    for (var json in (response.data['results'] as List)) {
      VehicleModel model = VehicleModel(
        code: json['code'],
        name: json['name'],
        modelo: json['modelo'],
        tipo: json['tipo'],
        motivo_baixa: json['motivo_baixa'],
        placa: json['placa'],
        ano: json['ano'],
        chassi: json['chassi'],
        data_baixa: json['data_baixa'],
        centro_custo: json['centro_custo']);
      list.add(model);
    }
    return list;
  }
}