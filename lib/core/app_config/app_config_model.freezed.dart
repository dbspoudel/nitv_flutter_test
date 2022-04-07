// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_config_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppConfigModelTearOff {
  const _$AppConfigModelTearOff();

  _AppConfigModel call(
      {required ThemeMode themeMode,
      required String baseUrl,
      required String newsApiKey}) {
    return _AppConfigModel(
      themeMode: themeMode,
      baseUrl: baseUrl,
      newsApiKey: newsApiKey,
    );
  }
}

/// @nodoc
const $AppConfigModel = _$AppConfigModelTearOff();

/// @nodoc
mixin _$AppConfigModel {
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  String get baseUrl => throw _privateConstructorUsedError;
  String get newsApiKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppConfigModelCopyWith<AppConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigModelCopyWith<$Res> {
  factory $AppConfigModelCopyWith(
          AppConfigModel value, $Res Function(AppConfigModel) then) =
      _$AppConfigModelCopyWithImpl<$Res>;
  $Res call({ThemeMode themeMode, String baseUrl, String newsApiKey});
}

/// @nodoc
class _$AppConfigModelCopyWithImpl<$Res>
    implements $AppConfigModelCopyWith<$Res> {
  _$AppConfigModelCopyWithImpl(this._value, this._then);

  final AppConfigModel _value;
  // ignore: unused_field
  final $Res Function(AppConfigModel) _then;

  @override
  $Res call({
    Object? themeMode = freezed,
    Object? baseUrl = freezed,
    Object? newsApiKey = freezed,
  }) {
    return _then(_value.copyWith(
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      baseUrl: baseUrl == freezed
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      newsApiKey: newsApiKey == freezed
          ? _value.newsApiKey
          : newsApiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AppConfigModelCopyWith<$Res>
    implements $AppConfigModelCopyWith<$Res> {
  factory _$AppConfigModelCopyWith(
          _AppConfigModel value, $Res Function(_AppConfigModel) then) =
      __$AppConfigModelCopyWithImpl<$Res>;
  @override
  $Res call({ThemeMode themeMode, String baseUrl, String newsApiKey});
}

/// @nodoc
class __$AppConfigModelCopyWithImpl<$Res>
    extends _$AppConfigModelCopyWithImpl<$Res>
    implements _$AppConfigModelCopyWith<$Res> {
  __$AppConfigModelCopyWithImpl(
      _AppConfigModel _value, $Res Function(_AppConfigModel) _then)
      : super(_value, (v) => _then(v as _AppConfigModel));

  @override
  _AppConfigModel get _value => super._value as _AppConfigModel;

  @override
  $Res call({
    Object? themeMode = freezed,
    Object? baseUrl = freezed,
    Object? newsApiKey = freezed,
  }) {
    return _then(_AppConfigModel(
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      baseUrl: baseUrl == freezed
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      newsApiKey: newsApiKey == freezed
          ? _value.newsApiKey
          : newsApiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AppConfigModel extends _AppConfigModel {
  const _$_AppConfigModel(
      {required this.themeMode,
      required this.baseUrl,
      required this.newsApiKey})
      : super._();

  @override
  final ThemeMode themeMode;
  @override
  final String baseUrl;
  @override
  final String newsApiKey;

  @override
  String toString() {
    return 'AppConfigModel(themeMode: $themeMode, baseUrl: $baseUrl, newsApiKey: $newsApiKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppConfigModel &&
            const DeepCollectionEquality().equals(other.themeMode, themeMode) &&
            const DeepCollectionEquality().equals(other.baseUrl, baseUrl) &&
            const DeepCollectionEquality()
                .equals(other.newsApiKey, newsApiKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(themeMode),
      const DeepCollectionEquality().hash(baseUrl),
      const DeepCollectionEquality().hash(newsApiKey));

  @JsonKey(ignore: true)
  @override
  _$AppConfigModelCopyWith<_AppConfigModel> get copyWith =>
      __$AppConfigModelCopyWithImpl<_AppConfigModel>(this, _$identity);
}

abstract class _AppConfigModel extends AppConfigModel {
  const factory _AppConfigModel(
      {required ThemeMode themeMode,
      required String baseUrl,
      required String newsApiKey}) = _$_AppConfigModel;
  const _AppConfigModel._() : super._();

  @override
  ThemeMode get themeMode;
  @override
  String get baseUrl;
  @override
  String get newsApiKey;
  @override
  @JsonKey(ignore: true)
  _$AppConfigModelCopyWith<_AppConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}
