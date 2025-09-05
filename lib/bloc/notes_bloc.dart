import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/db/notes_database.dart';
import 'notes_event.dart';
import 'notes_state.dart';

class NotesBloc extends Bloc<NotesEvent, NotesState> {
  final db = NotesDatabase.instance;

  NotesBloc() : super(NotesInitial()) {
    on<LoadNotesEvent>((event, emit) async {
      emit(NotesLoading());
      try {
        final notes = await db.fetchNotes();
        emit(NotesLoaded(notes));
      } catch (e) {
        emit(NotesError(e.toString()));
      }
    });

    on<AddNoteEvent>((event, emit) async {
      await db.insertNote(event.note);
      add(LoadNotesEvent());
    });

    on<UpdateNoteEvent>((event, emit) async {
      await db.updateNote(event.note);
      add(LoadNotesEvent());
    });

    on<DeleteNoteEvent>((event, emit) async {
      await db.deleteNote(event.id);
      add(LoadNotesEvent());
    });
    
    on<ToggleNoteEvent>((event, emit) async {
      final updated = event.note.copyWith(isDone: !event.note.isDone);
      await db.updateNote(updated);
      add(LoadNotesEvent());
    });
  }
}
