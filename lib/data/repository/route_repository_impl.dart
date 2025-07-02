import 'package:codelab_tj/data/remote/route_remote_data_source.dart';
import 'package:codelab_tj/domain/model/filter_model.dart';
import 'package:codelab_tj/domain/model/route_model.dart';
import 'package:codelab_tj/domain/repository/route_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: RouteRepository)
class RouteRepositoryImpl implements RouteRepository {
  RouteRepositoryImpl(this._remote);

  final RouteRemoteDataSource _remote;

  @override
  Future<List<RouteModel>> getRoutes(FilterModel filter) async {
    final response = await _remote.getRoutes(
      offset: filter.offset,
      limit: filter.limit,
      sort: filter.sort,
    );

    return response.data;
  }
}
