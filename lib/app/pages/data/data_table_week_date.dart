import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:structure_project/app/pages/forms/forms_controller.dart';

class DataTableWeekDate extends StatefulWidget {
  @override
  _DataTableWeekDateState createState() => _DataTableWeekDateState();
}

class _DataTableWeekDateState extends State<DataTableWeekDate> {
  final formsController = Modular.get<FormsController>();
  String _selectdWeekDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(builder: (BuildContext context) {
        if (formsController.weekdate.error != null) {
          return Center(
            child: RaisedButton(
              child: Text('Pressuie Novamente'),
              onPressed: () {
                formsController.fatchWeekDate();
              },
            ),
          );
        }
        if (formsController.weekdate.value == null) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        var list = formsController.weekdate.value;
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: "Dia da Semana",
                  fillColor: Colors.black12,
                ),
                value: _selectdWeekDate,
                items: list.map<DropdownMenuItem<String>>((data) {
                  return DropdownMenuItem<String>(
                    value: data.dia_semana,
                    child: Text(data.dia_semana),
                  );
                }).toList(),
                onChanged: (String newValue) {
                  setState(() {
                    _selectdWeekDate = newValue;
                  });
                },
              ),
            ),
          ),
        );
      }),
    );
  }
}
