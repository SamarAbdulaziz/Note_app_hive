import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.yellow[300],
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter Tips Flutter ',
              style: TextStyle(
                  fontSize: 26.0,
                  color: Colors.black,
                  overflow: TextOverflow.ellipsis),
              maxLines: 1,
            ),
            subtitle: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Build an exciting app with flutter',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Text(
              'june25,2023',
              style: TextStyle(color: Colors.black45),
            ),
          ),
        ],
      ),
    );

    // Container(
    //   height: 180.0,
    //   padding: EdgeInsets.all(16.0),
    //   margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
    //   decoration: BoxDecoration(
    //     color: Colors.yellow[300],
    //     borderRadius: BorderRadius.circular(16.0),
    //   ),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Row(
    //         children: [
    //           const Text(
    //             'Flutter Tips ',
    //             style: TextStyle(
    //                 fontSize: 24.0,
    //                 fontWeight: FontWeight.bold,
    //                 color: Colors.black),
    //           ),
    //           const Spacer(),
    //           IconButton(
    //               onPressed: () {},
    //               icon: const Icon(Icons.delete, color: Colors.black)),
    //         ],
    //       ),
    //       const Text(
    //         'Build an exciting app with flutter',
    //         style: TextStyle(
    //           color: Colors.black45,
    //         ),
    //       ),
    //       Spacer(),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.end,
    //         children: [
    //           Text(
    //             'May 21, 2021',
    //             style: TextStyle(
    //               color: Colors.black45,
    //             ),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ));
  }
}
