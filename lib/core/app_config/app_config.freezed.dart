// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppConfigStateTearOff {
  const _$AppConfigStateTearOff();

  LoadingState loading() {
    return const LoadingState();
  }

  IdleState idle(AppConfigModel appConfigModel) {
    return IdleState(
      appConfigModel,
    );
  }

  ErrorState failed(String errorMessage) {
    return ErrorState(
      errorMessage,
    );
  }
}

/// @nodoc
const $AppConfigState = _$AppConfigStateTearOff();

/// @nodoc
mixin _$AppConfigState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppConfigModel appConfigModel) idle,
    required TResult Function(String errorMessage) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppConfigModel appConfigModel)? idle,
    TResult Function(String errorMessage)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppConfigModel appConfigModel)? idle,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(IdleState value) idle,
    required TResult Function(ErrorState value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(IdleState value)? idle,
    TResult Function(ErrorState value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(IdleState value)? idle,
    TResult Function(ErrorState value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigStateCopyWith<$Res> {
  factory $AppConfigStateCopyWith(
          AppConfigState value, $Res Function(AppConfigState) then) =
      _$AppConfigStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppConfigStateCopyWithImpl<$Res>
    implements $AppConfigStateCopyWith<$Res> {
  _$AppConfigStateCopyWithImpl(this._value, this._then);

  final AppConfigState _value;
  // ignore: unused_field
  final $Res Function(AppConfigState) _then;
}

/// @nodoc
abstract class $LoadingStateCopyWith<$Res> {
  factory $LoadingStateCopyWith(
          LoadingState value, $Res Function(LoadingState) then) =
      _$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingStateCopyWithImpl<$Res>
    extends _$AppConfigStateCopyWithImpl<$Res>
    implements $LoadingStateCopyWith<$Res> {
  _$LoadingStateCopyWithImpl(
      LoadingState _value, $Res Function(LoadingState) _then)
      : super(_value, (v) => _then(v as LoadingState));

  @override
  LoadingState get _value => super._value as LoadingState;
}

/// @nodoc

class _$LoadingState implements LoadingState {
  const _$LoadingState();

  @override
  String toString() {
    return 'AppConfigState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppConfigModel appConfigModel) idle,
    required TResult Function(String errorMessage) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppConfigModel appConfigModel)? idle,
    TResult Function(String errorMessage)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppConfigModel appConfigModel)? idle,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(IdleState value) idle,
    required TResult Function(ErrorState value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(IdleState value)? idle,
    TResult Function(ErrorState value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(IdleState value)? idle,
    TResult Function(ErrorState value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements AppConfigState {
  const factory LoadingState() = _$LoadingState;
}

/// @nodoc
abstract class $IdleStateCopyWith<$Res> {
  factory $IdleStateCopyWith(IdleState value, $Res Function(IdleState) then) =
      _$IdleStateCopyWithImpl<$Res>;
  $Res call({AppConfigModel appConfigModel});

  $AppConfigModelCopyWith<$Res> get appConfigModel;
}

/// @nodoc
class _$IdleStateCopyWithImpl<$Res> extends _$AppConfigStateCopyWithImpl<$Res>
    implements $IdleStateCopyWith<$Res> {
  _$IdleStateCopyWithImpl(IdleState _value, $Res Function(IdleState) _then)
      : super(_value, (v) => _then(v as IdleState));

  @override
  IdleState get _value => super._value as IdleState;

  @override
  $Res call({
    Object? appConfigModel = freezed,
  }) {
    return _then(IdleState(
      appConfigModel == freezed
          ? _value.appConfigModel
          : appConfigModel // ignore: cast_nullable_to_non_nullable
              as AppConfigModel,
    ));
  }

  @override
  $AppConfigModelCopyWith<$Res> get appConfigModel {
    return $AppConfigModelCopyWith<$Res>(_value.appConfigModel, (value) {
      return _then(_value.copyWith(appConfigModel: value));
    });
  }
}

/// @nodoc

class _$IdleState implements IdleState {
  const _$IdleState(this.appConfigModel);

  @override
  final AppConfigModel appConfigModel;

  @override
  String toString() {
    return 'AppConfigState.idle(appConfigModel: $appConfigModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IdleState &&
            const DeepCollectionEquality()
                .equals(other.appConfigModel, appConfigModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(appConfigModel));

  @JsonKey(ignore: true)
  @override
  $IdleStateCopyWith<IdleState> get copyWith =>
      _$IdleStateCopyWithImpl<IdleState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppConfigModel appConfigModel) idle,
    required TResult Function(String errorMessage) failed,
  }) {
    return idle(appConfigModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppConfigModel appConfigModel)? idle,
    TResult Function(String errorMessage)? failed,
  }) {
    return idle?.call(appConfigModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppConfigModel appConfigModel)? idle,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(appConfigModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(IdleState value) idle,
    required TResult Function(ErrorState value) failed,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(IdleState value)? idle,
    TResult Function(ErrorState value)? failed,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(IdleState value)? idle,
    TResult Function(ErrorState value)? failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleState implements AppConfigState {
  const factory IdleState(AppConfigModel appConfigModel) = _$IdleState;

  AppConfigModel get appConfigModel;
  @JsonKey(ignore: true)
  $IdleStateCopyWith<IdleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorStateCopyWith<$Res> {
  factory $ErrorStateCopyWith(
          ErrorState value, $Res Function(ErrorState) then) =
      _$ErrorStateCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class _$ErrorStateCopyWithImpl<$Res> extends _$AppConfigStateCopyWithImpl<$Res>
    implements $ErrorStateCopyWith<$Res> {
  _$ErrorStateCopyWithImpl(ErrorState _value, $Res Function(ErrorState) _then)
      : super(_value, (v) => _then(v as ErrorState));

  @override
  ErrorState get _value => super._value as ErrorState;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(ErrorState(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorState implements ErrorState {
  const _$ErrorState(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppConfigState.failed(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorState &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  $ErrorStateCopyWith<ErrorState> get copyWith =>
      _$ErrorStateCopyWithImpl<ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppConfigModel appConfigModel) idle,
    required TResult Function(String errorMessage) failed,
  }) {
    return failed(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppConfigModel appConfigModel)? idle,
    TResult Function(String errorMessage)? failed,
  }) {
    return failed?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppConfigModel appConfigModel)? idle,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(IdleState value) idle,
    required TResult Function(ErrorState value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(IdleState value)? idle,
    TResult Function(ErrorState value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(IdleState value)? idle,
    TResult Function(ErrorState value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements AppConfigState {
  const factory ErrorState(String errorMessage) = _$ErrorState;

  String get errorMessage;
  @JsonKey(ignore: true)
  $ErrorStateCopyWith<ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
