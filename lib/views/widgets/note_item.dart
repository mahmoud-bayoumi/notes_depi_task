import 'package:depi_project/bloc/notes_bloc.dart';
import 'package:depi_project/bloc/notes_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/note_model.dart';

class NoteItem extends StatelessWidget {
  final Note note;
  const NoteItem({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: ListTile(
        leading: Checkbox(
          value: note.isDone,
          onChanged: (_) {
            context.read<NotesBloc>().add(ToggleNoteEvent(note));
          },
        ),
        title: Text(
          note.title,
          style: TextStyle(
            decoration: note.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        subtitle: Text(
          note.content,
          style: TextStyle(
            decoration: note.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete, color: Colors.deepPurple),
          onPressed: () {
            context.read<NotesBloc>().add(DeleteNoteEvent(note.id!));
          },
        ),
      ),
    );
  }
}
