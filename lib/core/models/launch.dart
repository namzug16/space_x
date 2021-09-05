import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'launch.freezed.dart';

@freezed
class Launch with _$Launch {
  factory Launch({
    required String missionName,
    String? details,
    required String siteNameLong,
    required List<dynamic> flickrImages,
  }) = _Launch;
}
