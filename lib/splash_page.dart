import 'package:flutter/material.dart';
import 'package:jadu_imd/providers/splash_provider.dart';
import 'package:jadu_imd/widgets.dart';

final vm = SplashViewModel();

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {



  @override
  Widget build(BuildContext context) {
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

  @override
  void initState() {
    super.initState();
    vm.onInit();
  }
}




