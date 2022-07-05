import 'package:flutter/material.dart';
import 'package:jadu_imd/di.dart';
import 'package:jadu_imd/navigation_service.dart';
import '../app_settings.dart';
import '../constants.dart';
import '../routes.dart';

class SplashProvider with ChangeNotifier{
  var splash_done = false;
  var app_settings = instance<AppSettings>();

  SplashProvider(){
    initializeSplash();
  }

  void initializeSplash() async {
    if(splash_done){
      return;
    }
    splash_done = true;
    await Future.delayed(const Duration(seconds: Constants.splash_duration));
    var user_id = app_settings.userId;
    if(user_id==null || user_id==""){
      instance<NavigationService>().navigateTo(Routes.login);
    }
    else{
      instance<NavigationService>().navigateTo(Routes.home);
    }
  }
}