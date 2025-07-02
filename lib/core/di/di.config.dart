// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:codelab_tj/core/di/register_data_source.dart' as _i485;
import 'package:codelab_tj/core/di/register_module.dart' as _i267;
import 'package:codelab_tj/core/utils/navigation_service.dart' as _i269;
import 'package:codelab_tj/data/api/custom_interceptor.dart' as _i448;
import 'package:codelab_tj/data/api/mbta_api.dart' as _i282;
import 'package:codelab_tj/data/remote/route_remote_data_source.dart' as _i574;
import 'package:codelab_tj/data/remote/trip_remote_data_source.dart' as _i370;
import 'package:codelab_tj/data/remote/vehicle_remote_data_source.dart'
    as _i651;
import 'package:codelab_tj/data/repository/route_repository_impl.dart' as _i918;
import 'package:codelab_tj/data/repository/trip_repository_impl.dart' as _i586;
import 'package:codelab_tj/data/repository/vehicle_repository_impl.dart'
    as _i625;
import 'package:codelab_tj/domain/repository/route_repository.dart' as _i751;
import 'package:codelab_tj/domain/repository/trip_repository.dart' as _i247;
import 'package:codelab_tj/domain/repository/vehicle_repository.dart' as _i50;
import 'package:codelab_tj/presentation/features/vehicle/cubit/vehicle_cubit.dart'
    as _i170;
import 'package:codelab_tj/presentation/features/vehicle_detail/cubit/vehicle_detail_cubit.dart'
    as _i114;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i528;
import 'package:pull_to_refresh/pull_to_refresh.dart' as _i787;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    final registerDataSource = _$RegisterDataSource();
    gh.factory<_i787.RefreshController>(() => registerModule.refreshController);
    gh.lazySingleton<_i651.VehicleRemoteDataSource>(
        () => registerDataSource.vehicleRemoteDataSource);
    gh.lazySingleton<_i574.RouteRemoteDataSource>(
        () => registerDataSource.routeRemoteDataSource);
    gh.lazySingleton<_i370.TripRemoteDataSource>(
        () => registerDataSource.tripRemoteDataSource);
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i528.PrettyDioLogger>(
        () => registerModule.prettyDioLogger);
    gh.lazySingleton<_i269.NavigationService>(() => _i269.NavigationService());
    gh.lazySingleton<_i448.CustomInterceptor>(() => _i448.CustomInterceptor());
    gh.lazySingleton<_i247.TripRepository>(
        () => _i586.TripRepositoryImpl(gh<_i370.TripRemoteDataSource>()));
    gh.lazySingleton<_i282.MbtaApi>(() => _i282.MbtaApi(
          gh<_i361.Dio>(),
          gh<_i448.CustomInterceptor>(),
          gh<_i528.PrettyDioLogger>(),
        ));
    gh.lazySingleton<_i50.VehicleRepository>(
        () => _i625.VehicleRepositoryImpl(gh<_i651.VehicleRemoteDataSource>()));
    gh.lazySingleton<_i751.RouteRepository>(
        () => _i918.RouteRepositoryImpl(gh<_i574.RouteRemoteDataSource>()));
    gh.factory<_i114.VehicleDetailCubit>(
        () => _i114.VehicleDetailCubit(gh<_i50.VehicleRepository>()));
    gh.factory<_i170.VehicleCubit>(() => _i170.VehicleCubit(
          gh<_i50.VehicleRepository>(),
          gh<_i751.RouteRepository>(),
          gh<_i247.TripRepository>(),
          gh<_i787.RefreshController>(),
          gh<_i269.NavigationService>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i267.RegisterModule {}

class _$RegisterDataSource extends _i485.RegisterDataSource {}
