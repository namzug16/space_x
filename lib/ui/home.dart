import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:space_x/core/controllers/space_x_launches_list_controller.dart';
import 'package:space_x/ui/widgets/launches_list_data.dart';

class Home extends HookWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // * with this provider I can access all the methods inside the StateNotifier
    // * but not the state
    final launchesListController =
        useProvider(spaceXLaunchesListControllerProvider.notifier);
    // * however with this provider I can only access the state and it'll
    // * rebuild the ui when it changes
    final launchesList = useProvider(spaceXLaunchesListControllerProvider);

    final tcMissionName = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('SpaceX Launches'),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: tcMissionName,
              onChanged: (text) {
                launchesListController.handleInput(text);
              },
              maxLines: 1,
              decoration: InputDecoration(
                hintText: "Mission Name",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13),
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13),
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 4,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: launchesList.when(
              (data) => LaunchesListData(data, tcMissionName.text),
              idle: () => const Center(
                child: Text('search some launches!!'),
              ),
              empty: () => const Center(
                child: Text('There are no missions with that name'),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (e) => Center(
                child: Text(e!),
              ),
            )!,
          ),
        ],
      ),
    );
  }
}
