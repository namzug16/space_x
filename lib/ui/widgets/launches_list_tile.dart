import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:space_x/core/models/launch.dart';
import 'package:space_x/ui/widgets/launch_dialog.dart';

class LaunchesListTile extends StatelessWidget {
  final Launch l;

  const LaunchesListTile(this.l, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: 150,
          child: InkWell(
            onTap: () {
              LaunchDialog.show(context, l);
            },
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 130,
                    width: 130,
                    decoration: l.flickrImages.isNotEmpty
                        ? BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(13)),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              // it can be also shown a transition between all the
                              // images found instead of only the first one
                              image: NetworkImage(l.flickrImages[0]),
                            ),
                          )
                        : const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(13)),
                          ),
                    child: l.flickrImages.isNotEmpty
                        ? null
                        : const Center(
                            child: FaIcon(
                              FontAwesomeIcons.rocket,
                              size: 100,
                            ),
                          ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            l.missionName,
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            l.details ?? "No Details available about this launch.",
                            style: const TextStyle(
                                overflow: TextOverflow.ellipsis),
                            maxLines: 5,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10, right: 10, top: 5),
                        child: Row(
                          children: [
                            const Icon(Icons.location_on_rounded),
                            SizedBox(
                              width: 180,
                              child: Text(
                                l.siteNameLong,
                                style: const TextStyle(
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
