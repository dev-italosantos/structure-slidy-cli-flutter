import 'package:dio/dio.dart';
import 'package:structure_project/app/shared/models/rota_padrao_model.dart';

class RotaPadraoRepository {
  final Dio dio;

  RotaPadraoRepository(this.dio);

  Future<List<RotaPadraoModel>> getAllRotaPadrao() async {
    var response = await dio.get('/932b6450-d561-4d48-9442-1717b931be2c');
    List<RotaPadraoModel> list = [];

    for (var json in (response.data['results'] as List)) {
      RotaPadraoModel model = RotaPadraoModel(
          codigo_rota: json['codigo_rota'],
          nome_rota: json['nome_rota'],
          dia_semana: json['dia_semana'],
          veiculo: json['veiculo'],
          qtd_supervisor: json['qtd_supervisor'],
          qtd_motorista: json['qtd_motorista'],
          qtd_motorista_operador: json['qtd_motorista_operador'],
          qtd_ajudante: json['qtd_ajudante'],
          qtd_ajudante_operador: json['qtd_ajudante_operador'],
          qtd_operador: json['qtd_operador']);
      list.add(model);
    }
    return list;
  }
}
