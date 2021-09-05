import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:space_x/core/controllers/space_x_launches_list_controller.dart';
import 'package:space_x/core/models/launch.dart';
import 'package:space_x/core/repositories/space_x_repository.dart';
import 'package:space_x/core/states/launch_list_states.dart';

class MockSpaceXRepository extends Mock implements ISpaceXRepository {}

const data = """
{
  "data": {
    "launches": [
      {
        "mission_name": "mission one",
        "details": "Second GTO launch for Falcon 9. The USAF evaluated launch d",
        "launch_site": {
          "site_name_long": "Cape Canaveral Air Force Station Space Launch Complex 40"
        },
        "links": {
          "flickr_images": [
            "https://farm9.staticflickr.com/8617/16789019815_f99a165dc5_o.jpg"
          ]
        }
      }
    ]
  }
}
""";

Map<String, dynamic> decodeResponse = jsonDecode(data) as Map<String, dynamic>;

final List<dynamic> mockedLaunchesJson =
    decodeResponse['data']['launches'] as List<dynamic>;

final List<Launch> mockedLaunches = mockedLaunchesJson
    .map((launch) => Launch(
        missionName: launch['mission_name'],
        details: launch['details'],
        siteNameLong: launch['launch_site']['site_name_long'],
        flickrImages: launch['links']['flickr_images']))
    .toList()
    .cast<Launch>();

void main() {
  group('SpaceX Launches List Controller Riverpod', () {
    final container = ProviderContainer(overrides: [
      spaceXRepositoryProvider
          .overrideWithProvider(Provider((ref) => MockSpaceXRepository())),
    ]);

    test('initial state is loading', () {
      expect(container.read(spaceXLaunchesListControllerProvider),
          const LaunchListStates.idle());
    });

    test('fetch launches by name', () async {
      final results = QueryResult(
          data: decodeResponse['data'],
          source: QueryResultSource.network,
          exception: null);

      when(
        () => container
            .read(spaceXRepositoryProvider)
            .getLaunchesByMissionName(missionName: 'mission', offset: 0),
      ).thenAnswer((_) async => Future.value(results));

      expect(container.read(spaceXLaunchesListControllerProvider),
          const LaunchListStates.idle());

      await container
          .read(spaceXLaunchesListControllerProvider.notifier)
          .getLaunchesByMissionName('mission', 0);

      expect(container.read(spaceXLaunchesListControllerProvider), LaunchListStates(mockedLaunches));
    });
  });
}
