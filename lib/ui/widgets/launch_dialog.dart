import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:space_x/core/models/launch.dart';

class LaunchDialog extends StatelessWidget {
  final Launch l;
  const LaunchDialog(this.l, {Key? key}) : super(key: key);

  static void show(BuildContext context, Launch l){
    showDialog(context: context, builder: (_) => LaunchDialog(l));
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 8,
      title: Center(child: Text(l.missionName, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      contentPadding: const EdgeInsets.all(10),
      titlePadding: const EdgeInsets.all(10),
      insetPadding: const EdgeInsets.all(15),
      content: Scrollbar(
        isAlwaysShown: true,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 300,
                width: 300,
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
                    size: 200,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(l.details ?? "No Details available about this launch."),
              ),
              Row(children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.location_on_rounded),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: 180,
                    child: Text(
                      l.siteNameLong,
                    ),
                  ),
                ),
              ],),
            ],
          ),
        ),
      ),
      actions: [
        Center(
          child: TextButton(
            child: const Text('Close'),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
        ),
      ],
    );
  }
}
