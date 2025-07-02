import 'package:codelab_tj/domain/model/filter_model.dart';
import 'package:codelab_tj/domain/model/route_model.dart';

abstract class RouteRepository {
  Future<List<RouteModel>> getRoutes(FilterModel filter);
}
