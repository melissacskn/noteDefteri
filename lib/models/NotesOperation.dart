import 'package:flutter/cupertino.dart';
import 'package:focus_on_time_3/models/Note.dart';

class NotesOperation extends ChangeNotifier {
  List<Note> _notes = <Note>[];
  List<Note> get getNotes {
    return _notes;
  }

/*
  NotesOperation() {
    addNewNote("First Note", "First Note Description");
  }
*/
  void addNewNote(String title, String description) {
    Note note = Note(title, description);
    _notes.add(note);
    notifyListeners();
  }
}
