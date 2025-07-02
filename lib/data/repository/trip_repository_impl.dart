import 'package:codelab_tj/data/remote/trip_remote_data_source.dart';
import 'package:codelab_tj/domain/model/filter_model.dart';
import 'package:codelab_tj/domain/model/trip_model.dart';
import 'package:codelab_tj/domain/repository/trip_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TripRepository)
class TripRepositoryImpl implements TripRepository {
  const TripRepositoryImpl(this._remote);

  final TripRemoteDataSource _remote;

  @override
  Future<List<TripModel>> getTrips(FilterModel filter) async {
    final response = await _remote.getTrips(
      offset: filter.offset,
      limit: filter.limit,
      sort: filter.sort,
      routeIds: filter.routeIds,
    );

    return response.data;
  }
}
