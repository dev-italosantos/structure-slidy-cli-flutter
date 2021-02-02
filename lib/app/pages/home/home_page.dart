import 'package:flutter/material.dart';
import 'package:structure_project/app/pages/data/data_table_week_date.dart';
import 'package:structure_project/app/pages/forms/forms_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agna - TransAgua",
            style: TextStyle(color: Colors.white, fontSize: 18.0)),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            tooltip: 'Refresh',
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.menu_rounded),
          tooltip: 'Menu',
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(130.0, 30.0, 130.0, 30.0),
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                margin: EdgeInsets.all(10.0),
                padding: const EdgeInsets.fromLTRB(50.0, 30.0, 50.0, 30.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 10.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          child: Text(
                                            'Rota Padrão',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 25.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Column(children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 3),
                                              child: Container(
                                                width: 40.0,
                                                height: 40.0,
                                                color: Colors.grey[350],
                                                child: IconButton(
                                                  icon:
                                                      Icon(Icons.skip_previous),
                                                  tooltip: 'skip_previous',
                                                  onPressed: () {},
                                                ),
                                              ),
                                            ),
                                          ]),
                                          Column(children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 3),
                                              child: Container(
                                                width: 40.0,
                                                height: 40.0,
                                                color: Colors.grey[350],
                                                child: IconButton(
                                                  icon: Icon(Icons
                                                      .keyboard_arrow_left),
                                                  tooltip: 'arrow_left',
                                                  onPressed: () {},
                                                ),
                                              ),
                                            ),
                                          ]),
                                          Column(children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 3),
                                              child: Container(
                                                width: 40.0,
                                                height: 40.0,
                                                color: Colors.grey[350],
                                                child: IconButton(
                                                  icon: Icon(Icons
                                                      .keyboard_arrow_right),
                                                  tooltip: 'arrow_right',
                                                  onPressed: () {},
                                                ),
                                              ),
                                            ),
                                          ]),
                                          Column(children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15),
                                              child: Container(
                                                width: 40.0,
                                                height: 40.0,
                                                color: Colors.grey[350],
                                                child: IconButton(
                                                  icon: Icon(Icons.skip_next),
                                                  tooltip: 'skip_next',
                                                  onPressed: () {},
                                                ),
                                              ),
                                            ),
                                          ]),
                                          Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 3),
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  color: Colors.grey[350],
                                                  child: IconButton(
                                                    icon: Icon(Icons.search),
                                                    tooltip: 'search',
                                                    onPressed: () {},
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 3),
                                              child: Container(
                                                width: 40.0,
                                                height: 40.0,
                                                color: Colors.grey[350],
                                                child: IconButton(
                                                  icon: Icon(Icons.edit),
                                                  tooltip: 'edit',
                                                  onPressed: () {},
                                                ),
                                              ),
                                            ),
                                          ]),
                                          Column(children: [
                                            Container(
                                              width: 40.0,
                                              height: 40.0,
                                              color: Colors.grey[350],
                                              child: IconButton(
                                                icon: Icon(Icons.add),
                                                tooltip: 'Add',
                                                onPressed: () {},
                                              ),
                                            ),
                                          ]),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Center(
                        child: FormsPage(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
