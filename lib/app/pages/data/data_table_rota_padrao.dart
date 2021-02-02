import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:structure_project/app/pages/forms/forms_controller.dart';

class DataTableRotaPadrao extends StatefulWidget {
  @override
  _DataTableRotaPadraoState createState() => _DataTableRotaPadraoState();
}

class _DataTableRotaPadraoState extends State<DataTableRotaPadrao> {
  final formsController = Modular.get<FormsController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (BuildContext context) {
          if (formsController.rotapadraos.error != null) {
            return Center(
              child: RaisedButton(
                child: Text('Pressuie Novamente'),
                onPressed: () {
                  formsController.fatchRotapadrao();
                },
              ),
            );
          }
          if (formsController.rotapadraos.value == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          var list = formsController.rotapadraos.value;
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: DataTable(
                  decoration: BoxDecoration(),
                  columns: [
                    DataColumn(
                      label: Text('Código da Rota'),
                    ),
                    DataColumn(
                      label: Text('Nome da Rota'),
                    ),
                    DataColumn(
                      label: Text('Dia da Semana'),
                    ),
                    DataColumn(
                      label: Text('Veículo'),
                    ),
                    DataColumn(
                      label: Text('Qtd. Max Supervisor'),
                    ),
                    DataColumn(
                      label: Text('Qtd. Max Motorista'),
                    ),
                    DataColumn(
                      label: Text('Qtd. Max Motorista/Operador '),
                    ),
                    DataColumn(
                      label: Text('Qtd. Max Ajudante'),
                    ),
                    DataColumn(
                      label: Text('Qtd. Max Ajudante/Operdador'),
                    ),
                    DataColumn(
                      label: Text('Qtd. Max Operador'),
                    ),
                  ],
                  rows: list
                      .map((data) => DataRow(
                            cells: [
                              DataCell(Text(data.codigo_rota)),
                              DataCell(Text(data.nome_rota)),
                              DataCell(Text(data.dia_semana)),
                              DataCell(Text(data.veiculo)),
                              DataCell(Text(data.qtd_supervisor)),
                              DataCell(Text(data.qtd_motorista)),
                              DataCell(Text(data.qtd_motorista_operador)),
                              DataCell(Text(data.qtd_ajudante)),
                              DataCell(Text(data.qtd_ajudante_operador)),
                              DataCell(Text(data.qtd_operador)),
                            ],
                          ))
                      .toList(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}