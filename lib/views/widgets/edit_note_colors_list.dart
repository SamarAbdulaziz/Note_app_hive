import 'package:flutter/material.dart';
import 'package:notes_app_tharwat_samy/models/note_model.dart';
import 'package:notes_app_tharwat_samy/views/widgets/color_item.dart';

import '../../constant.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.note});

 final NotesModel note;

  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex=kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kColors.length,
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: GestureDetector(
                    onTap: () {
                      currentIndex = index;
                      widget.note.color=kColors[index]!.value;
                      setState(() {});
                    },
                    child: ColorItem(
                      isSelected: currentIndex == index,
                      color: kColors[index],
                    )),
              )),
    );
  }
}
