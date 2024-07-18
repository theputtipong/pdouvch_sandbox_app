import 'package:flutter/material.dart';

class SettingsServ {
  Future<ThemeMode> themeMode() async => ThemeMode.system;

  Future<void> updateThemeMode(ThemeMode theme) async {}
}
