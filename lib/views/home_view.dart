import 'package:depi_project/bloc/notes_bloc.dart';
import 'package:depi_project/bloc/notes_state.dart';
import 'package:depi_project/views/add_note_view.dart';
import 'package:depi_project/views/widgets/note_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notes")),
      body: BlocBuilder<NotesBloc, NotesState>(
        builder: (context, state) {
          if (state is NotesLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is NotesLoaded) {
            if (state.notes.isEmpty) {
              return const Center(child: Text("No notes yet"));
            }
            return ListView.builder(
              itemCount: state.notes.length,
              itemBuilder: (context, index) {
                return NoteItem(note: state.notes[index]);
              },
            );
          } else {
            return const Center(child: Text("Something went wrong"));
          }
        },
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const AddNoteView()),
          );
        },
      ),
    );
  }
}
