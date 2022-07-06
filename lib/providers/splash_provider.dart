import 'package:flutter/material.dart';
import 'package:jadu_imd/di.dart';
import 'package:jadu_imd/navigation_service.dart';
import 'package:mobx/mobx.dart';
import '../app_settings.dart';
import '../constants.dart';
import '../routes.dart';

// Include generated file
part 'splash_provider.g.dart';

// This is the class used by rest of your codebase
class SplashViewModel = _SplashViewModel with _$SplashViewModel;

// The store-class
abstract class _SplashViewModel with Store {
  AppSettings appSettings = instance<AppSettings>();
  NavigationService navigationService = instance<NavigationService>();
  @action
  onInit(){
    var userId = appSettings.userId;
    if(userId==null||userId==""){
      gotoLogin();
    }
    else{
      gotoHome();
    }
  }

  void gotoLogin() async {
    await Future.delayed(Duration(seconds: 3));
    navigationService.navigateTo(Routes.login);
  }

  void gotoHome() async {
    await Future.delayed(Duration(seconds: 3));
    navigationService.navigateTo(Routes.home);
  }
}