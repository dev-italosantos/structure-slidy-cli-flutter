import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:structure_project/app/app_controller.dart';
import 'package:structure_project/app/shared/utils/constrats.dart';

import 'app_controller.dart';
import 'app_widget.dart';
import 'modules/home/forms/forms_module.dart';

class AppModule extends MainModule {
  @override
  // TODO: implement binds
  List<Bind> get binds => [
        Bind((i) => AppController()),
       
        Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),
      ];
  @override
  // TODO: implement routers
  List<ModularRouter> get routers => [
        ModularRouter('/', module: FormsModule()),
      ];
  @override
  // TODO: implement bootstrap
  Widget get bootstrap => AppWidget();
}
