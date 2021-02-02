// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forms_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FormsController on _FormsControllerBase, Store {
  final _$rotapadraosAtom = Atom(name: '_FormsControllerBase.rotapadraos');

  @override
  ObservableFuture<List<RotaPadraoModel>> get rotapadraos {
    _$rotapadraosAtom.reportRead();
    return super.rotapadraos;
  }

  @override
  set rotapadraos(ObservableFuture<List<RotaPadraoModel>> value) {
    _$rotapadraosAtom.reportWrite(value, super.rotapadraos, () {
      super.rotapadraos = value;
    });
  }

  final _$_FormsControllerBaseActionController =
      ActionController(name: '_FormsControllerBase');

  @override
  dynamic fatchRotapadrao() {
    final _$actionInfo = _$_FormsControllerBaseActionController.startAction(
        name: '_FormsControllerBase.fatchRotapadrao');
    try {
      return super.fatchRotapadrao();
    } finally {
      _$_FormsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
rotapadraos: ${rotapadraos}
    ''';
  }
}
