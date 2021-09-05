// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'launch_list_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LaunchListStatesTearOff {
  const _$LaunchListStatesTearOff();

  Data call(List<Launch> data) {
    return Data(
      data,
    );
  }

  Idle idle() {
    return const Idle();
  }

  Empty empty() {
    return const Empty();
  }

  Loading loading() {
    return const Loading();
  }

  Error error([String? message]) {
    return Error(
      message,
    );
  }
}

/// @nodoc
const $LaunchListStates = _$LaunchListStatesTearOff();

/// @nodoc
mixin _$LaunchListStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Launch> data) $default, {
    required TResult Function() idle,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Launch> data)? $default, {
    TResult Function()? idle,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Launch> data)? $default, {
    TResult Function()? idle,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data value) $default, {
    required TResult Function(Idle value) idle,
    required TResult Function(Empty value) empty,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Idle value)? idle,
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Idle value)? idle,
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchListStatesCopyWith<$Res> {
  factory $LaunchListStatesCopyWith(
          LaunchListStates value, $Res Function(LaunchListStates) then) =
      _$LaunchListStatesCopyWithImpl<$Res>;
}

/// @nodoc
class _$LaunchListStatesCopyWithImpl<$Res>
    implements $LaunchListStatesCopyWith<$Res> {
  _$LaunchListStatesCopyWithImpl(this._value, this._then);

  final LaunchListStates _value;
  // ignore: unused_field
  final $Res Function(LaunchListStates) _then;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({List<Launch> data});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$LaunchListStatesCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(Data(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Launch>,
    ));
  }
}

/// @nodoc

class _$Data with DiagnosticableTreeMixin implements Data {
  const _$Data(this.data);

  @override
  final List<Launch> data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LaunchListStates(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LaunchListStates'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Launch> data) $default, {
    required TResult Function() idle,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return $default(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Launch> data)? $default, {
    TResult Function()? idle,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String? message)? error,
  }) {
    return $default?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Launch> data)? $default, {
    TResult Function()? idle,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data value) $default, {
    required TResult Function(Idle value) idle,
    required TResult Function(Empty value) empty,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Idle value)? idle,
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Idle value)? idle,
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Data implements LaunchListStates {
  const factory Data(List<Launch> data) = _$Data;

  List<Launch> get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdleCopyWith<$Res> {
  factory $IdleCopyWith(Idle value, $Res Function(Idle) then) =
      _$IdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$IdleCopyWithImpl<$Res> extends _$LaunchListStatesCopyWithImpl<$Res>
    implements $IdleCopyWith<$Res> {
  _$IdleCopyWithImpl(Idle _value, $Res Function(Idle) _then)
      : super(_value, (v) => _then(v as Idle));

  @override
  Idle get _value => super._value as Idle;
}

/// @nodoc

class _$Idle with DiagnosticableTreeMixin implements Idle {
  const _$Idle();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LaunchListStates.idle()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LaunchListStates.idle'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Launch> data) $default, {
    required TResult Function() idle,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Launch> data)? $default, {
    TResult Function()? idle,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String? message)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Launch> data)? $default, {
    TResult Function()? idle,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data value) $default, {
    required TResult Function(Idle value) idle,
    required TResult Function(Empty value) empty,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Idle value)? idle,
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Idle value)? idle,
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle implements LaunchListStates {
  const factory Idle() = _$Idle;
}

/// @nodoc
abstract class $EmptyCopyWith<$Res> {
  factory $EmptyCopyWith(Empty value, $Res Function(Empty) then) =
      _$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyCopyWithImpl<$Res> extends _$LaunchListStatesCopyWithImpl<$Res>
    implements $EmptyCopyWith<$Res> {
  _$EmptyCopyWithImpl(Empty _value, $Res Function(Empty) _then)
      : super(_value, (v) => _then(v as Empty));

  @override
  Empty get _value => super._value as Empty;
}

/// @nodoc

class _$Empty with DiagnosticableTreeMixin implements Empty {
  const _$Empty();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LaunchListStates.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LaunchListStates.empty'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Launch> data) $default, {
    required TResult Function() idle,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Launch> data)? $default, {
    TResult Function()? idle,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String? message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Launch> data)? $default, {
    TResult Function()? idle,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data value) $default, {
    required TResult Function(Idle value) idle,
    required TResult Function(Empty value) empty,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Idle value)? idle,
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Idle value)? idle,
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty implements LaunchListStates {
  const factory Empty() = _$Empty;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$LaunchListStatesCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading with DiagnosticableTreeMixin implements Loading {
  const _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LaunchListStates.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LaunchListStates.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Launch> data) $default, {
    required TResult Function() idle,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Launch> data)? $default, {
    TResult Function()? idle,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Launch> data)? $default, {
    TResult Function()? idle,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data value) $default, {
    required TResult Function(Idle value) idle,
    required TResult Function(Empty value) empty,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Idle value)? idle,
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Idle value)? idle,
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements LaunchListStates {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$LaunchListStatesCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(Error(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$Error with DiagnosticableTreeMixin implements Error {
  const _$Error([this.message]);

  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LaunchListStates.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LaunchListStates.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Launch> data) $default, {
    required TResult Function() idle,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Launch> data)? $default, {
    TResult Function()? idle,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Launch> data)? $default, {
    TResult Function()? idle,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data value) $default, {
    required TResult Function(Idle value) idle,
    required TResult Function(Empty value) empty,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Idle value)? idle,
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Idle value)? idle,
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements LaunchListStates {
  const factory Error([String? message]) = _$Error;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}
