import 'package:flutter/material.dart';
import 'package:jadu_imd/providers/splash_provider.dart';
import 'di.dart';
import 'package:provider/provider.dart';

import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initAppModule();
  runApp(
      const MyApp()
  );
}