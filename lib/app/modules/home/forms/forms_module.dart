import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:structure_project/app/shared/repositories/rota_padrao_repository.dart';
import 'package:structure_project/app/shared/repositories/standard_route_repository.dart';
import 'package:structure_project/app/shared/repositories/vehicle_repository.dart';
import 'package:structure_project/app/shared/repositories/week_date_repository.dart';

import '../home_page.dart';
import 'forms_controller.dart';

class FormsModule extends ChildModule {
  @override
  // TODO: implement binds
  List<Bind> get binds => [
        Bind((i) => HomePage()),
        Bind((i) => FormsController(
          i.get<RotaPadraoRepository>(),
          i.get<WeekDateRepository>(),
          i.get<VehicleRepository>(),
          i.get<StandardRouteRepository>())),
        Bind((i) => RotaPadraoRepository(i.get<Dio>())),
        Bind((i) => WeekDateRepository(i.get<Dio>())),
        Bind((i) => VehicleRepository(i.get<Dio>())),
        Bind((i) => StandardRouteRepository(i.get<Dio>()))
      ];

  @override
  // TODO: implement routers
  List<ModularRouter> get routers => [
     ModularRouter('/', child: (_, args) => HomePage()),
  ];
}
