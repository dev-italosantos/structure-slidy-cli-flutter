import 'package:flutter/src/material/data_table.dart';

class RotaPadraoModel {
  final String codigo_rota;
  final String nome_rota;
  final String dia_semana;
  final String veiculo;
  final String qtd_supervisor;
  final String qtd_motorista;
  final String qtd_motorista_operador;
  final String qtd_ajudante;
  final String qtd_ajudante_operador;
  final String qtd_operador;

  RotaPadraoModel(
      {this.codigo_rota,
      this.nome_rota,
      this.dia_semana,
      this.veiculo,
      this.qtd_supervisor,
      this.qtd_motorista,
      this.qtd_motorista_operador,
      this.qtd_ajudante,
      this.qtd_ajudante_operador,
      this.qtd_operador
      });
}
