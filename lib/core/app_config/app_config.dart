import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nitv_flutter_test/core/app_config/app_config_model.dart';
import 'package:nitv_flutter_test/core/app_config/flavor.dart';

part 'app_config.freezed.dart';
part 'app_config_state.dart';

@Singleton()
class AppConfig extends Cubit<AppConfigState> {
  late AppConfigModel configModel;
  AppConfig() : super(const LoadingState()) {
    _initialize();
  }



  Future<void> _initialize() async {
    configModel = AppConfigModel(
      themeMode: ThemeMode.system,
      baseUrl: FlavorConfig.baseURL,
      newsApiKey: "fbd297fa008040df9ddb4840890e1f04"
    );
    emit(IdleState(configModel));
  }
}
