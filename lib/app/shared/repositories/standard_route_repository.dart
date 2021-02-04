import 'package:dio/dio.dart';
import 'package:structure_project/app/shared/models/standard_route_model.dart';

class StandardRouteRepository{
  final Dio dio;

  StandardRouteRepository(this.dio);

  Future<List<StandardRouteModel>> getAllStandardRoute() async {
    var response = await dio.get('/a55584f0-ac0f-4c53-aa8e-2ae421804981');
    List<StandardRouteModel> list = [];
    
    for(var json in (response.data['results'] as List)) {
      StandardRouteModel model = StandardRouteModel(
        codigo_contrato: json['codigo_contrato'],
        codigo_coleta: json['codigo_coleta'],
        nome_cliente: json['nome_cliente'],
        endereco: json['endereco'],
        servicos: json['servicos'],
        prioridade: json['prioridade'],
        semana_mes: json['semana_mes'],
        dia_semana: json['dia_semana']);
      list.add(model);
    }
    return list;
  }
}




//import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';
// import 'package:flutter_modular/flutter_modular.dart';
// import 'package:structure_project/app/modules/home/forms/forms_controller.dart';

// class DataTableStandardRoute extends StatefulWidget {
//   @override
//   _DataTableStandardRouteState createState() => _DataTableStandardRouteState();
// }

// class _DataTableStandardRouteState extends State<DataTableStandardRoute> {
//   final formsController = Modular.get<FormsController>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Observer(
//         builder: (BuildContext context) {
//           if (formsController.standardroute.error != null) {
//             return Center(
//               child: RaisedButton(
//                 child: Text('Pressuie Novamente'),
//                 onPressed: () {
//                   formsController.fatchStandardRoute();
//                 },
//               ),
//             );
//           }
//           if (formsController.standardroute.value == null) {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//           var list = formsController.standardroute.value;
//           return SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: SingleChildScrollView(
//               child: Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.grey),
//                 ),
//                 child: DataTable(
//                   decoration: BoxDecoration(),
//                   columns: [
//                     DataColumn(
//                       label: Text('Cód. de Contrato'),
//                     ),
//                     DataColumn(
//                       label: Text('Cód. de Coleta'),
//                     ),
//                     DataColumn(
//                       label: Text('Nome do Cliente'),
//                     ),
//                     DataColumn(
//                       label: Text('Endereço'),
//                     ),
//                     DataColumn(
//                       label: Text('Serviços'),
//                     ),
//                     DataColumn(
//                       label: Text('Prioridade'),
//                     ),
//                     DataColumn(
//                       label: Text('Semana do Mês '),
//                     ),
//                     DataColumn(
//                       label: Text('Dia da Semana'),
//                     ),
//                   ],
//                   rows: list
//                       .map((data) => DataRow(
//                             cells: [
//                               DataCell(Text(data.codigo_contrato)),
//                               DataCell(Text(data.codigo_coleta)),
//                               DataCell(Text(data.nome_cliente)),
//                               DataCell(Text(data.endereco)),
//                               DataCell(Text(data.servico)),
//                               DataCell(Text(data.prioridade)),
//                               DataCell(Text(data.semana_mes)),
//                               DataCell(Text(data.dia_semana)),
//                             ],
//                           ))
//                       .toList(),
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }






