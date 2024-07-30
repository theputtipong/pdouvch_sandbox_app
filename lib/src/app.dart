import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      bottom: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
