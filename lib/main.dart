import 'package:fashion_app/app_bloc_observer.dart';
import 'package:fashion_app/core/di/services_locator.dart';
import 'package:fashion_app/core/services/shared_preferences_singleton.dart';
import 'package:fashion_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  await Prefs.init();
  Bloc.observer = AppBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashView());
  }
}
