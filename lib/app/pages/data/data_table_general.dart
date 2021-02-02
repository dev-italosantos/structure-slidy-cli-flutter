import 'package:flutter/material.dart';
import 'package:structure_project/app/pages/data/data_table_vehicle.dart';
import 'data_table_rota_padrao.dart';

class DataTableGeneral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0),
      child: Container(
        child: Column(
          children: <Widget>[
            DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: Column(
                children: <Widget>[
                  Container(
                    width: 1200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: TabBar(
                            labelColor: Colors.blue,
                            unselectedLabelColor: Colors.black,
                            tabs: <Widget>[
                              Tab(text: 'Dias de Coleta'),
                              Tab(text: 'Tipos de Serviços'),
                            ],
                          ),
                        ),
                        Container(
                          height: 300,
                          child: TabBarView(
                            children: <Widget>[
                              Container(
                                color: Colors.grey[350],
                                child: DataTableRotaPadrao(),
                              ),
                              Container(
                                color: Colors.grey[350],
                                child: DataTableVehicle(),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Container(
                                width: 200.0,
                                height: 30.0,
                                child: RaisedButton(
                                  onPressed: () {
                                    //if (_formkey.currentState.validate()) {}
                                  },
                                  child: Text(
                                    "Remover Tipos de Serviços",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15.0),
                                  ),
                                  color: Colors.grey[350],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Container(
                    width: 130.0,
                    height: 30.0,
                    child: RaisedButton(
                      onPressed: () {
                        //if (_formkey.currentState.validate()) {}
                      },
                      child: Text(
                        "Adicionar",
                        style: TextStyle(color: Colors.black, fontSize: 15.0),
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
                        onPressed: () {},
                        child: Text(
                          "Cancelar",
                          style: TextStyle(color: Colors.black, fontSize: 15.0),
                        ),
                        color: Colors.grey[350]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
