import 'package:codelab_tj/domain/model/filter_model.dart';
import 'package:codelab_tj/domain/model/trip_model.dart';

abstract class TripRepository {
  Future<List<TripModel>> getTrips(FilterModel filter);
}
