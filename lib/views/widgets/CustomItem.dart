import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app_tharwat_samy/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app_tharwat_samy/models/note_model.dart';
import 'package:notes_app_tharwat_samy/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({
    super.key,
    required this.note,
  });

  final NotesModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.routeName);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: Color(note.color), //Colors.yellow[300],
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: const TextStyle(
                    fontSize: 22.0,
                    color: Colors.black,
                    overflow: TextOverflow.ellipsis),
                maxLines: 1,
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Text(
                  note.subtitle,
                  style: const TextStyle(
                    color: Colors.black45,
                    fontSize: 16.0,
                  ),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 22,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Text(
                note.date,
                style: const TextStyle(color: Colors.black45),
              ),
            ),
          ],
        ),
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
