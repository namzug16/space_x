import 'package:graphql/client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// * thanks to riverpod I can create a provider of GraphQlClient that will be
// * available to use on the entire app and other providers by dependency injection
final graphQLClientProvider = Provider<GraphQLClient>((_) => GraphQLClient(
  link: HttpLink('https://api.spacex.land/graphql'), cache: GraphQLCache(),
));