import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'bloc/ui/map/map.dart';
import 'provider/ui/mlkit_face_detection/mlkit_face_detection.dart';
import 'settings/settings.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.settingsController,
  });

  final SettingsCtl settingsController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      child: ListenableBuilder(
        listenable: settingsController,
        builder: (BuildContext context, Widget? child) {
          return RepositoryProvider(
            create: (context) => MapController(),
            child: MultiProvider(
              providers: [ChangeNotifierProvider<MLkitFaceDetectionCtl>(create: (_) => MLkitFaceDetectionCtl())],
              child: GetMaterialApp(
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: const [Locale('en', '')],
                theme: ThemeData(),
                darkTheme: ThemeData.dark(),
                themeMode: settingsController.themeMode,
                onGenerateRoute: (RouteSettings routeSettings) {
                  return MaterialPageRoute<void>(
                    settings: routeSettings,
                    builder: (BuildContext context) {
                      switch (routeSettings.name) {
                        case SettingsView.routeName:
                          return SettingsView(controller: settingsController);
                        case MapView.routeName:
                          return const MapView();
                        default:
                          return const FaceDetectorView();
                      }
                    },
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
