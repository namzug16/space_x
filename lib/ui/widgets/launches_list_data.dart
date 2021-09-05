import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:space_x/core/controllers/space_x_launches_list_controller.dart';
import 'package:space_x/core/models/launch.dart';
import 'package:space_x/ui/widgets/launches_list_tile.dart';

class LaunchesListData extends HookWidget {
  final List<Launch> list;
  final String text;
  const LaunchesListData(this.list, this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final launchesListController = useProvider(spaceXLaunchesListControllerProvider.notifier);

    return ListView(
      children: [
        ListView.builder(
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          itemCount: list.length,
          itemBuilder: (_, i) => LaunchesListTile(list[i]),
        ),
        list.length % 10 == 0
            ? TextButton(
                child: const Text('Load More'),
                onPressed: () {
                  print(text);
                  launchesListController.fetchMoreLaunches(text);
                },
              )
            : const SizedBox(),
      ],
    );
  }
}

