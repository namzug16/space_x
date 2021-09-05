import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:space_x/core/models/launch.dart';
import 'package:space_x/core/repositories/space_x_repository.dart';
import 'package:space_x/core/states/launch_list_states.dart';

final spaceXLaunchesListControllerProvider = StateNotifierProvider<
    SpaceXLaunchesListController,
    LaunchListStates>((ref) => SpaceXLaunchesListController(ref.read));

final errorLaunchesListController = StateProvider<String?>((_) => null);


// * this controller is basically a ViewModel implemented with riverpod and
// * stateNotifier.
class SpaceXLaunchesListController
    extends StateNotifier<LaunchListStates> {
  final Reader _read;

  SpaceXLaunchesListController(this._read) : super(const Idle());

  void handleInput(String text) async {
    // I set the _offet back to null so the pagination is limited to 10
    // everytime the user changes the input
    _offset = null;

    // search starts when text is 3 characters long
    if(text.length < 3){
      state = const Idle();
    }else{
      getLaunchesByMissionName(text, 0);
    }
  }

  Future<void> getLaunchesByMissionName(String missionName, int offset) async {
    try {
      state = const Loading();

      final queryResults = await _read(spaceXRepositoryProvider)
          .getLaunchesByMissionName(missionName: missionName, offset: offset);

      if(queryResults.data == null){
        state = const Empty();
        return ;
      }

      final launchesJson =
          queryResults.data!['launches'];


      final List<Launch> launches = launchesJson.map((launch) => Launch(
          missionName: launch['mission_name'],
          details: launch['details'],
          siteNameLong: launch['launch_site']['site_name_long'],
          flickrImages: launch['links']['flickr_images'])).toList().cast<Launch>();

      if(launches.isEmpty){
        state = const Empty();
        return ;
      }

      state = Data(launches);
    } catch (e) {
      print(e);
      state = const Error('Something has gone wrong, please try again.');
    }
  }

  // * this is a bit of a hack
  // * I will control the offset(pagination) from the controller and not the view
  int? _offset;

  // * this bool can be used to tell the user that there are no more results
  // * apart from the ones shown
  Future<bool> fetchMoreLaunches(String text) async{
    try{

      // * the first time the method is called _offset will be set to be 10, the consequently
      // * times it'll be it's value + 10.
      if(_offset != null) _offset = _offset! + 10;
      _offset ??= 10;

      final queryResults = await _read(spaceXRepositoryProvider)
          .getLaunchesByMissionName(missionName: text, offset: _offset!);

      final launchesJson =
      queryResults.data!['launches'];


      final List<Launch> launches = launchesJson.map((launch) => Launch(
          missionName: launch['mission_name'],
          details: launch['details'],
          siteNameLong: launch['launch_site']['site_name_long'],
          flickrImages: launch['links']['flickr_images'])).toList().cast<Launch>();

      if(launches.isEmpty){
        // meaning there are no more results to show
        return false;
      }

      // * I aggregate the new results to the previous results
      state.whenOrNull((data){
        state = Data([
          ...data, ...launches
        ]);
      });

      return true;
    }catch (e){
      print(e);
      return false;
    }
  }

}
