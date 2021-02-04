import 'package:flutter/material.dart';
import 'package:structure_project/app/modules/home/data/data_table_general.dart';
import 'package:structure_project/app/modules/home/data/data_table_vehicle.dart';
import 'package:structure_project/app/modules/home/data/data_table_week_date.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FormsPage(),
  ));
}

class FormsPage extends StatefulWidget {
  //GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  _FormsPageState createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  
  final dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Código da Rota',
                      //labelStyle: TextStyle(color: Colors.blue),
                      hintText: 'Informe o código da rota!',
                      //border: OutlineInputBorder(),
                    ),
                    style: TextStyle(fontSize: 15.0),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Plese enter some text!";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'Nome da Rota',
                      //labelStyle: TextStyle(color: Colors.blue),
                      hintText: 'Informe o nome da rota!',
                      //border: OutlineInputBorder(),
                    ),
                    style: TextStyle(fontSize: 15.0),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Plese enter some text!";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            Container(width: 1200.0, height: 60.0, child: DataTableWeekDate()),
            Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'Veículo',
                      //labelStyle: TextStyle(color: Colors.blue),
                      hintText: 'Informe um veículo válido!',
                      //border: OutlineInputBorder(),
                    ),
                    onTap: () {
                      showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Lista de Cadastro: Veículos"),
                              content: Column(children: [
                                TextFormField(
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                    labelText: 'Procurar',
                                    hintText: 'Pesquisar Veículos Cadastrados',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                Container(
                                  width: 1250,
                                  height: 480,
                                  margin: EdgeInsets.all(8.0),
                                  child: Container(
                                    color: Colors.grey[350],
                                    child: DataTableVehicle(),
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: Container(
                                              width: 130.0,
                                              height: 30.0,
                                              child: RaisedButton(
                                                onPressed: () {
                                                  //if (_formkey.currentState.validate()) {}
                                                },
                                                child: Text(
                                                  "Selecionar",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15.0),
                                                ),
                                                color: Colors.grey[350],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: Container(
                                              width: 130.0,
                                              height: 30.0,
                                              child: RaisedButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                  //if (_formkey.currentState.validate()) {}
                                                },
                                                child: Text(
                                                  "Cancelar",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15.0),
                                                ),
                                                color: Colors.grey[350],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: Container(
                                              width: 130.0,
                                              height: 30.0,
                                              child: RaisedButton(
                                                onPressed: () {
                                                  //if (_formkey.currentState.validate()) {}
                                                },
                                                child: Text(
                                                  "Novo",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15.0),
                                                ),
                                                color: Colors.grey[350],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ]),
                            );
                          });
                    },
                    style: TextStyle(fontSize: 15.0),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Plese enter some text!";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Qtd. Max Supervisor',
                      //labelStyle: TextStyle(color: Colors.blue),
                      hintText: 'Informe a quantidade máxima de supervisor!',
                      //border: OutlineInputBorder(),
                    ),
                    style: TextStyle(fontSize: 15.0),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Plese enter some text!";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Qtd. Max Motorista',
                      //labelStyle: TextStyle(color: Colors.blue),
                      hintText: 'Informe a quantidade máxima de motoristas!',
                      //border: OutlineInputBorder(),
                    ),
                    style: TextStyle(fontSize: 15.0),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Plese enter some text!";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: Column(children: [
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Qtd. Max Motorista/Operador',
                    //labelStyle: TextStyle(color: Colors.blue),
                    hintText:
                        'Informe a quantidade máxima de motoristas/operadores!',
                    //border: OutlineInputBorder(),
                  ),
                  style: TextStyle(fontSize: 15.0),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Plese enter some text!";
                    }
                    return null;
                  },
                ),
              ]),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: Column(children: [
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Qtd. Max Ajudante',
                    //labelStyle: TextStyle(color: Colors.blue),
                    hintText:
                        'Informe a quantidade máxima de motoristas/operadores!',
                    //border: OutlineInputBorder(),
                  ),
                  style: TextStyle(fontSize: 15.0),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Plese enter some text!";
                    }
                    return null;
                  },
                ),
              ]),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: Column(children: [
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Qtd. Max Ajudante/Operador',
                    //labelStyle: TextStyle(color: Colors.blue),
                    hintText: 'Informe a quantidade máxima de ajudade!',
                    //border: OutlineInputBorder(),
                  ),
                  style: TextStyle(fontSize: 15.0),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Plese enter some text!";
                    }
                    return null;
                  },
                ),
              ]),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: Column(children: [
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Qtd. Max Operador',
                    //labelStyle: TextStyle(color: Colors.blue),
                    hintText: 'Informe a quantidade máxima de operadr!',
                    //border: OutlineInputBorder(),
                  ),
                  style: TextStyle(fontSize: 15.0),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Plese enter some text!";
                    }
                    return null;
                  },
                ),
              ]),
            ),
            Container(
              child: Container(
                child: DataTableGeneral(),
              ),
            ),
            // Container(
            //     child: Container(
            //   width: 1200.0,
            //   height: 500.0,
            //   child: DataTableWeekDate(),
            // )),
          ],
        ),
      ),
    );
  }
}
