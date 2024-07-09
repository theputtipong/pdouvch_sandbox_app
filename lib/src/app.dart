import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart'
    show GlobalCupertinoLocalizations, GlobalMaterialLocalizations, GlobalWidgetsLocalizations;
import 'map_feature/map_feature.dart';
import 'settings/settings.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.settingsController,
  });

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: settingsController,
      builder: (BuildContext context, Widget? child) {
        return RepositoryProvider(
          create: (context) => MapController(),
          child: Builder(
            builder: (context) {
              final mapController = RepositoryProvider.of<MapController>(context);
              mapController.locationCubit.startTracking();
              mapController.timerCubit.startTimer();

              return MaterialApp(
                restorationScopeId: 'app',
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: const [Locale('en', '')],
                onGenerateTitle: (BuildContext context) => AppLocalizations.of(context)!.appTitle,
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
                        default:
                          return const MapView();
                      }
                    },
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
