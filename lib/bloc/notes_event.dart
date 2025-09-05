import '../../data/models/note_model.dart';

abstract class NotesEvent {}

class LoadNotesEvent extends NotesEvent {}

class AddNoteEvent extends NotesEvent {
  final Note note;
  AddNoteEvent(this.note);
}

class UpdateNoteEvent extends NotesEvent {
  final Note note;
  UpdateNoteEvent(this.note);
}

class DeleteNoteEvent extends NotesEvent {
  final int id;
  DeleteNoteEvent(this.id);
}
class ToggleNoteEvent extends NotesEvent {
  final Note note;
  ToggleNoteEvent(this.note);
}
