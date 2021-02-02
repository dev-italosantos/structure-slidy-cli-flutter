import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:structure_project/app/app_controller.dart';
import 'package:structure_project/app/pages/forms/forms_controller.dart';
import 'package:structure_project/app/pages/home/home_page.dart';
import 'package:structure_project/app/shared/repositories/rota_padrao_repository.dart';
import 'package:structure_project/app/shared/repositories/vehicle_repository.dart';
import 'package:structure_project/app/shared/repositories/week_date_repository.dart';
import 'package:structure_project/app/shared/utils/constrats.dart';

import 'app_controller.dart';
import 'app_widget.dart';

class AppModule extends MainModule {
  @override
  // TODO: implement binds
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => HomePage()),
        Bind((i) => FormsController(i.get<RotaPadraoRepository>(),
            i.get<WeekDateRepository>(), i.get<VehicleRepository>())),
        Bind((i) => RotaPadraoRepository(i.get<Dio>())),
        Bind((i) => WeekDateRepository(i.get<Dio>())),
        Bind((i) => VehicleRepository(i.get<Dio>())),
        Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),
      ];
  @override
  // TODO: implement routers
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, args) => HomePage()),
      ];
  @override
  // TODO: implement bootstrap
  Widget get bootstrap => AppWidget();
}
