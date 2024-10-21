import 'package:flutter/material.dart';
import 'package:notes/constent/constents.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/widgets/color_item.dart';

class EditColorNoteList extends StatefulWidget {
  const EditColorNoteList({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditColorNoteList> createState() => _EditColorNoteListState();
}

class _EditColorNoteListState extends State<EditColorNoteList> {
  late int currentIndex;
  void initState() {
    currentIndex = kColorList.indexOf(Color(widget.note.color));
    super.initState();
  }

  List<Color> colors = kColorList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: kColorList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = kColorList[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  color: kColorList[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
