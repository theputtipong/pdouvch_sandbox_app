import 'package:flutter/material.dart';
import 'src/app.dart';
import 'src/settings/settings.dart';

void main() async {
  final settingsController = SettingsCtl(SettingsServ());

  await settingsController.loadSettings();

  runApp(MyApp(settingsController: settingsController));
}
