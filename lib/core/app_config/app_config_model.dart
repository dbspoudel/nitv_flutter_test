import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_config_model.freezed.dart';

@freezed
class AppConfigModel with _$AppConfigModel {
  const AppConfigModel._();

  const factory AppConfigModel({
    required ThemeMode themeMode,
    required String baseUrl,
    required String newsApiKey,
  }) = _AppConfigModel;
}
