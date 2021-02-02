import 'package:mobx/mobx.dart';
import 'package:structure_project/app/shared/models/rota_padrao_model.dart';
import 'package:structure_project/app/shared/models/vehicle_model.dart';
import 'package:structure_project/app/shared/models/week_date_model.dart';
import 'package:structure_project/app/shared/repositories/rota_padrao_repository.dart';
import 'package:structure_project/app/shared/repositories/vehicle_repository.dart';
import 'package:structure_project/app/shared/repositories/week_date_repository.dart';
part 'forms_controller.g.dart';

class FormsController = _FormsControllerBase with _$FormsController;

abstract class _FormsControllerBase with Store {
  final RotaPadraoRepository repository;
  final WeekDateRepository repositoryweekdate;
  final VehicleRepository repositoryvehicle;

  @observable
  ObservableFuture<List<RotaPadraoModel>> rotapadraos;
  ObservableFuture<List<WeekDateModel>> weekdate;
  ObservableFuture<List<VehicleModel>> vehicle;

  _FormsControllerBase(this.repository, this.repositoryweekdate, this.repositoryvehicle ) {
    fatchRotapadrao();
    fatchWeekDate();
    fatchVehicle();
  }
  @action
  fatchRotapadrao() {
    rotapadraos = repository.getAllRotaPadrao().asObservable();
  }

  fatchWeekDate() {
    weekdate = repositoryweekdate.getAllWeekData().asObservable();
  }

  fatchVehicle() {
    vehicle = repositoryvehicle.getAllVehicle().asObservable();
  }
}
