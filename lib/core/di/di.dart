import 'package:codelab_tj/core/di/di.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.I;

@injectableInit
void configureDependencies() => getIt.init();
