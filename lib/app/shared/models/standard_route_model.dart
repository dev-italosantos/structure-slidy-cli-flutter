import 'package:flutter/src/material/data_table.dart';

class StandardRouteModel {
  final String codigo_contrato;
  final String codigo_coleta;
  final String nome_cliente;
  final String endereco;
  final String servicos;
  final String prioridade;
  final String semana_mes;
  final String dia_semana;

  StandardRouteModel(
      {this.codigo_contrato,
      this.codigo_coleta,
      this.nome_cliente,
      this.endereco,
      this.servicos,
      this.prioridade,
      this.semana_mes,
      this.dia_semana
      });
}
