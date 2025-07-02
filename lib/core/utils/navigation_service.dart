import 'package:flutter/cupertino.dart' as cp;
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class NavigationService {
  final navKey = GlobalKey<NavigatorState>();

  Future<T?> push<T extends Object?>(Widget screen) {
    return navKey.currentState!.push(
      cp.CupertinoPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  void pop<T extends Object?>([T? result]) => navKey.currentState!.pop(result);
}
