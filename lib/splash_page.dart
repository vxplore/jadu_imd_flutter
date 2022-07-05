import 'package:flutter/material.dart';
import 'package:jadu_imd/providers/splash_provider.dart';
import 'package:jadu_imd/widgets.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final splashViewModel = Provider.of<SplashProvider>(context);
    return Scaffold(
      body: Center(
        child: Wrap(
          children: [
            Column(
              children: [
                SplashAnimation(),
                SplashAppName(),
                SplashAppFullName(),
                Space24(),
                Loader()
              ],
            ),
          ],
        ),
      ),
    );
  }
}




