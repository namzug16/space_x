import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:space_x/core/models/launch.dart';

part 'launch_list_states.freezed.dart';


// * unions (or sealed classes) can be done thanks to freezed in this simple way
// * this is beneficial because later on I can use "when" on an instance and
// * show certain ui depending on the state, which in this case would be
// * a subclass of LaunchListStates
@freezed
class LaunchListStates with _$LaunchListStates {
  const factory LaunchListStates(List<Launch> data) = Data;
  const factory LaunchListStates.idle() = Idle;
  const factory LaunchListStates.empty() = Empty;
  const factory LaunchListStates.loading() = Loading;
  const factory LaunchListStates.error([String? message]) = Error;
}