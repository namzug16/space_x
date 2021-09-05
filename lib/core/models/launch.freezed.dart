// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'launch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LaunchTearOff {
  const _$LaunchTearOff();

  _Launch call(
      {required String missionName,
      String? details,
      required String siteNameLong,
      required List<dynamic> flickrImages}) {
    return _Launch(
      missionName: missionName,
      details: details,
      siteNameLong: siteNameLong,
      flickrImages: flickrImages,
    );
  }
}

/// @nodoc
const $Launch = _$LaunchTearOff();

/// @nodoc
mixin _$Launch {
  String get missionName => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;
  String get siteNameLong => throw _privateConstructorUsedError;
  List<dynamic> get flickrImages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LaunchCopyWith<Launch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchCopyWith<$Res> {
  factory $LaunchCopyWith(Launch value, $Res Function(Launch) then) =
      _$LaunchCopyWithImpl<$Res>;
  $Res call(
      {String missionName,
      String? details,
      String siteNameLong,
      List<dynamic> flickrImages});
}

/// @nodoc
class _$LaunchCopyWithImpl<$Res> implements $LaunchCopyWith<$Res> {
  _$LaunchCopyWithImpl(this._value, this._then);

  final Launch _value;
  // ignore: unused_field
  final $Res Function(Launch) _then;

  @override
  $Res call({
    Object? missionName = freezed,
    Object? details = freezed,
    Object? siteNameLong = freezed,
    Object? flickrImages = freezed,
  }) {
    return _then(_value.copyWith(
      missionName: missionName == freezed
          ? _value.missionName
          : missionName // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      siteNameLong: siteNameLong == freezed
          ? _value.siteNameLong
          : siteNameLong // ignore: cast_nullable_to_non_nullable
              as String,
      flickrImages: flickrImages == freezed
          ? _value.flickrImages
          : flickrImages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$LaunchCopyWith<$Res> implements $LaunchCopyWith<$Res> {
  factory _$LaunchCopyWith(_Launch value, $Res Function(_Launch) then) =
      __$LaunchCopyWithImpl<$Res>;
  @override
  $Res call(
      {String missionName,
      String? details,
      String siteNameLong,
      List<dynamic> flickrImages});
}

/// @nodoc
class __$LaunchCopyWithImpl<$Res> extends _$LaunchCopyWithImpl<$Res>
    implements _$LaunchCopyWith<$Res> {
  __$LaunchCopyWithImpl(_Launch _value, $Res Function(_Launch) _then)
      : super(_value, (v) => _then(v as _Launch));

  @override
  _Launch get _value => super._value as _Launch;

  @override
  $Res call({
    Object? missionName = freezed,
    Object? details = freezed,
    Object? siteNameLong = freezed,
    Object? flickrImages = freezed,
  }) {
    return _then(_Launch(
      missionName: missionName == freezed
          ? _value.missionName
          : missionName // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      siteNameLong: siteNameLong == freezed
          ? _value.siteNameLong
          : siteNameLong // ignore: cast_nullable_to_non_nullable
              as String,
      flickrImages: flickrImages == freezed
          ? _value.flickrImages
          : flickrImages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_Launch with DiagnosticableTreeMixin implements _Launch {
  _$_Launch(
      {required this.missionName,
      this.details,
      required this.siteNameLong,
      required this.flickrImages});

  @override
  final String missionName;
  @override
  final String? details;
  @override
  final String siteNameLong;
  @override
  final List<dynamic> flickrImages;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Launch(missionName: $missionName, details: $details, siteNameLong: $siteNameLong, flickrImages: $flickrImages)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Launch'))
      ..add(DiagnosticsProperty('missionName', missionName))
      ..add(DiagnosticsProperty('details', details))
      ..add(DiagnosticsProperty('siteNameLong', siteNameLong))
      ..add(DiagnosticsProperty('flickrImages', flickrImages));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Launch &&
            (identical(other.missionName, missionName) ||
                const DeepCollectionEquality()
                    .equals(other.missionName, missionName)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality()
                    .equals(other.details, details)) &&
            (identical(other.siteNameLong, siteNameLong) ||
                const DeepCollectionEquality()
                    .equals(other.siteNameLong, siteNameLong)) &&
            (identical(other.flickrImages, flickrImages) ||
                const DeepCollectionEquality()
                    .equals(other.flickrImages, flickrImages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(missionName) ^
      const DeepCollectionEquality().hash(details) ^
      const DeepCollectionEquality().hash(siteNameLong) ^
      const DeepCollectionEquality().hash(flickrImages);

  @JsonKey(ignore: true)
  @override
  _$LaunchCopyWith<_Launch> get copyWith =>
      __$LaunchCopyWithImpl<_Launch>(this, _$identity);
}

abstract class _Launch implements Launch {
  factory _Launch(
      {required String missionName,
      String? details,
      required String siteNameLong,
      required List<dynamic> flickrImages}) = _$_Launch;

  @override
  String get missionName => throw _privateConstructorUsedError;
  @override
  String? get details => throw _privateConstructorUsedError;
  @override
  String get siteNameLong => throw _privateConstructorUsedError;
  @override
  List<dynamic> get flickrImages => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LaunchCopyWith<_Launch> get copyWith => throw _privateConstructorUsedError;
}
