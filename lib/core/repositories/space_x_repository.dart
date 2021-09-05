import 'package:gql/language.dart';
import 'package:graphql/client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:space_x/core/client_provider.dart';

abstract class ISpaceXRepository {
  Future<QueryResult> getLaunchesByMissionName(
      {required String missionName, required int offset});
}

final spaceXRepositoryProvider = Provider<ISpaceXRepository>(
    (ref) => SpaceXRepository(client: ref.watch(graphQLClientProvider)));

class SpaceXRepository implements ISpaceXRepository {
  final GraphQLClient client;
  // * Here I inject the instance of The GraphQLClient
  SpaceXRepository({required this.client});

  @override
  Future<QueryResult> getLaunchesByMissionName(
      {required String missionName, required int offset}) async {
    final WatchQueryOptions _options = WatchQueryOptions(
        document: parseString(getLaunchesByMissionNameQuery),
        variables: <String, dynamic>{
          'mission_name': missionName,
          'offset': offset
        },
        // pollInterval: const Duration(seconds: 4),
        fetchResults: true);

    return await client.query(_options);
  }
}

const String getLaunchesByMissionNameQuery = r'''
    query GetLaunches($mission_name: String!, $offset: Int!){
      launches(limit: 10, offset: $offset,find: {mission_name: $mission_name}){
        mission_name
        details
        launch_site{
          site_name_long
        }
        links{
          flickr_images
        }
      }
    }
    ''';
