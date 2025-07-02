import 'package:codelab_tj/core/di/di.dart';
import 'package:codelab_tj/core/utils/navigation_service.dart';
import 'package:codelab_tj/presentation/features/vehicle/vehicle_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: getIt<NavigationService>().navKey,
      home: const VehicleScreen().provider(),
    );
  }
}
